# Demo Rule Threshold Adjustments

**Purpose:** Adjust AML rule thresholds to generate representative demo alerts with current dataset

**Date:** 2025-12-16
**Dataset:** 1,287 transactions, 1,119 unmatched (after 0.81 confidence threshold)

---

## Current Situation

The production thresholds are designed for real-world AML compliance and are quite conservative. With the current synthetic dataset:

- **Largest unmatched transaction:** 58,883.49 CHF (converted)
- **High-risk clients:** None in dataset
- **Smurfing patterns:** Limited with 10+ transaction requirement
- **Result:** Zero alerts generated with production thresholds

For demo purposes, we need to lower thresholds to showcase the alert system functionality.

---

## Recommended Threshold Adjustments

### Files to Modify

**Primary file:** [backend/src/utils/constants.py](backend/src/utils/constants.py)

```python
# ==============================================================================
# AML RULE THRESHOLDS
# ==============================================================================

# Large Value Transaction Rule
THRESHOLD_LARGE_VALUE = Decimal("40000")  # Changed from 100,000 CHF

# High-Risk Jurisdiction Rule
THRESHOLD_HIGH_RISK_JURISDICTION = Decimal("5000")  # Changed from 10,000 CHF

# Smurfing (Structuring) Rule
THRESHOLD_SMURFING_AMOUNT = Decimal("15000")  # Changed from 10,000 CHF
THRESHOLD_SMURFING_COUNT = 8  # Changed from 10 transactions
THRESHOLD_SMURFING_DAYS = 7  # Keep at 7 days

# Pass-Through Rule
THRESHOLD_PASS_THROUGH_TURNOVER = Decimal("30000")  # Changed from 50,000 CHF
THRESHOLD_PASS_THROUGH_DAYS = 7  # Keep at 7 days
THRESHOLD_PASS_THROUGH_SIMILARITY = Decimal("0.15")  # Changed from 0.10 (10% → 15%)

# Unusual Transaction Pattern Rule
THRESHOLD_UNUSUAL_PATTERN_CURRENT = Decimal("40000")  # Changed from 100,000 CHF
THRESHOLD_UNUSUAL_PATTERN_INCREASE = Decimal("1.3")  # Changed from 1.5 (50% → 30% increase)
THRESHOLD_UNUSUAL_PATTERN_LOOKBACK_MONTHS = 6  # Keep at 6 months
```

---

## Rule-by-Rule Analysis

### Rule 1: Large Value Transactions ✅

**Change:** 100,000 CHF → **40,000 CHF**

**Rationale:**
- Top transaction in dataset: 58,883.49 CHF
- With 40k threshold: Generates 3-5 alerts
- Still demonstrates high-value detection
- Professional demo without being unrealistic

**Expected alerts:** 3-5

---

### Rule 2: High-Risk Client Transactions ✅

**Change:** 10,000 CHF → **20,000 CHF** (raised for focused demo)

**Implementation:**
- Updated CL000002 (Jane Street) to HIGH risk
- Threshold set to 20,000 CHF for manageable alert count

**Result:**
- 1 alert created
- 9 transactions flagged (out of 237 unmatched for this client)
- Perfect demo: Shows selective triggering, not every transaction flagged

**Expected alerts:** 1 alert with ~10 transactions

---

### Rule 3: Smurfing Detection 📊

**Changes:**
- Transaction count: 10 → **8 transactions**
- Amount threshold: 10,000 CHF → **15,000 CHF**

**Rationale:**
- More realistic detection of structuring patterns
- 8 transactions in 7 days is still suspicious
- Higher per-transaction amount captures more patterns
- Generates credible demo alerts

**Expected alerts:** 2-4 (split by credit/debit direction)

---

### Rule 4: Pass-Through Activity 🔄

**Changes:**
- Threshold: 50,000 CHF → **30,000 CHF**
- Similarity tolerance: 10% → **15%**

**Rationale:**
- Lower total amount matches dataset scale
- 15% tolerance still indicates pass-through behavior
- Real-world pass-through rarely has exact matching
- More realistic for smaller accounts

**Expected alerts:** 1-3

---

### Rule 5: Unusual Transaction Patterns 📈

**Changes:**
- Monthly threshold: 100,000 CHF → **40,000 CHF**
- Increase ratio: 1.5 (50%) → **1.3 (30%)**

**Rationale:**
- 30% spike is still significant and worth investigating
- Lower monthly threshold matches dataset volumes
- Maintains statistical significance
- Demonstrates pattern detection effectively

**Expected alerts:** 2-5 (split by credit/debit direction)

---

## Additional Suggestion: Create High-Risk Client for Demo

To demonstrate Rule 2, manually update one client's risk rating:

```sql
-- Option 1: Set client CL000002 as high-risk
UPDATE clients
SET client_risk_rating = 'HIGH'
WHERE client_id = 'CL000002';

-- Option 2: Set client CL000001 as critical risk
UPDATE clients
SET client_risk_rating = 'CRITICAL'
WHERE client_id = 'CL000001';
```

**Verification query:**
```sql
SELECT client_id, name, client_risk_rating,
       COUNT(t.transaction_id) as unmatched_count,
       SUM(CASE WHEN t.amount >= 5000 THEN 1 ELSE 0 END) as large_txns
FROM clients c
LEFT JOIN transactions t ON c.client_id = t.client_id
WHERE t.transaction_id NOT IN (
    SELECT DISTINCT transaction_id
    FROM matches
    WHERE confidence_score >= 0.81
)
GROUP BY c.client_id, c.name, c.client_risk_rating
ORDER BY unmatched_count DESC;
```

---

## Expected Demo Results

After implementing these changes:

| Rule | Expected Alerts | Demo Value |
|------|----------------|------------|
| Large Value | 3-5 | ⭐⭐⭐ Shows high-value detection |
| High-Risk Client | 5-10 | ⭐⭐⭐ Shows risk-based monitoring (if client updated) |
| Smurfing | 2-4 | ⭐⭐⭐ Shows pattern detection |
| Pass-Through | 1-3 | ⭐⭐ Shows sophisticated analysis |
| Unusual Patterns | 2-5 | ⭐⭐⭐ Shows behavioral analysis |
| **TOTAL** | **13-27** | Professional demo showcase |

---

## Implementation Steps

1. **Update thresholds:**
   ```bash
   # Edit backend/src/utils/constants.py
   # Make the changes listed above
   ```

2. **Optional - Add high-risk client:**
   ```bash
   # Connect to database
   docker exec -it crm-backend python -c "
   from db import SessionLocal
   from sqlalchemy import text

   db = SessionLocal()
   db.execute(text(\"UPDATE clients SET client_risk_rating = 'HIGH' WHERE client_id = 'CL000002'\"))
   db.commit()
   db.close()
   print('Client CL000002 updated to HIGH risk')
   "
   ```

3. **Restart backend:**
   ```bash
   docker-compose restart backend
   ```

4. **Run alert evaluation:**
   ```bash
   curl -X POST http://localhost:8080/alerts/evaluate
   ```

5. **Verify alerts created:**
   ```bash
   curl http://localhost:8080/alerts/?is_open=true | jq '.[] | {id, rule_name, client_id}'
   ```

---

## Reverting to Production Thresholds

Before deployment, revert changes in [backend/src/utils/constants.py](backend/src/utils/constants.py):

```bash
git diff backend/src/utils/constants.py  # Review changes
git checkout backend/src/utils/constants.py  # Revert if needed
```

Or maintain two constant files:
- `constants.py` - Production thresholds
- `constants_demo.py` - Demo thresholds

---

## Notes

- These adjustments are **for demo purposes only**
- Production thresholds should follow regulatory guidelines
- Document that demo uses lowered thresholds for visibility
- Consider adding environment variable to toggle demo/production mode

---

**Summary:** Optimized thresholds generate 16 demo alerts covering 162 transactions across all 5 AML rules, providing a comprehensive showcase while maintaining realistic monitoring principles.

**Final Alert Counts:**
- Large Value: 2 alerts (2 transactions)
- High-Risk Client: 1 alert (9 transactions from Jane Street)
- Smurfing: 1 alert (9 transactions)
- Pass-Through: 2 alerts (21 transactions)
- Unusual Patterns: 10 alerts (121 transactions)
