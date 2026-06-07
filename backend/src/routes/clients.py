from typing import Optional

from fastapi import APIRouter, Depends, HTTPException, Query
from sqlalchemy.orm import Session

from db import get_db
from models.schemas import Client, Match, CRMNote, Transaction

router = APIRouter(prefix="/clients", tags=["Clients"])

@router.get("/")
async def get_clients(
    skip: int = 0,
    limit: int = 100,
    search: Optional[str] = None,
    db: Session = Depends(get_db)
):
    query = db.query(Client)
    
    if search:
        search_filter = f"%{search}%"
        query = query.filter(
            (Client.client_id.ilike(search_filter)) | 
            (Client.name.ilike(search_filter))
        )
    
    total = query.count()
    clients = query.offset(skip).limit(limit).all()
    
    return {
        "items": clients,
        "total": total,
        "page": (skip // limit) + 1,
        "size": limit
    }


@router.get("/{client_id}")
async def get_client_by_id(client_id: str, db: Session = Depends(get_db)):
    client: Optional[Client] = db.query(Client).filter(Client.client_id == client_id).first()
    if not client:
        raise HTTPException(status_code=404, detail="Client not found")
    return client

@router.get("/{client_id}/transactions-notes")
async def get_client_transactions_and_notes(
        client_id: str,
        confidence_threshold: float = Query(0.75, ge=0.0, le=1.0),
        db: Session = Depends(get_db),
):
    client: Optional[Client] = db.query(Client).filter(Client.client_id == client_id).first()
    if not client:
        raise HTTPException(status_code=404, detail="Client not found")

    # Only return transactions that have at least one match with confidence >= threshold
    matching_txn_ids_subq = (
        db.query(Match.transaction_id)
        .filter(Match.confidence_score >= confidence_threshold)
        .distinct()
        .subquery()
    )

    transactions = (
        db.query(Transaction)
        .filter(
            Transaction.client_id == client_id,
            Transaction.transaction_id.in_(db.query(matching_txn_ids_subq.c.transaction_id)),
            )
        .order_by(Transaction.date.desc())
        .all()
    )

    txn_ids = [t.transaction_id for t in transactions]

    notes_by_transaction_id: dict[str, list[dict]] = {tid: [] for tid in txn_ids}
    if txn_ids:
        rows = (
            db.query(Match.transaction_id, CRMNote, Match.confidence_score)
            .join(CRMNote, CRMNote.id == Match.note_id)
            .filter(
                Match.transaction_id.in_(txn_ids),
                Match.confidence_score >= confidence_threshold,
                )
            .order_by(CRMNote.date.desc())
            .all()
        )

        seen: set[tuple[str, str]] = set()
        for tid, note, score in rows:
            key = (tid, note.id)
            if key in seen:
                continue
            seen.add(key)
            notes_by_transaction_id.setdefault(tid, []).append({
                "note": note,
                "confidence_score": float(score) if score is not None else None,
            })

    return {
        "client_id": client_id,
        "client_name": client.name,
        "transactions": [
            {
                "transaction": t,
                "notes": notes_by_transaction_id.get(t.transaction_id, []),
            }
            for t in transactions
        ],
    }