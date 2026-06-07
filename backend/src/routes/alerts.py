"""
Alerts API Routes

Endpoints for managing AML alerts with the new redesigned system.
"""

from datetime import datetime, date
from typing import Optional

from fastapi import APIRouter, Depends, HTTPException, Body, Query
from sqlalchemy.orm import Session, joinedload

from db import get_db
from models.schemas import Alert, AlertTransaction
from utils.alert_engine import evaluate_and_create_alerts
from utils.auto_clear import bulk_check_and_clear_alerts
from routes.users import require_write_access

router = APIRouter(prefix="/alerts", tags=["Alerts"])


@router.get("/")
async def get_alerts(
    is_open: Optional[bool] = Query(None, description="Filter by open/closed status"),
    rule_name: Optional[str] = Query(None, description="Filter by rule name"),
    client_id: Optional[str] = Query(None, description="Filter by client ID"),
    date_from: Optional[date] = Query(None, description="Filter by created_at >= date_from"),
    date_to: Optional[date] = Query(None, description="Filter by created_at <= date_to"),
    cleared_by_matching: Optional[bool] = Query(None, description="Filter by auto-cleared alerts"),
    db: Session = Depends(get_db)
):
    """
    Get all alerts with optional filters.

    Returns alerts with related transactions and progress tracking.
    """
    # Eager load related transactions to avoid N+1 queries
    query = db.query(Alert).options(
        joinedload(Alert.alert_transactions).joinedload(AlertTransaction.transaction)
    )

    # Apply filters
    if is_open is not None:
        query = query.filter(Alert.is_open == is_open)
    if rule_name:
        query = query.filter(Alert.rule_name == rule_name)
    if client_id:
        query = query.filter(Alert.client_id == client_id)
    if date_from:
        query = query.filter(Alert.created_at >= date_from)
    if date_to:
        query = query.filter(Alert.created_at <= date_to)
    if cleared_by_matching is not None:
        query = query.filter(Alert.cleared_by_matching == cleared_by_matching)

    alerts = query.order_by(Alert.created_at.desc()).all()

    # Return alerts with related transactions
    result = []
    for a in alerts:
        txns = [at.transaction for at in (a.alert_transactions or [])]
        result.append({
            "id": a.id,
            "client_id": a.client_id,
            "rule_name": a.rule_name,
            "rule_version": a.rule_version,
            "rule_details": a.rule_details,
            "evaluation_window_start": a.evaluation_window_start,
            "evaluation_window_end": a.evaluation_window_end,
            "direction": a.direction,
            "is_open": a.is_open,
            "dismissed_reason": a.dismissed_reason,
            "dismissed_at": a.dismissed_at,
            "cleared_by_matching": a.cleared_by_matching,
            "cleared_at": a.cleared_at,
            "matched_transaction_count": a.matched_transaction_count,
            "total_transaction_count": a.total_transaction_count,
            "created_at": a.created_at,
            "transactions": [
                {
                    "transaction_id": t.transaction_id,
                    "client_id": t.client_id,
                    "date": t.date,
                    "amount": t.amount,
                    "currency": t.currency,
                    "direction": t.direction,
                    "type": t.type,
                    "counterparty_bank": t.counterparty_bank,
                    "counterparty_entity": t.counterparty_entity,
                }
                for t in txns
            ]
        })
    return result


@router.get("/{alert_id}")
async def get_alert(
    alert_id: str,
    db: Session = Depends(get_db)
):
    """
    Get a single alert by ID with all related data.
    """
    alert = db.query(Alert).options(
        joinedload(Alert.alert_transactions).joinedload(AlertTransaction.transaction)
    ).filter(Alert.id == alert_id).first()

    if not alert:
        raise HTTPException(status_code=404, detail="Alert not found")

    txns = [at.transaction for at in (alert.alert_transactions or [])]

    return {
        "id": alert.id,
        "client_id": alert.client_id,
        "rule_name": alert.rule_name,
        "rule_version": alert.rule_version,
        "rule_details": alert.rule_details,
        "evaluation_window_start": alert.evaluation_window_start,
        "evaluation_window_end": alert.evaluation_window_end,
        "direction": alert.direction,
        "is_open": alert.is_open,
        "dismissed_reason": alert.dismissed_reason,
        "dismissed_at": alert.dismissed_at,
        "cleared_by_matching": alert.cleared_by_matching,
        "cleared_at": alert.cleared_at,
        "matched_transaction_count": alert.matched_transaction_count,
        "total_transaction_count": alert.total_transaction_count,
        "created_at": alert.created_at,
        "transactions": [
            {
                "transaction_id": t.transaction_id,
                "client_id": t.client_id,
                "date": t.date,
                "amount": t.amount,
                "currency": t.currency,
                "direction": t.direction,
                "type": t.type,
                "counterparty_bank": t.counterparty_bank,
                "counterparty_entity": t.counterparty_entity,
            }
            for t in txns
        ]
    }


@router.post("/{alert_id}/dismiss")
async def dismiss_alert(
    alert_id: str,
    reason: str = Body(..., embed=True, description="Reason for dismissing the alert (required)"),
    db: Session = Depends(get_db),
    _user=Depends(require_write_access)
):
    """
    Dismiss an alert with a required reason.

    This is the manual dismissal workflow for false positives or reviewed alerts.
    """
    alert = db.query(Alert).filter(Alert.id == alert_id).first()
    if not alert:
        raise HTTPException(status_code=404, detail="Alert not found")

    if not alert.is_open:
        raise HTTPException(status_code=400, detail="Alert is already closed")

    if not reason or not reason.strip():
        raise HTTPException(status_code=400, detail="Dismissal reason is required")

    # Close the alert with dismissal tracking
    alert.is_open = False
    alert.dismissed_reason = reason.strip()
    alert.dismissed_at = datetime.utcnow()

    db.add(alert)
    db.commit()
    db.refresh(alert)

    # Return full alert object so frontend can update properly
    return {
        "id": alert.id,
        "client_id": alert.client_id,
        "rule_name": alert.rule_name,
        "rule_version": alert.rule_version,
        "rule_details": alert.rule_details,
        "evaluation_window_start": alert.evaluation_window_start,
        "evaluation_window_end": alert.evaluation_window_end,
        "direction": alert.direction,
        "is_open": alert.is_open,
        "dismissed_reason": alert.dismissed_reason,
        "dismissed_at": alert.dismissed_at,
        "cleared_by_matching": alert.cleared_by_matching,
        "cleared_at": alert.cleared_at,
        "matched_transaction_count": alert.matched_transaction_count,
        "total_transaction_count": alert.total_transaction_count,
        "created_at": alert.created_at,
        "transactions": [],  # Don't need to load transactions for dismiss
    }


@router.post("/evaluate")
async def trigger_alert_evaluation(
    db: Session = Depends(get_db),
    _user=Depends(require_write_access)
):
    """
    Manually trigger alert evaluation pipeline.

    This runs all 5 AML rules on unmatched transactions and creates/updates alerts.
    Normally this is called automatically after transaction uploads or match creation.
    """
    result = evaluate_and_create_alerts(db)
    return {
        "success": True,
        "message": "Alert evaluation complete",
        "statistics": result,
    }


@router.post("/auto-clear")
async def trigger_auto_clear(
    db: Session = Depends(get_db),
    _user=Depends(require_write_access)
):
    """
    Manually trigger bulk auto-clear check.

    This checks all open alerts and auto-clears those where all transactions are matched.
    Useful for cleanup or recovery from inconsistent state.
    """
    cleared_count = bulk_check_and_clear_alerts(db)
    return {
        "success": True,
        "message": f"Auto-clear complete: {cleared_count} alerts cleared",
        "cleared_count": cleared_count,
    }


@router.post("/{alert_id}/reopen")
async def reopen_alert(
    alert_id: str,
    db: Session = Depends(get_db),
    _user=Depends(require_write_access)
):
    """
    Reopen a closed alert for manual review.

    This action permanently disables auto-clear for this alert.
    Once reopened, the alert requires manual dismissal - it will never be
    auto-cleared again, even if all transactions get matched later.

    Rationale: Manual reopen = human override. Human decisions always win.
    """
    alert = db.query(Alert).filter(Alert.id == alert_id).first()
    if not alert:
        raise HTTPException(status_code=404, detail="Alert not found")

    if alert.is_open:
        raise HTTPException(status_code=400, detail="Alert is already open")

    # Reopen the alert
    # IMPORTANT: We preserve BOTH cleared_by_matching AND dismissed_at for the one-time rule
    # For manually dismissed alerts: set dismissed_reason to empty string (can't be NULL when dismissed_at is set)
    # For auto-cleared alerts: dismissed_reason stays NULL (dismissed_at is already NULL)
    alert.is_open = True
    if alert.dismissed_at is not None:
        # Manually dismissed alert - set reason to empty string to satisfy DB constraint
        alert.dismissed_reason = ""
    # else: auto-cleared alert - dismissed_reason stays NULL
    # Keep dismissed_at and cleared_by_matching - these prevent future auto-clear

    db.add(alert)
    db.commit()
    db.refresh(alert)

    # Return full alert object so frontend can update properly
    return {
        "id": alert.id,
        "client_id": alert.client_id,
        "rule_name": alert.rule_name,
        "rule_version": alert.rule_version,
        "rule_details": alert.rule_details,
        "evaluation_window_start": alert.evaluation_window_start,
        "evaluation_window_end": alert.evaluation_window_end,
        "direction": alert.direction,
        "is_open": alert.is_open,
        "dismissed_reason": alert.dismissed_reason,
        "dismissed_at": alert.dismissed_at,
        "cleared_by_matching": alert.cleared_by_matching,
        "cleared_at": alert.cleared_at,
        "matched_transaction_count": alert.matched_transaction_count,
        "total_transaction_count": alert.total_transaction_count,
        "created_at": alert.created_at,
        "transactions": [],  # Don't need to load transactions for reopen
    }


@router.delete("/clear-all")
async def clear_all_alerts(
    db: Session = Depends(get_db),
    _user=Depends(require_write_access)
):
    """
    Delete all alerts from the database.

    This is a destructive operation intended for testing/demo purposes.
    Useful for resetting the alert system to start fresh with new data.

    Requires write access.
    """
    # Count alerts before deletion
    count_before = db.query(Alert).count()

    # Delete all alerts (cascade will handle alert_transactions)
    db.query(Alert).delete()
    db.commit()

    return {
        "success": True,
        "message": f"Successfully deleted all alerts",
        "deleted_count": count_before,
    }
