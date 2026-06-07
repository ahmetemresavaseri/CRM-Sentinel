"""
Semantic embeddings module for transaction-note matching.
Uses sentence-transformers for computing semantic similarity.
"""

import logging
from typing import Optional
import numpy as np

# Configure logging
logger = logging.getLogger(__name__)

# Global model instance (loaded once on startup)
_model = None
_model_name = "all-MiniLM-L6-v2"  # Fast, lightweight, good quality


def get_embedding_model():
    """
    Get or initialize the sentence transformer model.
    Loads model lazily on first access (singleton pattern).

    Returns:
        SentenceTransformer model or None if loading fails
    """
    global _model

    if _model is not None:
        return _model

    try:
        from sentence_transformers import SentenceTransformer

        logger.info(f"Loading embedding model: {_model_name}")
        _model = SentenceTransformer(_model_name)
        logger.info(f"Model loaded successfully: {_model_name}")
        return _model

    except ImportError as e:
        logger.error(f"sentence-transformers not installed: {e}")
        return None
    except Exception as e:
        logger.error(f"Failed to load embedding model: {e}")
        return None


def is_embeddings_available() -> bool:
    """
    Check if embeddings are available (model loaded successfully).

    Returns:
        True if embeddings can be used, False otherwise
    """
    model = get_embedding_model()
    return model is not None


def embed_text(text: str) -> Optional[np.ndarray]:
    """
    Convert text to embedding vector.

    Args:
        text: Input text to embed

    Returns:
        Numpy array of embedding vector, or None if model unavailable
    """
    model = get_embedding_model()

    if model is None:
        return None

    try:
        # encode returns numpy array by default
        embedding = model.encode(text, convert_to_numpy=True)
        return embedding
    except Exception as e:
        logger.error(f"Failed to embed text: {e}")
        return None


def compute_cosine_similarity(embedding1: np.ndarray, embedding2: np.ndarray) -> float:
    """
    Compute cosine similarity between two embedding vectors.

    Args:
        embedding1: First embedding vector
        embedding2: Second embedding vector

    Returns:
        Cosine similarity score between 0 and 1
    """
    # Normalize vectors
    norm1 = np.linalg.norm(embedding1)
    norm2 = np.linalg.norm(embedding2)

    if norm1 == 0 or norm2 == 0:
        return 0.0

    # Compute cosine similarity
    similarity = np.dot(embedding1, embedding2) / (norm1 * norm2)

    # Convert from [-1, 1] to [0, 1] range
    # (though in practice sentence-transformers embeddings rarely go negative)
    similarity = (similarity + 1.0) / 2.0

    return float(np.clip(similarity, 0.0, 1.0))


def compute_text_similarity(text1: str, text2: str) -> Optional[float]:
    """
    Compute semantic similarity between two texts using embeddings.

    Args:
        text1: First text
        text2: Second text

    Returns:
        Similarity score between 0 and 1, or None if embeddings unavailable
    """
    embedding1 = embed_text(text1)
    embedding2 = embed_text(text2)

    if embedding1 is None or embedding2 is None:
        return None

    return compute_cosine_similarity(embedding1, embedding2)


def create_transaction_embedding_text(
    transaction_type: str,
    direction: str,
    amount_chf: float,
    counterparty_entity: str,
    counterparty_bank: str,
    currency: str
) -> str:
    """
    Create a rich text representation of a transaction for embedding.

    This combines multiple fields into a natural language description
    that captures the semantic meaning of the transaction.

    Args:
        transaction_type: Type of transaction (e.g., wire_transfer)
        direction: debit or credit
        amount_chf: Amount in CHF
        counterparty_entity: Entity name
        counterparty_bank: Bank identifier
        currency: Original currency

    Returns:
        Natural language description of transaction
    """
    # Convert transaction type to readable format
    readable_type = transaction_type.replace('_', ' ')

    # Convert direction to action word
    action = "outgoing payment" if direction == "debit" else "incoming payment"

    # Build description
    parts = [
        f"This is a {readable_type}.",
        f"It is an {action}.",
        f"The amount is {amount_chf:.2f} {currency}."
    ]

    if counterparty_entity and counterparty_entity.lower() != "n/a":
        parts.append(f"The counterparty is {counterparty_entity}.")

    if counterparty_bank and counterparty_bank.lower() != "n/a":
        parts.append(f"The bank is {counterparty_bank}.")

    return " ".join(parts)


def create_note_embedding_text(content: str) -> str:
    """
    Prepare note content for embedding.

    Currently just returns the content as-is, but could be enhanced
    to add context or clean the text.

    Args:
        content: Raw note content

    Returns:
        Text ready for embedding
    """
    return content.strip()


# Preload model on module import (optional - can remove if causing issues)
# This makes the first request faster but increases startup time
try:
    # Only preload if running in production (not during import in tests)
    import sys
    if 'pytest' not in sys.modules:
        logger.info("Preloading embedding model...")
        get_embedding_model()
except Exception as e:
    logger.warning(f"Could not preload embedding model: {e}")
