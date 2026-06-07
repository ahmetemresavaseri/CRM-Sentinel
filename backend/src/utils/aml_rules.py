"""
AML Rule Engine

This module implements the 5 AML rules for CRM Sentinel:
1. Large Value Transactions (>= 100,000 CHF)
2. High-Risk Client Transactions (high-risk rating + >= 10,000 CHF)
3. Smurfing Detection (10+ transactions < 10,000 CHF in 7 days)
4. Pass-Through Activity (similar credit/debit amounts >= 50,000 CHF)
5. Unusual Transaction Patterns (monthly >= 100,000 CHF, 50% above 6-month avg)

Each rule function returns a list of alert data dictionaries ready for database insertion.
"""

from datetime import date, timedelta
from typing import List, Dict, Any, Optional
from decimal import Decimal
from collections import defaultdict
import logging
import uuid

from utils.currency_converter import safe_get_amount_chf
from utils.constants import (
    THRESHOLD_LARGE_VALUE,
    THRESHOLD_HIGH_RISK_JURISDICTION,
    THRESHOLD_SMURFING_AMOUNT,
    THRESHOLD_SMURFING_COUNT,
    THRESHOLD_SMURFING_DAYS,
    THRESHOLD_PASS_THROUGH_TURNOVER,
    THRESHOLD_PASS_THROUGH_DAYS,
    THRESHOLD_PASS_THROUGH_SIMILARITY,
    THRESHOLD_UNUSUAL_PATTERN_CURRENT,
    THRESHOLD_UNUSUAL_PATTERN_INCREASE,
)

logger = logging.getLogger(__name__)

# Rule version constant (increment when rule logic changes)
RULE_VERSION = "1.0"


# ==============================================================================
# RULE 1: LARGE VALUE TRANSACTIONS
# ==============================================================================

def evaluate_large_value_transactions(
    transactions: List,
    threshold_chf: Decimal = THRESHOLD_LARGE_VALUE
) -> List[Dict[str, Any]]:
    """
    Rule 1: Detect all transactions >= 100,000 CHF.

    Creates one alert per transaction (no time window, no deduplication needed).
    Alerts will be auto-cleared later if sufficient supporting documentation exists.

    Args:
        transactions: List of all Transaction objects to evaluate
        threshold_chf: Threshold in CHF (default: 100,000)

    Returns:
        List of alert dictionaries ready for database insertion
    """
    alerts = []

    for txn in transactions:
        amount_chf = safe_get_amount_chf(txn)
        if amount_chf is None:
            continue

        if abs(amount_chf) >= threshold_chf:
            alert_data = {
                "id": f"AL{uuid.uuid4().hex[:8].upper()}",
                "client_id": txn.client_id,
                "rule_name": "large_value_transaction",
                "rule_version": RULE_VERSION,
                "rule_details": {
                    "threshold_chf": str(threshold_chf),
                    "transaction_amount_chf": str(abs(amount_chf)),
                    "original_currency": txn.currency,
                    "original_amount": str(txn.amount) if txn.amount else None,
                },
                "evaluation_window_start": None,
                "evaluation_window_end": None,
                "direction": None,
                "is_open": True,
                "matched_transaction_count": 0,
                "total_transaction_count": 1,
                "transaction_ids": [txn.transaction_id],
            }
            alerts.append(alert_data)

    return alerts


# ==============================================================================
# RULE 2: HIGH-RISK CLIENT TRANSACTIONS
# ==============================================================================

def evaluate_high_risk_client_transactions(
    transactions: List,
    clients_by_id: Dict[str, Any],
    threshold_chf: Decimal = THRESHOLD_HIGH_RISK_JURISDICTION
) -> List[Dict[str, Any]]:
    """
    Rule 2: Detect all transactions >= 10,000 CHF from high-risk clients.

    High-risk is determined by client_risk_rating field (e.g., "High", "CRITICAL").
    Creates one alert per transaction.
    Alerts will be auto-cleared later if sufficient supporting documentation exists.

    Args:
        transactions: List of all Transaction objects to evaluate
        clients_by_id: Dictionary mapping client_id to Client objects
        threshold_chf: Threshold in CHF (default: 10,000)

    Returns:
        List of alert dictionaries ready for database insertion
    """
    alerts = []

    for txn in transactions:
        # Check if client is high-risk
        client = clients_by_id.get(txn.client_id)
        if not client:
            continue

        client_risk = (client.client_risk_rating or "").strip().upper()
        if client_risk not in ["HIGH", "CRITICAL"]:
            continue

        # Check transaction amount
        amount_chf = safe_get_amount_chf(txn)
        if amount_chf is None:
            continue

        if abs(amount_chf) >= threshold_chf:
            alert_data = {
                "id": f"AL{uuid.uuid4().hex[:8].upper()}",
                "client_id": txn.client_id,
                "rule_name": "high_risk_client_transaction",
                "rule_version": RULE_VERSION,
                "rule_details": {
                    "threshold_chf": str(threshold_chf),
                    "transaction_amount_chf": str(abs(amount_chf)),
                    "client_risk_rating": client_risk,
                    "original_currency": txn.currency,
                    "original_amount": str(txn.amount) if txn.amount else None,
                },
                "evaluation_window_start": None,
                "evaluation_window_end": None,
                "direction": None,
                "is_open": True,
                "matched_transaction_count": 0,
                "total_transaction_count": 1,
                "transaction_ids": [txn.transaction_id],
            }
            alerts.append(alert_data)

    return alerts


# ==============================================================================
# RULE 3: SMURFING DETECTION
# ==============================================================================

def evaluate_smurfing_detection(
    transactions: List,
    window_days: int = THRESHOLD_SMURFING_DAYS,
    min_transaction_count: int = THRESHOLD_SMURFING_COUNT,
    max_transaction_amount_chf: Decimal = THRESHOLD_SMURFING_AMOUNT
) -> List[Dict[str, Any]]:
    """
    Rule 3: Detect smurfing patterns (10+ small transactions < 10,000 CHF in 7 days).

    Separate evaluation by direction (credit vs debit).
    Creates one alert per (client, direction, time window).
    Alerts will be auto-cleared later if sufficient supporting documentation exists.

    Args:
        transactions: List of all Transaction objects to evaluate
        window_days: Sliding window size (default: 7 days)
        min_transaction_count: Minimum transactions to trigger (default: 10)
        max_transaction_amount_chf: Maximum amount per transaction (default: 10,000 CHF)

    Returns:
        List of alert dictionaries ready for database insertion
    """
    alerts = []

    # Group by client and direction
    by_client_direction = defaultdict(list)
    for txn in transactions:
        if not txn.date or not txn.direction:
            continue

        amount_chf = safe_get_amount_chf(txn)
        if amount_chf is None:
            continue

        # Only include transactions < threshold
        if abs(amount_chf) < max_transaction_amount_chf:
            direction = txn.direction.strip().lower()
            key = (txn.client_id, direction)
            by_client_direction[key].append(txn)

    # Evaluate each client-direction group
    for (client_id, direction), transactions in by_client_direction.items():
        # Sort by date
        transactions.sort(key=lambda t: t.date)

        # Find sliding windows
        windows = _find_sliding_windows(transactions, window_days)

        for window_txns in windows:
            if len(window_txns) >= min_transaction_count:
                # Calculate total amount
                total_amount = sum(abs(safe_get_amount_chf(t)) for t in window_txns if safe_get_amount_chf(t) is not None)

                window_start = min(t.date for t in window_txns)
                window_end = max(t.date for t in window_txns)

                alert_data = {
                    "id": f"AL{uuid.uuid4().hex[:8].upper()}",
                    "client_id": client_id,
                    "rule_name": "smurfing_detection",
                    "rule_version": RULE_VERSION,
                    "rule_details": {
                        "window_days": window_days,
                        "transaction_count": len(window_txns),
                        "total_amount_chf": str(total_amount),
                        "max_transaction_amount_chf": str(max_transaction_amount_chf),
                        "direction": direction,
                    },
                    "evaluation_window_start": window_start,
                    "evaluation_window_end": window_end,
                    "direction": direction,
                    "is_open": True,
                    "matched_transaction_count": 0,
                    "total_transaction_count": len(window_txns),
                    "transaction_ids": [t.transaction_id for t in window_txns],
                }
                alerts.append(alert_data)

    return alerts


# ==============================================================================
# RULE 4: PASS-THROUGH ACTIVITY
# ==============================================================================

def evaluate_pass_through_activity(
    transactions: List,
    window_days: int = THRESHOLD_PASS_THROUGH_DAYS,
    threshold_chf: Decimal = THRESHOLD_PASS_THROUGH_TURNOVER,
    similarity_tolerance: Decimal = THRESHOLD_PASS_THROUGH_SIMILARITY,
    min_transactions_per_side: int = 2
) -> List[Dict[str, Any]]:
    """
    Rule 4: Detect pass-through activity (similar credit/debit amounts in 7 days).

    Looks for windows where:
    - Total credit >= 50,000 CHF
    - Total debit >= 50,000 CHF
    - Amounts within 10% of each other
    - At least 2 transactions on each side

    Creates one alert per (client, time window).
    Alerts will be auto-cleared later if sufficient supporting documentation exists.

    Args:
        transactions: List of all Transaction objects to evaluate
        window_days: Sliding window size (default: 7 days)
        threshold_chf: Minimum total per direction (default: 50,000 CHF)
        similarity_tolerance: Tolerance for amount matching (default: 0.10 = 10%)
        min_transactions_per_side: Minimum transactions per direction (default: 2)

    Returns:
        List of alert dictionaries ready for database insertion
    """
    alerts = []

    # Group by client
    by_client = defaultdict(list)
    for txn in transactions:
        if txn.date and txn.direction:
            by_client[txn.client_id].append(txn)

    # Evaluate each client
    for client_id, transactions in by_client.items():
        # Sort by date
        transactions.sort(key=lambda t: t.date)

        # Find sliding windows
        windows = _find_sliding_windows(transactions, window_days)

        for window_txns in windows:
            # Split by direction
            credits = [t for t in window_txns if t.direction and t.direction.strip().lower() == "credit"]
            debits = [t for t in window_txns if t.direction and t.direction.strip().lower() == "debit"]

            # Check minimum transaction count
            if len(credits) < min_transactions_per_side or len(debits) < min_transactions_per_side:
                continue

            # Calculate totals
            credit_total = sum(abs(safe_get_amount_chf(t)) for t in credits if safe_get_amount_chf(t) is not None)
            debit_total = sum(abs(safe_get_amount_chf(t)) for t in debits if safe_get_amount_chf(t) is not None)

            # Check threshold
            if credit_total < threshold_chf or debit_total < threshold_chf:
                continue

            # Check similarity (within tolerance)
            diff = abs(credit_total - debit_total)
            avg = (credit_total + debit_total) / 2
            if diff / avg > similarity_tolerance:
                continue

            window_start = min(t.date for t in window_txns)
            window_end = max(t.date for t in window_txns)

            alert_data = {
                "id": f"AL{uuid.uuid4().hex[:8].upper()}",
                "client_id": client_id,
                "rule_name": "pass_through_activity",
                "rule_version": RULE_VERSION,
                "rule_details": {
                    "window_days": window_days,
                    "credit_total_chf": str(credit_total),
                    "debit_total_chf": str(debit_total),
                    "credit_count": len(credits),
                    "debit_count": len(debits),
                    "difference_chf": str(diff),
                    "similarity_tolerance": str(similarity_tolerance),
                },
                "evaluation_window_start": window_start,
                "evaluation_window_end": window_end,
                "direction": None,  # Pass-through doesn't have a single direction
                "is_open": True,
                "matched_transaction_count": 0,
                "total_transaction_count": len(window_txns),
                "transaction_ids": [t.transaction_id for t in window_txns],
            }
            alerts.append(alert_data)

    return alerts


# ==============================================================================
# RULE 5: UNUSUAL TRANSACTION PATTERNS
# ==============================================================================

def evaluate_unusual_transaction_patterns(
    transactions: List,
    threshold_chf: Decimal = THRESHOLD_UNUSUAL_PATTERN_CURRENT,
    increase_ratio: Decimal = THRESHOLD_UNUSUAL_PATTERN_INCREASE,
    min_monthly_transactions: int = 5,
    lookback_months: int = 6
) -> List[Dict[str, Any]]:
    """
    Rule 5: Detect unusual patterns (monthly >= 100,000 CHF, 50% above 6-month avg).

    Separate evaluation by direction (credit vs debit).
    Only evaluates months with >= 5 transactions.

    Creates one alert per (client, direction, month).
    Alerts will be auto-cleared later if sufficient supporting documentation exists.

    Args:
        transactions: List of all Transaction objects to evaluate
        threshold_chf: Minimum monthly total (default: 100,000 CHF)
        increase_ratio: Minimum increase ratio vs average (default: 1.5 = 50% increase)
        min_monthly_transactions: Minimum transactions per month (default: 5)
        lookback_months: Number of historical months for average (default: 6)

    Returns:
        List of alert dictionaries ready for database insertion
    """
    alerts = []

    # Group by client and direction
    by_client_direction = defaultdict(list)
    for txn in transactions:
        if txn.date and txn.direction:
            direction = txn.direction.strip().lower()
            key = (txn.client_id, direction)
            by_client_direction[key].append(txn)

    # Evaluate each client-direction group
    for (client_id, direction), transactions in by_client_direction.items():
        # Group by month
        by_month = defaultdict(list)
        for txn in transactions:
            month_key = (txn.date.year, txn.date.month)
            by_month[month_key].append(txn)

        # Sort months chronologically
        sorted_months = sorted(by_month.keys())

        if len(sorted_months) < 2:
            continue  # Need at least 2 months to compare

        # Evaluate each month (except the first one, as it has no history)
        for i in range(1, len(sorted_months)):
            current_month = sorted_months[i]
            current_txns = by_month[current_month]

            # Check minimum transaction count
            if len(current_txns) < min_monthly_transactions:
                continue

            # Calculate current month total
            current_total = sum(abs(safe_get_amount_chf(t)) for t in current_txns if safe_get_amount_chf(t) is not None)

            # Check threshold
            if current_total < threshold_chf:
                continue

            # Calculate historical average (up to lookback_months)
            lookback_start = max(0, i - lookback_months)
            historical_months = sorted_months[lookback_start:i]

            historical_totals = []
            for month_key in historical_months:
                month_txns = by_month[month_key]
                # Only include months with sufficient transactions
                if len(month_txns) >= min_monthly_transactions:
                    month_total = sum(abs(safe_get_amount_chf(t)) for t in month_txns if safe_get_amount_chf(t) is not None)
                    historical_totals.append(month_total)

            # Need at least one historical month for comparison
            if not historical_totals:
                continue

            historical_avg = sum(historical_totals) / len(historical_totals)

            # Check if current month is significantly higher
            if current_total >= historical_avg * increase_ratio:
                # Calculate window dates
                year, month = current_month
                window_start = date(year, month, 1)
                # Calculate last day of month
                if month == 12:
                    window_end = date(year + 1, 1, 1) - timedelta(days=1)
                else:
                    window_end = date(year, month + 1, 1) - timedelta(days=1)

                alert_data = {
                    "id": f"AL{uuid.uuid4().hex[:8].upper()}",
                    "client_id": client_id,
                    "rule_name": "unusual_transaction_pattern",
                    "rule_version": RULE_VERSION,
                    "rule_details": {
                        "month": f"{year}-{month:02d}",
                        "current_total_chf": str(current_total),
                        "historical_average_chf": str(historical_avg),
                        "increase_ratio": str(current_total / historical_avg),
                        "threshold_ratio": str(increase_ratio),
                        "transaction_count": len(current_txns),
                        "historical_months_count": len(historical_totals),
                        "direction": direction,
                    },
                    "evaluation_window_start": window_start,
                    "evaluation_window_end": window_end,
                    "direction": direction,
                    "is_open": True,
                    "matched_transaction_count": 0,
                    "total_transaction_count": len(current_txns),
                    "transaction_ids": [t.transaction_id for t in current_txns],
                }
                alerts.append(alert_data)

    return alerts


# ==============================================================================
# HELPER FUNCTIONS
# ==============================================================================

def _find_sliding_windows(transactions: List, window_days: int) -> List[List]:
    """
    Find all unique sliding windows of transactions within window_days.

    Args:
        transactions: List of Transaction objects (must be sorted by date)
        window_days: Window size in days

    Returns:
        List of transaction lists, each representing a unique window
    """
    if not transactions:
        return []

    windows = []
    seen_sets = set()

    for i, start_txn in enumerate(transactions):
        if not start_txn.date:
            continue

        window_start = start_txn.date
        window_end = window_start + timedelta(days=window_days)

        # Collect transactions in this window
        window_txns = []
        for txn in transactions[i:]:
            if not txn.date:
                continue
            if txn.date >= window_start and txn.date < window_end:
                window_txns.append(txn)
            elif txn.date >= window_end:
                break

        if window_txns:
            # Deduplicate based on transaction ID set
            txn_ids = frozenset(t.transaction_id for t in window_txns)
            if txn_ids not in seen_sets:
                seen_sets.add(txn_ids)
                windows.append(window_txns)

    return windows
