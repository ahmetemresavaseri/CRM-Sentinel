"""
Pipeline orchestrator for transaction-to-note matching.
Coordinates scoring logic and returns ranked results.
Supports multiple scoring methods (simple, semantic, both).
"""

import logging
from typing import List, Optional, Tuple
from models.schemas import Transaction, CRMNote, MatchConfig, MatchResult
from logic.scoring import (
    compute_simple_match_score,
    generate_explanation,
    compute_semantic_match_score,
    generate_semantic_explanation
)

logger = logging.getLogger(__name__)

# Try to import embeddings module
try:
    from logic.embeddings import (
        is_embeddings_available,
        compute_text_similarity,
        create_transaction_embedding_text,
        create_note_embedding_text
    )
    EMBEDDINGS_AVAILABLE = is_embeddings_available()
    if EMBEDDINGS_AVAILABLE:
        logger.info("Semantic embeddings are available")
    else:
        logger.warning("Embeddings module loaded but model unavailable")
except ImportError as e:
    EMBEDDINGS_AVAILABLE = False
    logger.warning(f"Embeddings not available: {e}")


def create_transaction_text(transaction: Transaction) -> str:
    """
    Create a text representation of the transaction for simple matching.
    Combines relevant fields into a single searchable string.
    """
    parts = [
        transaction.type.replace('_', ' '),
        transaction.direction,
        transaction.counterparty_entity,
        transaction.counterparty_bank,
        transaction.original_currency,
        f"{transaction.amount_chf:.2f}"
    ]

    return ' '.join(parts)


def match_transaction_to_notes_simple(
    transaction: Transaction,
    notes: List[CRMNote],
    config: MatchConfig
) -> List[MatchResult]:
    """
    Match using simple rule-based scoring (Phase 1 method).
    """
    if not notes:
        return []

    transaction_text = create_transaction_text(transaction)
    results = []

    for note in notes:
        score = compute_simple_match_score(
            transaction_text=transaction_text,
            note_content=note.content,
            transaction_date=transaction.date,
            note_date=note.date,
            amount_chf=transaction.amount_chf,
            direction=transaction.direction,
            counterparty_entity=transaction.counterparty_entity
        )

        explanation = generate_explanation(
            score=score,
            transaction_text=transaction_text,
            note_content=note.content,
            transaction_date=transaction.date,
            note_date=note.date
        )

        results.append(MatchResult(
            note_index=note.note_index,
            score=score,
            explanation=explanation
        ))

    results.sort(key=lambda x: x.score, reverse=True)
    return results[:config.return_top_k]


def match_transaction_to_notes_semantic(
    transaction: Transaction,
    notes: List[CRMNote],
    config: MatchConfig
) -> Optional[List[MatchResult]]:
    """
    Match using semantic embeddings (Phase 2 method).

    Returns:
        List of MatchResult objects, or None if embeddings unavailable
    """
    if not EMBEDDINGS_AVAILABLE:
        return None

    if not notes:
        return []

    # Create embedding text for transaction
    transaction_embedding_text = create_transaction_embedding_text(
        transaction_type=transaction.type,
        direction=transaction.direction,
        amount_chf=transaction.amount_chf,
        counterparty_entity=transaction.counterparty_entity,
        counterparty_bank=transaction.counterparty_bank,
        currency=transaction.original_currency
    )

    results = []

    for note in notes:
        # Create embedding text for note
        note_embedding_text = create_note_embedding_text(note.content)

        # Compute semantic similarity
        semantic_similarity = compute_text_similarity(
            transaction_embedding_text,
            note_embedding_text
        )

        if semantic_similarity is None:
            logger.warning("Failed to compute semantic similarity, skipping note")
            continue

        # Compute overall score with semantic similarity as primary signal
        score = compute_semantic_match_score(
            semantic_similarity=semantic_similarity,
            transaction_date=transaction.date,
            note_date=note.date,
            amount_chf=transaction.amount_chf,
            note_content=note.content,
            direction=transaction.direction,
            counterparty_entity=transaction.counterparty_entity,
            transaction_id=transaction.transaction_id
        )

        explanation = generate_semantic_explanation(
            score=score,
            semantic_similarity=semantic_similarity,
            transaction_date=transaction.date,
            note_date=note.date,
            note_content=note.content
        )

        results.append(MatchResult(
            note_index=note.note_index,
            score=score,
            explanation=explanation
        ))

    results.sort(key=lambda x: x.score, reverse=True)
    return results[:config.return_top_k]


def match_transaction_to_notes(
    transaction: Transaction,
    notes: List[CRMNote],
    config: MatchConfig
) -> List[MatchResult]:
    """
    Match a single transaction against a list of CRM notes.

    Supports multiple scoring methods based on config.scoring_method:
    - "auto": Use semantic if available, fallback to simple
    - "semantic": Force semantic (error if unavailable)
    - "simple": Force simple rule-based
    - "both": Not supported here (use comparison endpoint)

    Returns:
        List of MatchResult objects, sorted by score descending,
        limited to top_k as specified in config.
    """
    method = config.scoring_method

    if method == "simple":
        return match_transaction_to_notes_simple(transaction, notes, config)

    elif method == "semantic":
        results = match_transaction_to_notes_semantic(transaction, notes, config)
        if results is None:
            raise ValueError("Semantic embeddings are not available. Install sentence-transformers or use scoring_method='simple'")
        return results

    elif method == "auto":
        # Try semantic first, fallback to simple
        results = match_transaction_to_notes_semantic(transaction, notes, config)
        if results is not None:
            return results
        logger.info("Falling back to simple scoring method")
        return match_transaction_to_notes_simple(transaction, notes, config)

    elif method == "both":
        raise ValueError("scoring_method='both' is not supported in this endpoint. Use /match/compare endpoint instead.")

    else:
        raise ValueError(f"Invalid scoring_method: {method}. Must be one of: auto, semantic, simple, both")


def match_transaction_to_notes_both(
    transaction: Transaction,
    notes: List[CRMNote],
    config: MatchConfig
) -> Tuple[Optional[List[MatchResult]], Optional[List[MatchResult]]]:
    """
    Match using BOTH methods and return both result sets.

    Returns:
        Tuple of (simple_results, semantic_results)
        Either can be None if that method is unavailable.
    """
    simple_results = match_transaction_to_notes_simple(transaction, notes, config)
    semantic_results = match_transaction_to_notes_semantic(transaction, notes, config)

    return simple_results, semantic_results


def match_batch_transactions_to_notes(
    transactions: List[Transaction],
    notes: List[CRMNote],
    config: MatchConfig
) -> dict[str, List[MatchResult]]:
    """
    Match multiple transactions against a shared list of CRM notes.

    Returns:
        Dictionary mapping transaction_id to list of MatchResult objects.
    """
    results = {}

    for transaction in transactions:
        matches = match_transaction_to_notes(transaction, notes, config)
        results[transaction.transaction_id] = matches

    return results
