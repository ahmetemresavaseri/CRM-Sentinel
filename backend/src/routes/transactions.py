from typing import Optional, List, Dict, Any
from datetime import datetime, date
from decimal import Decimal
import uuid

from fastapi import APIRouter, Depends, Query
from sqlalchemy import func
from sqlalchemy.orm import Session, joinedload
from sqlalchemy.exc import IntegrityError

from db import get_db, SessionLocal
from models.schemas import Transaction, Match, CRMNote, Client
import asyncio
import os
import uuid as uuid_mod
try:
    import httpx
except Exception:
    httpx = None

router = APIRouter(prefix="/transactions", tags=["Transactions"])

@router.get("/")
async def get_transactions(
        client_id: Optional[str] = None,
        transaction_id: Optional[str] = None,
        confidence_threshold: Optional[float] = Query(None, ge=0.0, le=1.0),
        skip: int = 0,
        limit: int = 100,
        db: Session = Depends(get_db)
):
    query = db.query(Transaction).options(joinedload(Transaction.client))

    if client_id:
        query = query.filter(Transaction.client_id == client_id)
    if transaction_id:
        query = query.filter(Transaction.transaction_id == transaction_id)

    # Only filter by CRM note match if a threshold was explicitly provided
    if confidence_threshold is not None:
        matching_txn_ids_subq = (
            db.query(Match.transaction_id)
            .join(CRMNote, CRMNote.id == Match.note_id)
            .filter(Match.confidence_score >= confidence_threshold)
            .distinct()
            .subquery()
        )
        query = query.filter(Transaction.transaction_id.in_(db.query(matching_txn_ids_subq.c.transaction_id)))

    # Get total count before pagination
    total = query.count()

    # Apply pagination and sorting (default sort by date descending)
    transactions = query.order_by(Transaction.date.desc()).offset(skip).limit(limit).all()

    # Serialize transactions with client_name
    items = []
    for txn in transactions:
        txn_dict = {
            "transaction_id": txn.transaction_id,
            "client_id": txn.client_id,
            "client_name": txn.client.name if txn.client else None,
            "date": txn.date,
            "amount": str(txn.amount) if txn.amount is not None else None,
            "currency": txn.currency,
            "direction": txn.direction,
            "type": txn.type,
            "counterparty_bank": txn.counterparty_bank,
            "counterparty_entity": txn.counterparty_entity,
        }
        items.append(txn_dict)

    return {
        "items": items,
        "total": total,
        "page": (skip // limit) + 1,
        "size": limit
    }


@router.post("/bulk")
async def create_transactions_bulk(items: List[Dict[str, Any]], db: Session = Depends(get_db)):
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
        # Basic required fields
        client_id = payload.get("client_id")
        if not client_id:
            skipped.append({"index": idx, "reason": "missing client_id"})
            continue

        txn_id = payload.get("transaction_id") or str(uuid.uuid4())
        txn_date = _parse_date(payload.get("date"))
        amount_raw = payload.get("amount")
        try:
            amount_val = Decimal(str(amount_raw)) if amount_raw is not None else None
        except Exception:
            amount_val = None

        if txn_date is None or amount_val is None:
            skipped.append({"index": idx, "reason": "invalid or missing date/amount"})
            continue

        txn = Transaction(
            transaction_id=txn_id,
            client_id=client_id,
            date=txn_date,
            amount=amount_val,
            currency=payload.get("currency"),
            direction=payload.get("direction"),
            type=payload.get("type"),
            counterparty_bank=payload.get("counterparty_bank"),
            counterparty_entity=payload.get("counterparty_entity"),
        )
        try:
            db.add(txn)
            db.flush()  # attempt insert immediately to catch integrity errors
            inserted_ids.append(txn_id)
        except IntegrityError as e:
            db.rollback()
            # Try to continue with next item
            skipped.append({"index": idx, "reason": "integrity_error", "detail": str(e.orig) if getattr(e, 'orig', None) else str(e)})
        except Exception as e:
            db.rollback()
            skipped.append({"index": idx, "reason": "unexpected_error", "detail": str(e)})

    # Commit all successful inserts
    try:
        if inserted_ids:
            db.commit()
    finally:
        pass

    # Automatically evaluate AML rules on newly inserted transactions
    alert_stats = {"created": 0, "updated": 0, "skipped": 0}
    if inserted_ids:
        try:
            from utils.alert_engine import evaluate_and_create_alerts
            alert_stats = evaluate_and_create_alerts(db)
        except Exception:
            # Don't fail the entire transaction upload if rule evaluation fails
            pass

    # Fire-and-forget: for each inserted transaction, enqueue async matching task
    if inserted_ids:
        try:
            loop = asyncio.get_running_loop()
        except RuntimeError:
            loop = None
        for tid in inserted_ids:
            if loop and httpx:
                loop.create_task(_enqueue_match_for_transaction(tid))

    return {
        "inserted": len(inserted_ids),
        "skipped": len(skipped),
        "inserted_ids": inserted_ids,
        "skipped_items": skipped,
        "alerts_created": alert_stats.get("created", 0),
        "alerts_updated": alert_stats.get("updated", 0),
    }

@router.get("/overview")
async def get_overview(
        client_id: Optional[str] = Query(None),
        db: Session = Depends(get_db),
):
    query = db.query(
        func.count(Transaction.transaction_id),
        func.coalesce(func.sum(Transaction.amount), 0),
        func.coalesce(func.avg(Transaction.amount), 0),
    )

    if client_id:
        query = query.filter(Transaction.client_id == client_id)

    count_txn, sum_amount, avg_amount = query.one()
    return {"count_txn": count_txn, "sum_amount": sum_amount, "avg_amount": avg_amount}

# ---------------------------------------------
# Background matching helpers (non-blocking)
# ---------------------------------------------

def _client_id_to_int(cid: str) -> int:
    try:
        digits = "".join(ch for ch in str(cid) if ch.isdigit())
        if digits:
            return int(digits)
    except Exception:
        pass
    # Fallback deterministic small int
    return abs(hash(str(cid))) % 10_000_000

async def _enqueue_match_for_transaction(transaction_id: str):
    if httpx is None:
        return
    # api.group-p5.webdev-25.ivia.isginf.ch
    ms_base = os.getenv("MICROSERVICE_URL", "https://api.group-p5.webdev-25.ivia.isginf.ch")
    url = f"{ms_base}/v1/match"

    # Use separate DB session for background task
    db_sess = SessionLocal()
    try:
        txn: Optional[Transaction] = db_sess.query(Transaction).filter(Transaction.transaction_id == transaction_id).first()
        if not txn:
            return
        client_int = _client_id_to_int(txn.client_id)
        # Fetch all notes for same client_id
        notes: List[CRMNote] = db_sess.query(CRMNote).filter(CRMNote.client_id == txn.client_id).order_by(CRMNote.date.asc()).all()
        note_id_by_index: List[str] = []
        notes_payload: List[Dict[str, Any]] = []
        for idx, n in enumerate(notes):
            note_id_by_index.append(n.id)
            notes_payload.append({
                "note_index": idx,
                "client_id": client_int,
                "date": n.date.isoformat() if n.date else datetime.utcnow().date().isoformat(),
                "content": n.text or ""
            })
        txn_payload = {
            "transaction": {
                "transaction_id": txn.transaction_id,
                "client_id": client_int,
                "date": txn.date.isoformat() if txn.date else datetime.utcnow().date().isoformat(),
                "amount_chf": float(txn.amount) if txn.amount is not None else 0.0,
                "original_currency": txn.currency or "",
                "direction": txn.direction or "",
                "type": txn.type or "",
                "counterparty_bank": txn.counterparty_bank or "",
                "counterparty_entity": txn.counterparty_entity or "",
            },
            "notes": notes_payload,
            "config": {"return_top_k": 5}
        }
        async with httpx.AsyncClient(timeout=20.0) as client:
            resp = await client.post(url, json=txn_payload)
            if resp.status_code != 200:
                return
            data = resp.json()
            matches = data.get("matches") or []
            # Insert matches
            for m in matches:
                try:
                    idx = m.get("note_index")
                    score = m.get("score")
                    if idx is None or idx < 0 or idx >= len(note_id_by_index):
                        continue
                    note_id = note_id_by_index[idx]
                    mid = str(uuid_mod.uuid4())
                    db_sess.add(Match(id=mid, transaction_id=txn.transaction_id, note_id=note_id, confidence_score=Decimal(str(score)) if score is not None else None))
                except Exception:
                    continue
            db_sess.commit()

            # Auto-clear alerts for this transaction if all its transactions are now matched
            try:
                from utils.auto_clear import check_and_clear_alerts_for_transaction
                check_and_clear_alerts_for_transaction(db_sess, txn.transaction_id)
            except Exception:
                # Don't fail if auto-clear fails
                pass

    # except Exception:
        # db_sess.rollback()
    finally:
        db_sess.close()

@router.get("/{transaction_id}/notes")
async def get_notes_for_transaction(
        transaction_id: str,
        limit: Optional[int] = Query(None, ge=1),
        confidence_threshold: float = Query(0.75, ge=0.0, le=1.0),
        db: Session = Depends(get_db),
):
    query = (
        db.query(CRMNote, Match.confidence_score.label("confidence_score"), Client.name.label("client_name"))
        .join(Match, Match.note_id == CRMNote.id)
        .outerjoin(Client, Client.client_id == CRMNote.client_id)
        .filter(
            Match.transaction_id == transaction_id,
            Match.confidence_score >= confidence_threshold,
            )
        .order_by(CRMNote.date.desc())
    )
    if limit is not None:
        query = query.limit(limit)

    results = query.all()
    return [
        {
            "id": note.id,
            "client_id": note.client_id,
            "client_name": client_name,
            "date": note.date,
            "text": note.text,
            "confidence_score": float(score) if score is not None else None,
        }
        for note, score, client_name in results
    ]
