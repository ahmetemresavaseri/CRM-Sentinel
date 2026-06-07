from datetime import date
from typing import Optional, List, Dict, Any
import uuid

from fastapi import APIRouter, Depends, Query
from sqlalchemy.orm import Session
from sqlalchemy.exc import IntegrityError

from db import get_db
from models.schemas import CRMNote, Client, Transaction, Match

router = APIRouter(prefix="/notes", tags=["Notes"])


@router.get("/")
async def get_notes(
    client_id: Optional[str] = Query(None),
    date_from: Optional[date] = Query(None),
    date_to: Optional[date] = Query(None),
    text_contains: Optional[str] = Query(None),
    skip: int = 0,
    limit: int = 100,
    db: Session = Depends(get_db),
):
    query = (
        db.query(CRMNote, Client.name.label("client_name"))
        .outerjoin(Client, Client.client_id == CRMNote.client_id)
    )

    if client_id:
        query = query.filter(CRMNote.client_id == client_id)
    if date_from:
        query = query.filter(CRMNote.date >= date_from)
    if date_to:
        query = query.filter(CRMNote.date <= date_to)
    if text_contains:
        # Use ILIKE for case-insensitive contains on Postgres
        query = query.filter(CRMNote.text.ilike(f"%{text_contains}%"))

    # Get total count before pagination
    total = query.count()

    # Apply ordering and pagination
    query = query.order_by(CRMNote.date.desc()).offset(skip).limit(limit)

    results = query.all()
    items = [
        {
            "id": note.id,
            "client_id": note.client_id,
            "client_name": client_name,
            "date": note.date,
            "text": note.text,
        }
        for note, client_name in results
    ]

    return {
        "items": items,
        "total": total,
        "page": (skip // limit) + 1,
        "size": limit
    }



@router.post("/bulk")
async def create_notes_bulk(items: List[Dict[str, Any]], db: Session = Depends(get_db)):
    inserted_ids: List[str] = []
    skipped: List[Dict[str, Any]] = []

    def _parse_date(val):
        if val is None:
            return None
        if isinstance(val, date):
            return val
        try:
            return date.fromisoformat(val)
        except Exception:
            return None

    for idx, payload in enumerate(items or []):
        client_id = payload.get("client_id")
        if not client_id:
            skipped.append({"index": idx, "reason": "missing client_id"})
            continue

        note_id = payload.get("id") or str(uuid.uuid4())
        note_date = _parse_date(payload.get("date"))
        text = payload.get("text")
        if note_date is None:
            skipped.append({"index": idx, "reason": "invalid or missing date"})
            continue

        note = CRMNote(
            id=note_id,
            client_id=client_id,
            date=note_date,
            text=text,
        )
        try:
            db.add(note)
            db.flush()
            inserted_ids.append(note_id)
        except IntegrityError as e:
            db.rollback()
            skipped.append({"index": idx, "reason": "integrity_error", "detail": str(e.orig) if getattr(e, 'orig', None) else str(e)})
        except Exception as e:
            db.rollback()
            skipped.append({"index": idx, "reason": "unexpected_error", "detail": str(e)})

    try:
        if inserted_ids:
            db.commit()
    finally:
        pass

    # Trigger alert evaluation after notes are added (they might clear existing alerts)
    alerts_cleared = 0
    if inserted_ids:
        try:
            from utils.auto_clear import bulk_check_and_clear_alerts
            alerts_cleared = bulk_check_and_clear_alerts(db)
        except Exception:
            # Don't fail if auto-clear fails
            pass

    return {
        "inserted": len(inserted_ids),
        "skipped": len(skipped),
        "inserted_ids": inserted_ids,
        "skipped_items": skipped,
        "alerts_cleared": alerts_cleared
    }


@router.get("/recent")
async def get_recent_notes(
    db: Session = Depends(get_db),
):
    results = (
        db.query(CRMNote, Client.name.label("client_name"))
        .outerjoin(Client, Client.client_id == CRMNote.client_id)
        .order_by(CRMNote.date.desc())
        .limit(10)
        .all()
    )

    return [
        {
            "id": note.id,
            "client_id": note.client_id,
            "client_name": client_name,
            "date": note.date,
            "text": note.text,
        }
        for note, client_name in results
    ]


@router.get("/{note_id}/transactions")
async def get_transactions_for_note(
    note_id: str,
    limit: Optional[int] = Query(None, ge=1),
    confidence_threshold: float = Query(0.75, ge=0.0, le=1.0),
    db: Session = Depends(get_db),
):
    """
    Get all transactions matched to a specific CRM note.

    Args:
        note_id: The CRM note ID
        limit: Optional limit on number of transactions returned
        confidence_threshold: Minimum confidence score (default: 0.75)

    Returns:
        List of transactions with confidence scores
    """
    query = (
        db.query(Transaction, Match.confidence_score.label("confidence_score"), Client.name.label("client_name"))
        .join(Match, Match.transaction_id == Transaction.transaction_id)
        .outerjoin(Client, Client.client_id == Transaction.client_id)
        .filter(
            Match.note_id == note_id,
            Match.confidence_score >= confidence_threshold,
        )
        .order_by(Transaction.date.desc())
    )

    if limit is not None:
        query = query.limit(limit)

    results = query.all()
    return [
        {
            "transaction_id": txn.transaction_id,
            "client_id": txn.client_id,
            "client_name": client_name,
            "date": txn.date,
            "amount": str(txn.amount),
            "currency": txn.currency,
            "direction": txn.direction,
            "type": txn.type,
            "counterparty_bank": txn.counterparty_bank,
            "counterparty_entity": txn.counterparty_entity,
            "confidence_score": float(score) if score is not None else None,
        }
        for txn, score, client_name in results
    ]
