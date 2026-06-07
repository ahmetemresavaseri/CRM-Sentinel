# Cleanup Test Data

This guide explains how to remove the test transactions and notes uploaded during bulk upload testing.

## Test Data Summary

**Transactions uploaded:**
- TXN_TEST_001 through TXN_TEST_005 (5 transactions)
- Clients: CL000001, CL000002, CL000003
- Dates: 2025-01-15 to 2025-01-19

**Notes uploaded:**
- 5 CRM notes with text containing:
  - "Meeting with client to discuss recent large transaction"
  - "Follow-up call regarding payment to supplier"
  - "Reviewed transaction history"
  - "Client provided documentation for incoming USD transfer"
  - "Discussed upcoming payment"

**Alerts created:**
- Alert `ALA869035E` for TXN_TEST_005 (large_value_transaction)
- This alert was auto-cleared when notes were uploaded

## Cleanup Methods

### Method 1: Python Script (Recommended)

1. **Set up port forwarding to K8s database:**
   ```bash
   kubectl port-forward svc/postgres 5432:5432
   ```
   (Keep this running in a separate terminal)

2. **Run the cleanup script:**
   ```bash
   cd backend
   python3 cleanup_test_data.py
   ```

3. **Follow the prompts:**
   - The script will show what will be deleted
   - It will ask for confirmation before deleting recent alerts

### Method 2: SQL Direct (Alternative)

If you have direct database access via k9s or psql:

```sql
-- Delete test transactions
DELETE FROM transactions
WHERE transaction_id IN ('TXN_TEST_001', 'TXN_TEST_002', 'TXN_TEST_003', 'TXN_TEST_004', 'TXN_TEST_005');

-- Delete test notes
DELETE FROM crm_notes
WHERE text LIKE '%Meeting with client to discuss recent large transaction%'
   OR text LIKE '%Follow-up call regarding payment to supplier%'
   OR text LIKE '%Reviewed transaction history. Pattern appears normal%'
   OR text LIKE '%Client provided documentation for incoming USD transfer%'
   OR text LIKE '%Discussed upcoming payment. Client confirmed this is part%';

-- (Optional) Delete related alerts created in last hour
DELETE FROM alerts
WHERE created_at > NOW() - INTERVAL '1 hour';
```

### Method 3: Manual via UI (Not recommended - no delete endpoints exist)

Currently, the API does not have DELETE endpoints, so UI-based deletion is not possible.

## Verification

After cleanup, verify the data is removed:

```bash
# Check transactions
curl -s "http://localhost:8080/transactions/?client_id=CL000001&limit=100" | python3 -c "import sys, json; data=json.load(sys.stdin); txns = [t for t in data['items'] if t['transaction_id'].startswith('TXN_TEST')]; print(f'Test transactions remaining: {len(txns)}')"

# Check notes
curl -s "http://localhost:8080/notes/?limit=1000" | python3 -c "import sys, json; data=json.load(sys.stdin); notes = [n for n in data['items'] if 'Meeting with client to discuss recent large transaction' in n.get('text','')]; print(f'Test notes remaining: {len(notes)}')"
```

Expected output: `0` for both commands.

## Notes

- The test data is clearly labeled (transaction IDs start with `TXN_TEST_`)
- Matches are automatically deleted via CASCADE constraints
- The test data is harmless and can be kept if desired for future testing
