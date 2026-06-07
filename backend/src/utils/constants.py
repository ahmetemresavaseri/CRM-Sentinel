"""
AML Transaction Monitoring Constants

This module contains all configuration constants for AML rules including:
- FATF high-risk country lists
- Exchange rates for currency conversion
- Rule-specific thresholds

Last updated: 2025-12-14
"""

from decimal import Decimal
from typing import Dict, Set

# ==============================================================================
# EXCHANGE RATES TO CHF (Swiss Franc)
# ==============================================================================
# These rates should be updated periodically (e.g., monthly) based on official rates
# Source: Swiss National Bank / ECB
# Last rate update: 2025-12-14

EXCHANGE_RATES_TO_CHF: Dict[str, Decimal] = {
    "CHF": Decimal("1.0"),       # Swiss Franc (base currency)
    "EUR": Decimal("0.93"),      # Euro
    "USD": Decimal("0.85"),      # US Dollar
    "GBP": Decimal("1.08"),      # British Pound
    "JPY": Decimal("0.0056"),    # Japanese Yen
    "CNY": Decimal("0.12"),      # Chinese Yuan
    "AUD": Decimal("0.54"),      # Australian Dollar
    "CAD": Decimal("0.60"),      # Canadian Dollar
    "SGD": Decimal("0.63"),      # Singapore Dollar
    "HKD": Decimal("0.11"),      # Hong Kong Dollar
    "SEK": Decimal("0.08"),      # Swedish Krona
    "NOK": Decimal("0.077"),     # Norwegian Krone
    "DKK": Decimal("0.125"),     # Danish Krone
    "PLN": Decimal("0.21"),      # Polish Zloty
    "CZK": Decimal("0.036"),     # Czech Koruna
    "HUF": Decimal("0.0024"),    # Hungarian Forint
    "RUB": Decimal("0.0085"),    # Russian Ruble
    "TRY": Decimal("0.025"),     # Turkish Lira
    "BRL": Decimal("0.14"),      # Brazilian Real
    "MXN": Decimal("0.042"),     # Mexican Peso
    "INR": Decimal("0.010"),     # Indian Rupee
    "ZAR": Decimal("0.046"),     # South African Rand
    "AED": Decimal("0.23"),      # UAE Dirham
    "SAR": Decimal("0.23"),      # Saudi Riyal
    "THB": Decimal("0.024"),     # Thai Baht
    "MYR": Decimal("0.19"),      # Malaysian Ringgit
    "IDR": Decimal("0.000053"),  # Indonesian Rupiah
    "PHP": Decimal("0.015"),     # Philippine Peso
    "KRW": Decimal("0.00063"),   # South Korean Won
    "NZD": Decimal("0.50"),      # New Zealand Dollar
}

# ==============================================================================
# FATF HIGH-RISK JURISDICTIONS
# ==============================================================================
# Source: FATF Public Statement on High-Risk Jurisdictions
# URL: https://www.fatf-gafi.org/en/publications/High-risk-and-other-monitored-jurisdictions.html
# Last updated: 2025-12-14
#
# This list includes:
# 1. FATF Blacklist (Call for Action) - Countries with significant strategic deficiencies
# 2. FATF Greylist (Increased Monitoring) - Countries under increased monitoring

FATF_HIGH_RISK_COUNTRIES: Set[str] = {
    # FATF Blacklist - Call for Action (as of Dec 2025)
    "KP",  # North Korea (Democratic People's Republic of Korea)
    "IR",  # Iran
    "MM",  # Myanmar (Burma)

    # FATF Greylist - Increased Monitoring (as of Dec 2025)
    "SY",  # Syria
    "YE",  # Yemen
    "PK",  # Pakistan
    "CU",  # Cuba
    "ZW",  # Zimbabwe
    "AL",  # Albania
    "BF",  # Burkina Faso
    "KH",  # Cambodia
    "CM",  # Cameroon
    "HR",  # Croatia
    "HT",  # Haiti
    "JM",  # Jamaica
    "ML",  # Mali
    "MZ",  # Mozambique
    "NG",  # Nigeria
    "PH",  # Philippines
    "SN",  # Senegal
    "SS",  # South Sudan
    "TZ",  # Tanzania
    "TR",  # Turkey
    "UG",  # Uganda
    "VN",  # Vietnam
    "VE",  # Venezuela

    # Additional high-risk countries for AML purposes
    "AF",  # Afghanistan
    "BY",  # Belarus
}

# ==============================================================================
# AML RULE THRESHOLDS
# ==============================================================================
# NOTE: These are DEMO-OPTIMIZED thresholds to showcase the alert system.
# Production thresholds would be higher (see ALERTS_REDESIGN_PLAN.md for details)

# Large Value Transaction Rule
THRESHOLD_LARGE_VALUE = Decimal("40000")  # CHF 40,000 (Demo: lowered from 100,000)

# High-Risk Jurisdiction Rule
THRESHOLD_HIGH_RISK_JURISDICTION = Decimal("20000")  # CHF 20,000 (Demo: raised for focused demo alerts)

# Smurfing (Structuring) Rule
THRESHOLD_SMURFING_AMOUNT = Decimal("15000")  # CHF 15,000 (Demo: raised from 10,000)
THRESHOLD_SMURFING_COUNT = 8  # Minimum number of transactions (Demo: lowered from 10)
THRESHOLD_SMURFING_DAYS = 7  # Time window in days

# Pass-Through Rule
THRESHOLD_PASS_THROUGH_TURNOVER = Decimal("30000")  # CHF 30,000 (Demo: lowered from 50,000)
THRESHOLD_PASS_THROUGH_DAYS = 7  # Time window in days
THRESHOLD_PASS_THROUGH_SIMILARITY = Decimal("0.15")  # 15% tolerance (Demo: raised from 10%)

# Unusual Transaction Pattern Rule
THRESHOLD_UNUSUAL_PATTERN_CURRENT = Decimal("40000")  # CHF 40,000 (Demo: lowered from 100,000)
THRESHOLD_UNUSUAL_PATTERN_INCREASE = Decimal("1.3")  # 130% (1.3x = 30% increase, Demo: lowered from 50%)
THRESHOLD_UNUSUAL_PATTERN_LOOKBACK_MONTHS = 6  # Number of historical months to compare
