from typing import Optional, List, Dict, Literal
from datetime import date as date_type
from pydantic import BaseModel, Field, ConfigDict


# ============================================================================
# Request Models
# ============================================================================

class Transaction(BaseModel):
    """
    Represents a single financial transaction.
    All fields are required by the backend before sending to microservice.
    """
    transaction_id: str
    client_id: int
    date: date_type
    amount_chf: float
    original_currency: str
    direction: str
    type: str
    counterparty_bank: str
    counterparty_entity: str

    model_config = ConfigDict(json_schema_extra={
        "examples": [
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
        ]
    })


class CRMNote(BaseModel):
    """
    Represents a single CRM note with minimal metadata.
    Content is free-text and unstructured.
    """
    note_index: int
    client_id: int
    date: date_type
    content: str

    model_config = ConfigDict(json_schema_extra={
        "examples": [
            {
                "note_index": 0,
                "client_id": 1,
                "date": "2025-08-20",
                "content": "Client mentioned a planned investment transfer later this week."
            }
        ]
    })



class MatchConfig(BaseModel):
    """
    Configuration options for matching behavior.
    """
    return_top_k: int = Field(default=5, ge=1, description="Maximum number of top matches to return")
    use_llm_refinement: bool = Field(default=False, description="Whether to use LLM for explanation refinement (not yet implemented)")
    scoring_method: Literal["auto", "semantic", "simple", "both"] = Field(
        default="auto",
        description=(
            "Scoring method to use: "
            "'auto' (semantic if available, fallback to simple), "
            "'semantic' (force semantic embeddings), "
            "'simple' (force rule-based matching), "
            "'both' (run both methods and return both results)"
        )
    )


class MatchRequest(BaseModel):
    """
    Request body for single transaction matching.
    POST /v1/match
    """
    transaction: Transaction
    notes: List[CRMNote]
    config: Optional[MatchConfig] = Field(default_factory=MatchConfig)


class BatchMatchRequest(BaseModel):
    """
    Request body for batch transaction matching.
    POST /v1/match/batch
    """
    transactions: List[Transaction]
    notes: List[CRMNote]
    config: Optional[MatchConfig] = Field(default_factory=MatchConfig)

    model_config = ConfigDict(json_schema_extra={
        "examples": [
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
                    "use_llm_refinement": False,
                    "scoring_method": "auto"
                }
            }
        ]
    })



# ============================================================================
# Response Models
# ============================================================================

class MatchResult(BaseModel):
    """
    Represents a single match result between a transaction and a CRM note.
    """
    note_index: int
    score: float = Field(ge=0.0, le=1.0)
    explanation: str


class MatchResponse(BaseModel):
    """
    Response body for single transaction matching.
    Returns top-k matches sorted by score descending.
    """
    matches: List[MatchResult]


class BatchMatchResponse(BaseModel):
    """
    Response body for batch transaction matching.
    Returns a dictionary mapping transaction_id to list of matches.
    """
    results: Dict[str, List[MatchResult]]


class ComparisonMetadata(BaseModel):
    """
    Metadata comparing results from different scoring methods.
    """
    simple_method_available: bool
    semantic_method_available: bool
    top_match_agrees: Optional[bool] = None
    agreement_score: Optional[float] = Field(
        default=None,
        ge=0.0,
        le=1.0,
        description="How much the two methods agree (0=completely different, 1=identical)"
    )


class MatchComparisonResponse(BaseModel):
    """
    Response body for match comparison endpoint.
    Shows results from both scoring methods side-by-side.
    """
    simple_method: Optional[MatchResponse] = None
    semantic_method: Optional[MatchResponse] = None
    comparison: ComparisonMetadata


# ============================================================================
# Legacy Test Models (keep for dummy endpoint)
# ============================================================================

class TestData(BaseModel):
    some_text: Optional[str] = None
    random_number: Optional[str] = None
