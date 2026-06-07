"""
Alert Engine - Orchestrates alert creation with deduplication
"""

from datetime import datetime
from typing import List, Dict, Any
from sqlalchemy.orm import Session
from sqlalchemy import and_
import logging

from models.schemas import Transaction, Match, Alert, AlertTransaction, Client
from utils.aml_rules import (
    evaluate_large_value_transactions,
    evaluate_high_risk_client_transactions,
    evaluate_smurfing_detection,
    evaluate_pass_through_activity,
    evaluate_unusual_transaction_patterns,
)

logger = logging.getLogger(__name__)


def get_all_transactions(db: Session) -> List[Transaction]:
    """
    Fetch ALL transactions for alert evaluation.

    The new workflow evaluates all transactions, then auto-clears alerts
    that have sufficient supporting documentation.
    """
    return db.query(Transaction).all()


def get_unmatched_transactions(db: Session, confidence_threshold: float = 0.81) -> List[Transaction]:
    """
    DEPRECATED: Old workflow that only evaluated unmatched transactions.

    Fetch all transactions that have zero HIGH-CONFIDENCE matches.
    A transaction is considered "matched" only if it has at least one match
    with confidence_score >= threshold (default 0.81).
    """
    # Subquery: transaction_ids that have at least one high-confidence match
    matched_tx_ids = (
        db.query(Match.transaction_id)
        .filter(Match.confidence_score >= confidence_threshold)
        .distinct()
        .subquery()
    )
    unmatched = (
        db.query(Transaction)
        .filter(~Transaction.transaction_id.in_(matched_tx_ids))
        .all()
    )
    return unmatched


def get_clients_by_id(db: Session) -> Dict[str, Client]:
    """Fetch all clients and return as dictionary keyed by client_id."""
    clients = db.query(Client).all()
    return {c.client_id: c for c in clients}


def run_all_rules(db: Session) -> List[Dict[str, Any]]:
    """
    Run all 5 AML rules on ALL transactions.

    NEW WORKFLOW: Evaluate all transactions, create alerts for violations,
    then auto-clear alerts with sufficient supporting documentation.
    """
    logger.info("Starting AML rule evaluation (NEW WORKFLOW: evaluating ALL transactions)...")

    all_transactions = get_all_transactions(db)
    logger.info(f"Found {len(all_transactions)} total transactions to evaluate")

    if not all_transactions:
        return []

    clients_by_id = get_clients_by_id(db)
    all_alerts = []

    logger.info("Evaluating Rule 1: Large Value Transactions")
    alerts_1 = evaluate_large_value_transactions(all_transactions)
    logger.info(f"  -> {len(alerts_1)} alerts")
    all_alerts.extend(alerts_1)

    logger.info("Evaluating Rule 2: High-Risk Client Transactions")
    alerts_2 = evaluate_high_risk_client_transactions(all_transactions, clients_by_id)
    logger.info(f"  -> {len(alerts_2)} alerts")
    all_alerts.extend(alerts_2)

    logger.info("Evaluating Rule 3: Smurfing Detection")
    alerts_3 = evaluate_smurfing_detection(all_transactions)
    logger.info(f"  -> {len(alerts_3)} alerts")
    all_alerts.extend(alerts_3)

    logger.info("Evaluating Rule 4: Pass-Through Activity")
    alerts_4 = evaluate_pass_through_activity(all_transactions)
    logger.info(f"  -> {len(alerts_4)} alerts")
    all_alerts.extend(alerts_4)

    logger.info("Evaluating Rule 5: Unusual Transaction Patterns")
    alerts_5 = evaluate_unusual_transaction_patterns(all_transactions)
    logger.info(f"  -> {len(alerts_5)} alerts")
    all_alerts.extend(alerts_5)

    logger.info(f"Total alerts generated: {len(all_alerts)}")
    return all_alerts


def deduplicate_and_create_alerts(db: Session, alert_data_list: List[Dict[str, Any]]) -> Dict[str, Any]:
    """Create alerts with deduplication logic."""
    created_count = 0
    updated_count = 0
    skipped_count = 0

    for alert_data in alert_data_list:
        try:
            with db.begin_nested():
                # For single-transaction alerts (Rules 1 & 2), check if this exact transaction
                # already has an alert. Don't merge - each transaction gets its own alert.
                if alert_data["total_transaction_count"] == 1:
                    # Check if an alert already exists for this specific transaction
                    txn_id = alert_data["transaction_ids"][0]
                    existing_alert = (
                        db.query(Alert)
                        .join(AlertTransaction, Alert.id == AlertTransaction.alert_id)
                        .filter(
                            Alert.rule_name == alert_data["rule_name"],
                            Alert.is_open == True,
                            AlertTransaction.transaction_id == txn_id
                        )
                        .with_for_update()
                        .first()
                    )
                else:
                    # For multi-transaction alerts (Rules 3, 4, 5), use window-based deduplication
                    dedup_query = db.query(Alert).filter(
                        Alert.client_id == alert_data["client_id"],
                        Alert.rule_name == alert_data["rule_name"],
                        Alert.rule_version == alert_data["rule_version"],
                        Alert.is_open == True,
                    ).with_for_update()

                    if alert_data.get("direction"):
                        dedup_query = dedup_query.filter(Alert.direction == alert_data["direction"])

                    # Handle evaluation windows for time-based rules
                    if alert_data["evaluation_window_start"] is not None and alert_data["evaluation_window_end"] is not None:
                        # Time-based rule: check for window overlap
                        dedup_query = dedup_query.filter(
                            and_(
                                Alert.evaluation_window_start.isnot(None),
                                Alert.evaluation_window_end.isnot(None),
                                Alert.evaluation_window_start <= alert_data["evaluation_window_end"],
                                Alert.evaluation_window_end >= alert_data["evaluation_window_start"]
                            )
                        )
                    else:
                        # Non-time-based rule: only match alerts without evaluation windows
                        dedup_query = dedup_query.filter(
                            Alert.evaluation_window_start.is_(None),
                            Alert.evaluation_window_end.is_(None)
                        )

                    existing_alert = dedup_query.first()

                if existing_alert:
                    logger.info(f"Deduplication: Found existing alert {existing_alert.id} for new alert {alert_data['id']}")
                    logger.info(f"  Rule: {alert_data['rule_name']}, Client: {alert_data['client_id']}")
                    logger.info(f"  Existing window: {existing_alert.evaluation_window_start} to {existing_alert.evaluation_window_end}")
                    logger.info(f"  New window: {alert_data['evaluation_window_start']} to {alert_data['evaluation_window_end']}")

                    existing_tx_ids = {at.transaction_id for at in existing_alert.alert_transactions}

                    new_tx_count = 0
                    for tx_id in alert_data["transaction_ids"]:
                        if tx_id not in existing_tx_ids:
                            link = AlertTransaction(
                                alert_id=existing_alert.id,
                                transaction_id=tx_id
                            )
                            db.add(link)
                            new_tx_count += 1

                    existing_alert.total_transaction_count += new_tx_count

                    # Recompute matched_transaction_count when updating
                    if new_tx_count > 0:
                        db.flush()
                        from utils.auto_clear import recompute_matched_count
                        existing_alert.matched_transaction_count = recompute_matched_count(db, existing_alert.id)
                        updated_count += 1
                    else:
                        skipped_count += 1

                else:
                    logger.info(f"Creating new alert {alert_data['id']} for client {alert_data['client_id']}, rule {alert_data['rule_name']}")

                    new_alert = Alert(
                        id=alert_data["id"],
                        client_id=alert_data["client_id"],
                        rule_name=alert_data["rule_name"],
                        rule_version=alert_data["rule_version"],
                        rule_details=alert_data["rule_details"],
                        evaluation_window_start=alert_data["evaluation_window_start"],
                        evaluation_window_end=alert_data["evaluation_window_end"],
                        direction=alert_data["direction"],
                        is_open=alert_data["is_open"],
                        matched_transaction_count=alert_data["matched_transaction_count"],
                        total_transaction_count=alert_data["total_transaction_count"],
                        created_at=datetime.utcnow(),
                        cleared_by_matching=False,
                    )
                    db.add(new_alert)
                    db.flush()

                    for tx_id in alert_data["transaction_ids"]:
                        link = AlertTransaction(
                            alert_id=new_alert.id,
                            transaction_id=tx_id
                        )
                        db.add(link)

                    # Flush to ensure transaction links are in database
                    db.flush()

                    # Recompute matched_transaction_count based on actual high-confidence matches
                    from utils.auto_clear import recompute_matched_count
                    new_alert.matched_transaction_count = recompute_matched_count(db, new_alert.id)

                    created_count += 1

                # Commit each alert immediately to avoid session conflicts
                db.commit()

        except Exception as e:
            logger.error(f"Error processing alert: {e}", exc_info=True)
            db.rollback()
            continue

    logger.info(f"Alert creation complete: {created_count} created, {updated_count} updated, {skipped_count} skipped")

    return {
        "created": created_count,
        "updated": updated_count,
        "skipped": skipped_count,
        "total_processed": len(alert_data_list),
    }


def evaluate_and_create_alerts(db: Session) -> Dict[str, Any]:
    """
    Main entry point: Run all rules, create alerts, then auto-clear well-documented alerts.

    NEW WORKFLOW:
    1. Evaluate ALL transactions against AML rules
    2. Create alerts for all violations (regardless of documentation)
    3. Auto-clear alerts where all transactions have sufficient supporting notes
    """
    from utils.auto_clear import bulk_check_and_clear_alerts

    logger.info("Starting alert evaluation pipeline (NEW WORKFLOW)...")

    alert_data_list = run_all_rules(db)

    if not alert_data_list:
        logger.info("No alerts to create")
        return {
            "created": 0,
            "updated": 0,
            "skipped": 0,
            "total_processed": 0,
        }

    result = deduplicate_and_create_alerts(db, alert_data_list)

    # NEW: Auto-clear alerts with sufficient supporting documentation
    logger.info("Running auto-clear check on newly created alerts...")
    cleared_count = bulk_check_and_clear_alerts(db)
    logger.info(f"Auto-cleared {cleared_count} alerts with sufficient documentation")

    result["auto_cleared"] = cleared_count

    logger.info("Alert evaluation pipeline complete")
    return result
