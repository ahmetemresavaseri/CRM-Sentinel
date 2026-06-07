"""
Scoring functions for transaction-to-note matching.
Includes both simple rule-based and semantic embedding-based methods.
"""

from datetime import date, timedelta
from typing import Set, Optional
import re


def normalize_text(text: str) -> str:
    """
    Normalize text for comparison: lowercase, remove special chars, collapse whitespace.
    """
    text = text.lower()
    text = re.sub(r'[^\w\s]', ' ', text)
    text = re.sub(r'\s+', ' ', text)
    return text.strip()


def extract_keywords(text: str) -> Set[str]:
    """
    Extract meaningful keywords from text.
    Filter out common stop words.
    """
    stop_words = {
        'the', 'a', 'an', 'and', 'or', 'but', 'in', 'on', 'at', 'to', 'for',
        'of', 'with', 'by', 'from', 'up', 'about', 'into', 'through', 'during',
        'is', 'are', 'was', 'were', 'be', 'been', 'being', 'have', 'has', 'had',
        'do', 'does', 'did', 'will', 'would', 'could', 'should', 'may', 'might',
        'this', 'that', 'these', 'those', 'i', 'you', 'he', 'she', 'it', 'we', 'they'
    }

    normalized = normalize_text(text)
    words = normalized.split()
    keywords = {word for word in words if len(word) > 2 and word not in stop_words}
    return keywords


def keyword_overlap_score(text1: str, text2: str) -> float:
    """
    Calculate keyword overlap between two texts.
    Returns score between 0 and 1 based on Jaccard similarity.
    """
    keywords1 = extract_keywords(text1)
    keywords2 = extract_keywords(text2)

    if not keywords1 or not keywords2:
        return 0.0

    intersection = keywords1.intersection(keywords2)
    union = keywords1.union(keywords2)

    return len(intersection) / len(union) if union else 0.0


def date_proximity_score(date1: date, date2: date, max_days: int = 7) -> float:
    """
    Calculate date proximity score.
    Returns 1.0 for same day, decreasing linearly to 0.0 at max_days difference.
    """
    days_diff = abs((date1 - date2).days)

    if days_diff > max_days:
        return 0.0

    return 1.0 - (days_diff / max_days)


def amount_mention_score(amount_chf: float, note_content: str) -> float:
    """
    Check if the note content mentions amounts similar to the transaction amount.
    Returns a score based on whether similar numbers appear in the text.
    """
    # Extract all numbers from note content
    numbers = re.findall(r'\d+(?:[.,]\d+)?', note_content)

    if not numbers:
        return 0.0

    # Normalize numbers (handle both . and , as decimal separators)
    note_amounts = []
    for num_str in numbers:
        num_str = num_str.replace(',', '.')
        try:
            note_amounts.append(float(num_str))
        except ValueError:
            continue

    if not note_amounts:
        return 0.0

    # Check if any amount in note is close to transaction amount (within 10%)
    threshold = amount_chf * 0.1
    for note_amount in note_amounts:
        if abs(note_amount - amount_chf) <= threshold:
            return 0.5  # Moderate boost if amount mentioned

    return 0.0


def direction_relevance_score(direction: str, note_content: str) -> float:
    """
    Check if note content mentions keywords relevant to transaction direction.
    """
    content_lower = note_content.lower()

    if direction == "debit":
        # Outgoing payment keywords
        debit_keywords = ['payment', 'paid', 'expense', 'purchase', 'bought', 'transfer', 'sent', 'outgoing']
        matches = sum(1 for keyword in debit_keywords if keyword in content_lower)
        return min(matches * 0.15, 0.3)  # Max 0.3 boost

    elif direction == "credit":
        # Incoming payment keywords
        credit_keywords = ['received', 'income', 'deposit', 'incoming', 'refund', 'return']
        matches = sum(1 for keyword in credit_keywords if keyword in content_lower)
        return min(matches * 0.15, 0.3)  # Max 0.3 boost

    return 0.0


def counterparty_mention_score(counterparty_entity: str, note_content: str) -> float:
    """
    Check if counterparty entity is mentioned in note content.
    """
    if counterparty_entity.lower() == "n/a":
        return 0.0

    # Split counterparty into words
    counterparty_keywords = extract_keywords(counterparty_entity)
    note_keywords = extract_keywords(note_content)

    if not counterparty_keywords:
        return 0.0

    # Check overlap
    matches = counterparty_keywords.intersection(note_keywords)
    overlap_ratio = len(matches) / len(counterparty_keywords)

    return min(overlap_ratio, 0.4)  # Max 0.4 boost


def compute_simple_match_score(
    transaction_text: str,
    note_content: str,
    transaction_date: date,
    note_date: date,
    amount_chf: float,
    direction: str,
    counterparty_entity: str
) -> float:
    """
    Compute overall match score using weighted combination of signals.

    Returns score between 0 and 1.
    """
    # Weight factors (sum to 1.0)
    KEYWORD_WEIGHT = 0.35
    DATE_WEIGHT = 0.30
    AMOUNT_WEIGHT = 0.10
    DIRECTION_WEIGHT = 0.10
    COUNTERPARTY_WEIGHT = 0.10

    keyword_score = keyword_overlap_score(transaction_text, note_content)
    date_score = date_proximity_score(transaction_date, note_date)
    amount_score = amount_mention_score(amount_chf, note_content)
    direction_score = direction_relevance_score(direction, note_content)
    counterparty_score = counterparty_mention_score(counterparty_entity, note_content)

    total_score = (
        keyword_score * KEYWORD_WEIGHT +
        date_score * DATE_WEIGHT +
        amount_score * AMOUNT_WEIGHT +
        direction_score * DIRECTION_WEIGHT +
        counterparty_score * COUNTERPARTY_WEIGHT
    )

    return min(max(total_score, 0.0), 1.0)  # Clamp to [0, 1]


def generate_explanation(
    score: float,
    transaction_text: str,
    note_content: str,
    transaction_date: date,
    note_date: date
) -> str:
    """
    Generate a human-readable explanation for the match score.
    """
    if score >= 0.7:
        strength = "Strong match"
    elif score >= 0.4:
        strength = "Moderate match"
    elif score >= 0.2:
        strength = "Weak match"
    else:
        strength = "Minimal relevance"

    days_diff = abs((transaction_date - note_date).days)

    # Find common keywords
    trans_keywords = extract_keywords(transaction_text)
    note_keywords = extract_keywords(note_content)
    common_keywords = trans_keywords.intersection(note_keywords)

    explanation_parts = [strength]

    if days_diff == 0:
        explanation_parts.append("same day")
    elif days_diff <= 3:
        explanation_parts.append(f"{days_diff} day(s) apart")
    elif days_diff <= 7:
        explanation_parts.append(f"within a week")
    else:
        explanation_parts.append(f"{days_diff} days apart")

    if common_keywords:
        keyword_sample = list(common_keywords)[:3]
        explanation_parts.append(f"mentions: {', '.join(keyword_sample)}")

    return " - ".join(explanation_parts) + "."


# ============================================================================
# Semantic Scoring (Phase 2 - Using Embeddings)
# ============================================================================

def _extract_amount_from_text(text: str) -> Optional[float]:
    """
    Extract monetary amount from note text.

    Supports formats like:
    - "6.1k", "1.5k" notation
    - "CHF 10,383.25"
    - "approximately CHF 8.0k"

    Returns:
        Extracted amount as float, or None if no amount found
    """
    text_lower = text.lower()

    # Pattern 1: "6.1k", "1.5k" notation (common in quality notes)
    k_match = re.search(r'(\d+\.?\d*)\s*k\s*(?:chf|eur|usd|gbp)?', text_lower)
    if k_match:
        return float(k_match.group(1)) * 1000

    # Pattern 2: Regular numbers with optional commas
    amount_pattern = r'(?:chf|eur|usd|gbp)?\s*(\d+(?:,\d{3})*(?:\.\d+)?)'
    amounts = re.findall(amount_pattern, text_lower)
    if amounts:
        amounts_clean = [float(a.replace(',', '')) for a in amounts]
        return max(amounts_clean)  # Return largest number found

    return None


def _check_transaction_reference(note_content: str, transaction_id: Optional[str]) -> float:
    """
    Check if note contains explicit transaction reference.

    Priority 1: High Impact Rule

    Updated to support multi-transaction references:
    - If note mentions ONLY the current transaction → Strong boost (+0.30)
    - If note mentions current transaction + others → Moderate boost (+0.20)
    - If note mentions ONLY different transactions → VETO (-1.0)

    Args:
        note_content: CRM note text
        transaction_id: Transaction ID to check for

    Returns:
        +0.30 if note mentions ONLY current transaction
        +0.20 if note mentions current transaction among multiple
        -1.0 (VETO) if note mentions other transactions but NOT current one
        0.0 if no reference found
    """
    if not transaction_id:
        return 0.0

    note_lower = note_content.lower()
    tx_id_lower = transaction_id.lower()

    # Find all TR\d{8} patterns
    tx_refs = re.findall(r'tr\d{8}', note_lower)

    if not tx_refs:
        return 0.0  # No reference found

    # Check if current transaction is mentioned
    current_tx_mentioned = tx_id_lower in tx_refs

    if current_tx_mentioned:
        # Current transaction is mentioned
        if len(tx_refs) == 1:
            # ONLY current transaction mentioned → Strong boost
            return 0.30
        else:
            # Current transaction + others mentioned → Moderate boost
            return 0.20
    else:
        # Only other transactions mentioned, NOT current one → VETO
        return -1.0


def _check_entity_exact_match(note_content: str, counterparty_entity: str) -> float:
    """
    Check if counterparty entity is exactly mentioned in note.

    Priority 2: Medium Impact Rule

    Uses substring matching (case-insensitive) to avoid fuzzy matching issues.

    Args:
        note_content: CRM note text
        counterparty_entity: Counterparty entity name

    Returns:
        +0.15 if exact substring match found
        0.0 otherwise
    """
    if not counterparty_entity or counterparty_entity.lower() in ['n/a', 'nan', '']:
        return 0.0

    entity_lower = str(counterparty_entity).lower().strip()
    note_lower = note_content.lower()

    # Exact substring match (case-insensitive)
    if entity_lower in note_lower:
        return 0.15

    return 0.0


def _check_amount_validation(note_content: str, tx_amount: float) -> float:
    """
    Validate amount mentioned in note matches transaction amount.

    Priority 3: Medium Impact Rule

    Args:
        note_content: CRM note text
        tx_amount: Transaction amount in CHF

    Returns:
        +0.10 if amount matches within 10%
        -0.30 if amount differs by more than 50% (penalty)
        0.0 if no amount found or moderate mismatch
    """
    extracted_amount = _extract_amount_from_text(note_content)

    if extracted_amount is None:
        return 0.0  # No amount found in note

    # Calculate similarity: 1 - (absolute difference / transaction amount)
    similarity = 1 - abs(extracted_amount - tx_amount) / tx_amount

    if similarity >= 0.9:  # Within 10%
        return 0.10
    elif similarity < 0.5:  # More than 50% different
        return -0.30

    return 0.0


def _apply_rule_based_boosts(
    base_score: float,
    note_content: str,
    transaction_id: Optional[str],
    counterparty_entity: str,
    amount_chf: float
) -> float:
    """
    Apply conservative rule-based boosts to semantic similarity score.

    Implements three priority rules:
    1. Transaction reference detection (VETO on mismatch)
    2. Exact entity matching
    3. Amount validation with penalties

    Args:
        base_score: Base semantic similarity score (0-1)
        note_content: CRM note text
        transaction_id: Transaction ID
        counterparty_entity: Counterparty entity name
        amount_chf: Transaction amount in CHF

    Returns:
        Boosted score (can be 0.0 if vetoed)
    """
    boosted_score = base_score

    # Priority 1: Transaction reference detection
    tx_ref_boost = _check_transaction_reference(note_content, transaction_id)
    if tx_ref_boost == -1.0:
        # VETO: Note explicitly references a different transaction
        return 0.0

    boosted_score += tx_ref_boost

    # Priority 2: Exact entity matching
    entity_boost = _check_entity_exact_match(note_content, counterparty_entity)
    boosted_score += entity_boost

    # Priority 3: Amount validation
    amount_boost = _check_amount_validation(note_content, amount_chf)
    boosted_score += amount_boost

    return boosted_score


def compute_semantic_match_score(
    semantic_similarity: float,
    transaction_date: date,
    note_date: date,
    amount_chf: float,
    note_content: str,
    direction: str,
    counterparty_entity: str,
    transaction_id: str = None
) -> float:
    """
    Compute overall match score using semantic embeddings combined with other signals.

    This uses semantic similarity as the primary signal, enhanced with
    date proximity and other structured data signals.

    Args:
        semantic_similarity: Pre-computed cosine similarity from embeddings (0-1)
        transaction_date: Transaction date
        note_date: CRM note date
        amount_chf: Transaction amount in CHF
        note_content: Raw note content text
        direction: Transaction direction (debit/credit)
        counterparty_entity: Counterparty entity name
        transaction_id: Transaction ID for reference matching (optional)

    Returns:
        Overall match score between 0 and 1
    """
    # Weight factors (sum to 1.0)
    SEMANTIC_WEIGHT = 0.60  # Primary signal
    DATE_WEIGHT = 0.25
    AMOUNT_WEIGHT = 0.05
    DIRECTION_WEIGHT = 0.05
    COUNTERPARTY_WEIGHT = 0.05

    # Use existing helper functions for secondary signals
    date_score = date_proximity_score(transaction_date, note_date)
    amount_score = amount_mention_score(amount_chf, note_content)
    direction_score = direction_relevance_score(direction, note_content)
    counterparty_score = counterparty_mention_score(counterparty_entity, note_content)

    total_score = (
        semantic_similarity * SEMANTIC_WEIGHT +
        date_score * DATE_WEIGHT +
        amount_score * AMOUNT_WEIGHT +
        direction_score * DIRECTION_WEIGHT +
        counterparty_score * COUNTERPARTY_WEIGHT
    )

    # Apply conservative rule-based boosts
    boosted_score = _apply_rule_based_boosts(
        base_score=total_score,
        note_content=note_content,
        transaction_id=transaction_id,
        counterparty_entity=counterparty_entity,
        amount_chf=amount_chf
    )

    return min(max(boosted_score, 0.0), 1.0)  # Clamp to [0, 1]


def generate_semantic_explanation(
    score: float,
    semantic_similarity: float,
    transaction_date: date,
    note_date: date,
    note_content: str
) -> str:
    """
    Generate explanation for semantic-based match.

    Args:
        score: Overall match score
        semantic_similarity: Semantic similarity component
        transaction_date: Transaction date
        note_date: Note date
        note_content: Note content (for extracting key phrases)

    Returns:
        Human-readable explanation
    """
    if score >= 0.7:
        strength = "Strong semantic match"
    elif score >= 0.4:
        strength = "Moderate semantic match"
    elif score >= 0.2:
        strength = "Weak semantic match"
    else:
        strength = "Low semantic relevance"

    days_diff = abs((transaction_date - note_date).days)

    explanation_parts = [strength]

    # Add semantic similarity info
    if semantic_similarity >= 0.8:
        explanation_parts.append(f"very high similarity ({semantic_similarity:.2f})")
    elif semantic_similarity >= 0.6:
        explanation_parts.append(f"high similarity ({semantic_similarity:.2f})")
    elif semantic_similarity >= 0.4:
        explanation_parts.append(f"moderate similarity ({semantic_similarity:.2f})")

    # Add date context
    if days_diff == 0:
        explanation_parts.append("same day")
    elif days_diff <= 3:
        explanation_parts.append(f"{days_diff} day(s) apart")
    elif days_diff <= 7:
        explanation_parts.append(f"within a week")
    else:
        explanation_parts.append(f"{days_diff} days apart")

    return " - ".join(explanation_parts) + "."
