"""
Currency Conversion Utilities for AML Transaction Monitoring

Provides functions to convert transaction amounts from various currencies to CHF
using predefined exchange rates.
"""

from decimal import Decimal, InvalidOperation
from typing import Optional
import logging

from utils.constants import EXCHANGE_RATES_TO_CHF

logger = logging.getLogger(__name__)


def convert_to_chf(amount: Decimal, currency: str) -> Optional[Decimal]:
    """
    Convert an amount in any currency to CHF (Swiss Franc).

    Args:
        amount: The amount to convert (as Decimal for precision)
        currency: ISO 4217 currency code (e.g., "USD", "EUR", "CHF")

    Returns:
        Amount in CHF as Decimal, or None if conversion fails

    Examples:
        >>> convert_to_chf(Decimal("100"), "USD")
        Decimal("85.00")

        >>> convert_to_chf(Decimal("100"), "CHF")
        Decimal("100.00")

        >>> convert_to_chf(Decimal("100"), "INVALID")
        None
    """
    if currency is None:
        logger.warning("Currency is None, cannot convert")
        return None

    currency_upper = currency.upper().strip()

    # Already in CHF
    if currency_upper == "CHF":
        return amount

    # Get exchange rate
    rate = EXCHANGE_RATES_TO_CHF.get(currency_upper)
    if rate is None:
        logger.warning(f"No exchange rate found for currency: {currency}")
        return None

    try:
        # Convert to CHF
        chf_amount = amount * rate
        # Round to 2 decimal places (standard for currency)
        return chf_amount.quantize(Decimal("0.01"))
    except (InvalidOperation, TypeError) as e:
        logger.error(f"Error converting {amount} {currency} to CHF: {e}")
        return None


def safe_get_amount_chf(transaction) -> Optional[Decimal]:
    """
    Safely extract and convert transaction amount to CHF.

    This is a convenience function that handles all edge cases:
    - Missing amount field
    - Invalid amount format
    - Missing currency field
    - Unsupported currency

    Args:
        transaction: Transaction model instance with 'amount' and 'currency' attributes

    Returns:
        Amount in CHF as Decimal, or None if conversion fails

    Examples:
        >>> from models.schemas import Transaction
        >>> txn = Transaction(amount=100.50, currency="USD")
        >>> safe_get_amount_chf(txn)
        Decimal("85.43")
    """
    try:
        # Extract amount
        if not hasattr(transaction, 'amount') or transaction.amount is None:
            return None

        amt = Decimal(transaction.amount) if transaction.amount is not None else None
        if amt is None:
            return None

        # Extract currency
        if not hasattr(transaction, 'currency') or not transaction.currency:
            logger.warning(f"Transaction {getattr(transaction, 'transaction_id', 'unknown')} has no currency")
            return None

        # Convert to CHF
        chf_amount = convert_to_chf(amt, transaction.currency)
        return chf_amount

    except (InvalidOperation, TypeError, AttributeError) as e:
        txn_id = getattr(transaction, 'transaction_id', 'unknown')
        logger.error(f"Error extracting amount from transaction {txn_id}: {e}")
        return None
