"""
Auto-Clear Logic for Alerts

This module handles automatic clearing of alerts when all linked transactions
are matched to notes.

CRITICAL: Always recompute matched_transaction_count from database.
NEVER trust cached values - they could be stale due to race conditions.
"""

from datetime import datetime
from typing import List, Optional
from sqlalchemy.orm import Session
from sqlalchemy import func
import logging

from models.schemas import Alert, AlertTransaction, Match

logger = logging.getLogger(__name__)


def recompute_matched_count(db: Session, alert_id: str, confidence_threshold: float = 0.81) -> int:
    """
    Recompute how many transactions in this alert have at least one HIGH-CONFIDENCE match.

    This is the source of truth - always query the database, never trust cached values.

    IMPORTANT: Only counts matches with confidence_score >= threshold (default 0.81).
    Low-confidence matches should NOT auto-clear alerts.

    Args:
        db: Database session
        alert_id: Alert ID to check
        confidence_threshold: Minimum confidence score (default 0.81)

    Returns:
        Number of alert transactions that have at least one high-confidence match
    """
    # Get all transaction IDs for this alert
    alert_tx_ids = (
        db.query(AlertTransaction.transaction_id)
        .filter(AlertTransaction.alert_id == alert_id)
        .subquery()
    )

    # Count how many of these transactions have at least one HIGH-CONFIDENCE match
    matched_count = (
        db.query(func.count(func.distinct(Match.transaction_id)))
        .filter(
            Match.transaction_id.in_(alert_tx_ids),
            Match.confidence_score >= confidence_threshold  # CRITICAL FIX: Only count high-confidence matches
        )
        .scalar()
    )

    return matched_count or 0


def check_and_clear_alert(db: Session, alert_id: str) -> bool:
    """
    Check if an alert should be auto-cleared and clear it if needed.

    An alert is auto-cleared when:
    - ALL transactions have at least one HIGH-CONFIDENCE match (>= 0.81)
    - is_open == True (not already cleared or dismissed)
    - NEVER been dismissed (dismissed_at IS NULL)
    - NEVER been auto-cleared before (cleared_by_matching == False)

    IMPORTANT: Auto-clear is ONE-TIME ONLY.
    If an alert was previously auto-cleared or dismissed and then reopened,
    it will NEVER be auto-cleared again (human override wins).

    Args:
        db: Database session
        alert_id: Alert ID to check

    Returns:
        True if alert was cleared, False otherwise
    """
    alert = db.query(Alert).filter(Alert.id == alert_id).first()
    if not alert:
        logger.warning(f"Alert {alert_id} not found")
        return False

    if not alert.is_open:
        logger.debug(f"Alert {alert_id} already closed")
        return False

    # CRITICAL: Never auto-clear if previously dismissed or previously auto-cleared
    # This ensures manual reopen disables auto-clear permanently
    if alert.dismissed_at is not None or alert.cleared_by_matching:
        logger.debug(f"Alert {alert_id} ineligible for auto-clear: "
                    f"dismissed_at={alert.dismissed_at}, cleared_by_matching={alert.cleared_by_matching}")
        return False

    # CRITICAL: Recompute from database (never trust cached value)
    matched_count = recompute_matched_count(db, alert_id)
    alert.matched_transaction_count = matched_count

    # Check if 100% matched
    if matched_count >= alert.total_transaction_count:
        logger.info(f"Auto-clearing alert {alert_id}: {matched_count}/{alert.total_transaction_count} transactions matched")

        alert.is_open = False
        alert.cleared_by_matching = True
        alert.cleared_at = datetime.utcnow()

        db.add(alert)
        db.commit()

        return True

    logger.debug(f"Alert {alert_id} not ready to clear: {matched_count}/{alert.total_transaction_count} transactions matched")
    return False


def check_and_clear_alerts_for_transaction(db: Session, transaction_id: str) -> List[str]:
    """
    Check and auto-clear all alerts linked to a transaction that was just matched.

    This should be called after a new match is created.

    Args:
        db: Database session
        transaction_id: Transaction ID that was just matched

    Returns:
        List of alert IDs that were auto-cleared
    """
    # Find all open alerts linked to this transaction
    alert_ids = (
        db.query(AlertTransaction.alert_id)
        .join(Alert, Alert.id == AlertTransaction.alert_id)
        .filter(
            AlertTransaction.transaction_id == transaction_id,
            Alert.is_open == True
        )
        .distinct()
        .all()
    )

    cleared_alert_ids = []
    for (alert_id,) in alert_ids:
        if check_and_clear_alert(db, alert_id):
            cleared_alert_ids.append(alert_id)

    return cleared_alert_ids


def bulk_check_and_clear_alerts(db: Session) -> int:
    """
    Bulk check all open alerts and auto-clear those that are fully matched.

    This is useful for:
    - Initial migration/cleanup
    - Scheduled maintenance jobs
    - Recovery from inconsistent state

    Args:
        db: Database session

    Returns:
        Number of alerts auto-cleared
    """
    logger.info("Starting bulk auto-clear check...")

    # Get all open alerts
    open_alerts = db.query(Alert).filter(Alert.is_open == True).all()
    logger.info(f"Found {len(open_alerts)} open alerts to check")

    cleared_count = 0
    for alert in open_alerts:
        if check_and_clear_alert(db, alert.id):
            cleared_count += 1

    logger.info(f"Bulk auto-clear complete: {cleared_count} alerts cleared")
    return cleared_count
