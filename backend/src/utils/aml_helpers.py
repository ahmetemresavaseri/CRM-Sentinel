"""
AML Helper Functions for Transaction Monitoring

This module provides utility functions for AML rules including:
- Time-window analysis (sliding windows)
- Transaction grouping (by client, by month)
- Turnover calculations (total, directional)
- Country risk assessment (FATF list checking)
"""

from datetime import date, timedelta
from typing import List, Dict, Set, Optional, Tuple
from collections import defaultdict
from decimal import Decimal
import logging

from utils.constants import FATF_HIGH_RISK_COUNTRIES
from utils.currency_converter import safe_get_amount_chf

logger = logging.getLogger(__name__)


# ==============================================================================
# COUNTRY RISK ASSESSMENT
# ==============================================================================

def is_high_risk_country(country_code: Optional[str]) -> bool:
    """
    Check if a country code is in the FATF high-risk list.

    Args:
        country_code: ISO 3166-1 alpha-2 country code (e.g., "SY", "IR")

    Returns:
        True if country is high-risk, False otherwise

    Examples:
        >>> is_high_risk_country("SY")  # Syria
        True
        >>> is_high_risk_country("CH")  # Switzerland
        False
        >>> is_high_risk_country(None)
        False
    """
    if country_code is None:
        return False
    return country_code.upper().strip() in FATF_HIGH_RISK_COUNTRIES


def extract_country_from_bank_code(bank_code: Optional[str]) -> Optional[str]:
    """
    Extract country code from bank identifier code.

    Assumes BIC-like format where positions 4-5 contain the ISO country code.
    Example: "GGOCJP03" -> "JP" (positions 4:6)

    Args:
        bank_code: Bank identifier string (e.g., BIC/SWIFT code)

    Returns:
        ISO country code (2 letters) or None if extraction fails

    Examples:
        >>> extract_country_from_bank_code("GGOCJP03")
        'JP'
        >>> extract_country_from_bank_code("CHASUS33")
        'US'
        >>> extract_country_from_bank_code("ABC")
        None
    """
    if not bank_code or len(bank_code) < 6:
        return None

    # Extract positions 4-5 (0-indexed: 4:6)
    potential_country = bank_code[4:6].upper()

    # Validate it looks like a country code (2 alpha characters)
    if len(potential_country) == 2 and potential_country.isalpha():
        return potential_country

    return None


# ==============================================================================
# TRANSACTION GROUPING
# ==============================================================================

def group_transactions_by_client_and_date(transactions: List, sort_by_date: bool = True) -> Dict[str, List]:
    """
    Group transactions by client_id and optionally sort by date.

    Args:
        transactions: List of Transaction objects
        sort_by_date: If True, sort each client's transactions by date ascending

    Returns:
        Dictionary mapping client_id to list of transactions

    Examples:
        >>> txns = [Transaction(client_id="C1", date=date(2025, 1, 1)), ...]
        >>> grouped = group_transactions_by_client_and_date(txns)
        >>> len(grouped["C1"])
        5
    """
    grouped = defaultdict(list)
    for t in transactions:
        grouped[t.client_id].append(t)

    if sort_by_date:
        for client_id in grouped:
            grouped[client_id].sort(key=lambda t: t.date if t.date else date.min)

    return grouped


def group_transactions_by_month(transactions: List) -> Dict[Tuple[int, int], List]:
    """
    Group transactions by calendar month.

    Args:
        transactions: List of Transaction objects

    Returns:
        Dictionary mapping (year, month) tuples to list of transactions

    Examples:
        >>> txns = [Transaction(date=date(2025, 1, 15)), Transaction(date=date(2025, 1, 20))]
        >>> monthly = group_transactions_by_month(txns)
        >>> len(monthly[(2025, 1)])
        2
    """
    grouped = defaultdict(list)
    for t in transactions:
        if t.date is None:
            continue
        key = (t.date.year, t.date.month)
        grouped[key].append(t)

    return grouped


# ==============================================================================
# TIME-WINDOW ANALYSIS
# ==============================================================================

def find_sliding_windows(transactions: List, window_days: int) -> List[List]:
    """
    Find all sliding window periods where transactions fall within window_days.

    This implements a sliding window approach where we check every possible
    window of window_days length. Windows are deduplicated based on their
    transaction ID sets to avoid reporting the same pattern multiple times.

    Args:
        transactions: List of Transaction objects (will be sorted by date internally)
        window_days: Size of window in days

    Returns:
        List of transaction groups, each representing a unique time window

    Examples:
        >>> txns = [t1, t2, t3, ...]  # 10 transactions within 7 days
        >>> windows = find_sliding_windows(txns, 7)
        >>> len(windows)  # Multiple overlapping 7-day windows
        5
    """
    if not transactions:
        return []

    # Sort by date (transactions without dates go to the beginning)
    sorted_txns = sorted(transactions, key=lambda t: t.date if t.date else date.min)

    windows = []

    # For each transaction, create a window starting from that date
    for i, start_txn in enumerate(sorted_txns):
        if start_txn.date is None:
            continue

        window_start = start_txn.date
        window_end = window_start + timedelta(days=window_days)

        # Collect all transactions within this window
        window_txns = []
        for txn in sorted_txns[i:]:
            if txn.date is None:
                continue
            # Window is [start, end) - inclusive start, exclusive end
            if txn.date >= window_start and txn.date < window_end:
                window_txns.append(txn)
            elif txn.date >= window_end:
                break  # No more transactions in this window

        if window_txns:
            windows.append(window_txns)

    # Deduplicate windows based on transaction ID sets
    unique_windows = _deduplicate_windows(windows)

    return unique_windows


def _deduplicate_windows(windows: List[List]) -> List[List]:
    """
    Remove duplicate windows that contain the same set of transactions.

    Args:
        windows: List of transaction lists

    Returns:
        Deduplicated list of transaction lists
    """
    unique_windows = []
    seen_ids_sets = []

    for window in windows:
        window_ids = frozenset(t.transaction_id for t in window)

        # Check if we've seen this exact set of transactions before
        if window_ids not in seen_ids_sets:
            seen_ids_sets.append(window_ids)
            unique_windows.append(window)

    return unique_windows


# ==============================================================================
# TURNOVER CALCULATIONS
# ==============================================================================

def calculate_turnover(transactions: List) -> Decimal:
    """
    Calculate total turnover (sum of absolute amounts in CHF).

    Turnover is defined as the sum of the absolute value of all transaction
    amounts, regardless of direction.

    Args:
        transactions: List of Transaction objects

    Returns:
        Total turnover in CHF as Decimal

    Examples:
        >>> txns = [Transaction(amount=100, currency="USD"), Transaction(amount=-50, currency="EUR")]
        >>> turnover = calculate_turnover(txns)
        >>> turnover >= Decimal("0")
        True
    """
    total = Decimal("0")
    for t in transactions:
        chf_amount = safe_get_amount_chf(t)
        if chf_amount is not None:
            total += abs(chf_amount)
    return total


def calculate_directional_turnover(transactions: List) -> Tuple[Decimal, Decimal]:
    """
    Calculate credit and debit turnover separately.

    Turnover for each direction is the sum of absolute amounts for transactions
    in that direction.

    Args:
        transactions: List of Transaction objects

    Returns:
        Tuple of (credit_turnover, debit_turnover) in CHF

    Examples:
        >>> txns = [
        ...     Transaction(amount=100, currency="USD", direction="Credit"),
        ...     Transaction(amount=50, currency="EUR", direction="Debit")
        ... ]
        >>> credit, debit = calculate_directional_turnover(txns)
        >>> credit > Decimal("0")
        True
        >>> debit > Decimal("0")
        True
    """
    credit_total = Decimal("0")
    debit_total = Decimal("0")

    for t in transactions:
        chf_amount = safe_get_amount_chf(t)
        if chf_amount is None:
            continue

        abs_amount = abs(chf_amount)

        if t.direction and t.direction.upper() == "CREDIT":
            credit_total += abs_amount
        elif t.direction and t.direction.upper() == "DEBIT":
            debit_total += abs_amount
        # If direction is None or other value, skip this transaction

    return credit_total, debit_total
