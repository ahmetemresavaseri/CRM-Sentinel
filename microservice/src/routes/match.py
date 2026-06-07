"""
Matching endpoints for the CRM Sentinel microservice.
"""

from fastapi import APIRouter

from models.schemas import (
    MatchRequest,
    MatchResponse,
    BatchMatchRequest,
    BatchMatchResponse,
    MatchComparisonResponse,
    ComparisonMetadata
)
from logic.pipeline import (
    match_transaction_to_notes,
    match_batch_transactions_to_notes,
    match_transaction_to_notes_both
)

router = APIRouter(tags=["Matching"])


@router.post("/match", response_model=MatchResponse)
async def match_single_transaction(request: MatchRequest):
    """
    Match a single transaction against a list of CRM notes.

    This endpoint computes semantic similarity scores between one transaction
    and a set of CRM notes. The backend is responsible for filtering notes
    by client_id and date window before calling this endpoint.

    **Request:**
    - `transaction`: Transaction details (amount, date, counterparty, etc.)
    - `notes`: List of CRM notes with minimal metadata (client_id, date, content)
    - `config`: Optional configuration (top_k results, LLM refinement)

    **Response:**
    - `matches`: List of match results sorted by score descending
    - Each match contains: note_index, score (0-1), explanation

    **Example:**
    ```json
    {
      "transaction": {
        "transaction_id": "TR00000001",
        "client_id": 1,
        "date": "2025-08-26",
        "amount_chf": 5065.35,
        "original_currency": "GBP",
        "direction": "debit",
        "type": "wire_transfer",
        "counterparty_bank": "GGOCJP03",
        "counterparty_entity": "International Investments"
      },
      "notes": [
        {
          "note_index": 0,
          "client_id": 1,
          "date": "2025-08-20",
          "content": "Client mentioned a planned investment transfer later this week."
        }
      ],
      "config": {
        "return_top_k": 5,
        "use_llm_refinement": false
      }
    }
    ```
    """
    matches = match_transaction_to_notes(
        transaction=request.transaction,
        notes=request.notes,
        config=request.config
    )

    return MatchResponse(matches=matches)


@router.post("/match/batch", response_model=BatchMatchResponse)
async def match_batch_transactions(request: BatchMatchRequest):
    """
    Match multiple transactions against a shared list of CRM notes.

    This endpoint processes multiple transactions in a single request,
    computing match scores for each transaction independently against
    the provided notes.

    **Request:**
    - `transactions`: List of transactions to match
    - `notes`: Shared list of CRM notes
    - `config`: Optional configuration (top_k results, LLM refinement)

    **Response:**
    - `results`: Dictionary mapping transaction_id to list of matches
    - Each match contains: note_index, score (0-1), explanation

    **Example:**
    ```json
    {
      "transactions": [
        {
          "transaction_id": "TR00000001",
          "client_id": 1,
          "date": "2025-08-26",
          "amount_chf": 5065.35,
          "original_currency": "GBP",
          "direction": "debit",
          "type": "wire_transfer",
          "counterparty_bank": "GGOCJP03",
          "counterparty_entity": "International Investments"
        }
      ],
      "notes": [
        {
          "note_index": 0,
          "client_id": 1,
          "date": "2025-08-20",
          "content": "Client mentioned a planned investment transfer later this week."
        }
      ],
      "config": {
        "return_top_k": 3,
        "use_llm_refinement": false
      }
    }
    ```
    """
    results = match_batch_transactions_to_notes(
        transactions=request.transactions,
        notes=request.notes,
        config=request.config
    )

    return BatchMatchResponse(results=results)


@router.post("/match/compare", response_model=MatchComparisonResponse)
async def compare_matching_methods(request: MatchRequest):
    """
    Compare simple and semantic matching methods side-by-side.

    This endpoint runs BOTH scoring methods (rule-based and semantic)
    on the same transaction and notes, allowing you to see how they
    differ and which performs better.

    **Use Case:** Testing and evaluating matching quality improvements.

    **Request:**
    - Same as `/match` endpoint
    - `scoring_method` in config is ignored (both methods always run)

    **Response:**
    - `simple_method`: Results from rule-based matching (Phase 1)
    - `semantic_method`: Results from semantic embeddings (Phase 2), or null if unavailable
    - `comparison`: Metadata showing how much the methods agree

    **Comparison Metrics:**
    - `simple_method_available`: Whether simple method ran
    - `semantic_method_available`: Whether semantic method ran
    - `top_match_agrees`: Whether both methods picked the same top match
    - `agreement_score`: Overlap in top-k results (0=completely different, 1=identical)

    **Example:**
    ```json
    {
      "transaction": {
        "transaction_id": "TR00000001",
        "client_id": 1,
        "date": "2025-08-26",
        "amount_chf": 5065.35,
        "original_currency": "GBP",
        "direction": "debit",
        "type": "wire_transfer",
        "counterparty_bank": "GGOCJP03",
        "counterparty_entity": "International Investments"
      },
      "notes": [
        {
          "note_index": 0,
          "client_id": 1,
          "date": "2025-08-20",
          "content": "Client mentioned a planned investment transfer later this week."
        },
        {
          "note_index": 1,
          "client_id": 1,
          "date": "2025-08-25",
          "content": "Client wants to allocate capital to portfolio."
        }
      ]
    }
    ```

    **Example Response:**
    ```json
    {
      "simple_method": {
        "matches": [
          {"note_index": 0, "score": 0.35, "explanation": "Weak match - mentions: transfer"}
        ]
      },
      "semantic_method": {
        "matches": [
          {"note_index": 1, "score": 0.78, "explanation": "Strong semantic match - high similarity (0.82)"}
        ]
      },
      "comparison": {
        "simple_method_available": true,
        "semantic_method_available": true,
        "top_match_agrees": false,
        "agreement_score": 0.0
      }
    }
    ```

    This shows semantic matching picked a different (better) top match than rule-based matching.
    """
    # Run both methods
    simple_results, semantic_results = match_transaction_to_notes_both(
        transaction=request.transaction,
        notes=request.notes,
        config=request.config
    )

    # Calculate comparison metrics
    simple_available = simple_results is not None
    semantic_available = semantic_results is not None

    top_match_agrees = None
    agreement_score = None

    if simple_available and semantic_available and simple_results and semantic_results:
        # Check if top matches agree
        top_match_agrees = simple_results[0].note_index == semantic_results[0].note_index

        # Calculate agreement score (Jaccard similarity of top-k note indices)
        simple_indices = {r.note_index for r in simple_results}
        semantic_indices = {r.note_index for r in semantic_results}

        intersection = simple_indices.intersection(semantic_indices)
        union = simple_indices.union(semantic_indices)

        agreement_score = len(intersection) / len(union) if union else 0.0

    # Build response
    comparison_metadata = ComparisonMetadata(
        simple_method_available=simple_available,
        semantic_method_available=semantic_available,
        top_match_agrees=top_match_agrees,
        agreement_score=agreement_score
    )

    return MatchComparisonResponse(
        simple_method=MatchResponse(matches=simple_results) if simple_available else None,
        semantic_method=MatchResponse(matches=semantic_results) if semantic_available else None,
        comparison=comparison_metadata
    )
