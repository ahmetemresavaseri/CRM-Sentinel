# Database Reset Guide - CRM Sentinel Alerts Redesign

## Overview

This guide walks you through resetting the deployed Kubernetes database with the new alerts schema.

**Environment:** Kubernetes deployment accessed via port-forwarding
**Database:** PostgreSQL (deployed)
**Safety:** This is a test environment - full reset is safe and expected

---

## Prerequisites

1. **Port-forwarding to database must be active**
   - Option A (k9s): `Shift+F` on postgres service
   - Option B (kubectl): `kubectl port-forward svc/postgres 5432:5432 -n <namespace>`

2. **psql client installed** (for running the reset script)

3. **Backup data exists** (backend/db/DML.sql)

---

## Quick Start

```bash
cd backend
./reset_db.sh
```

The script will:
1. Check database connection (via port-forward)
2. Drop and recreate database
3. Apply new schema (DDL.sql)
4. Import base data (DML.sql)
5. Verify table counts

---

## Manual Reset Steps

If you prefer to run commands manually:

### Step 1: Set up port-forwarding

**Using k9s:**
```bash
# 1. Launch k9s
k9s

# 2. Navigate to services (type ':svc' and press Enter)
# 3. Find 'postgres' service
# 4. Press 'Shift+F' to start port-forward
```

**Using kubectl:**
```bash
kubectl port-forward svc/postgres 5432:5432 -n <your-namespace>
```

### Step 2: Connect to database

```bash
export PGPASSWORD="goh9aami0aeph5Ah"
psql -h localhost -p 5432 -U user_test -d postgres
```

### Step 3: Drop and recreate database

```sql
DROP DATABASE IF EXISTS db_test;
CREATE DATABASE db_test;
\q
```

### Step 4: Apply schema

```bash
psql -h localhost -p 5432 -U user_test -d db_test -f db/DDL.sql
```

### Step 5: Import data

```bash
psql -h localhost -p 5432 -U user_test -d db_test -f db/DML.sql
```

### Step 6: Verify

```bash
psql -h localhost -p 5432 -U user_test -d db_test -c "
SELECT
    'clients' as table_name, COUNT(*) FROM clients
UNION ALL
SELECT 'transactions', COUNT(*) FROM transactions
UNION ALL
SELECT 'crm_notes', COUNT(*) FROM crm_notes
UNION ALL
SELECT 'users', COUNT(*) FROM users
UNION ALL
SELECT 'matches', COUNT(*) FROM matches
UNION ALL
SELECT 'alerts', COUNT(*) FROM alerts;
"
```

---

## Post-Reset Steps

### 1. Restart Backend Pod

The backend needs to reconnect to the database with the new schema:

```bash
# Using k9s:
# - Navigate to pods (':pod')
# - Select backend pod
# - Press 'd' to delete (will auto-restart)

# Using kubectl:
kubectl delete pod <backend-pod-name>
```

### 2. Trigger Alert Evaluation

Once backend is running:

```bash
curl -X POST http://localhost:8080/alerts/evaluate
```

Expected response:
```json
{
  "success": true,
  "message": "Alert evaluation complete",
  "statistics": {
    "created": <number>,
    "updated": 0,
    "skipped": 0,
    "total_processed": <number>
  }
}
```

### 3. Verify Alerts Created

```bash
# View all alerts
curl http://localhost:8080/alerts/ | jq .

# View alerts in database
psql -h localhost -U user_test -d db_test -c "
SELECT
    id,
    client_id,
    rule_name,
    is_open,
    matched_transaction_count,
    total_transaction_count,
    created_at
FROM alerts
ORDER BY created_at DESC
LIMIT 10;
"
```

### 4. Test Auto-Clear Logic

```bash
# Create a test match (this should trigger auto-clear for related alerts)
# This will be done via the microservice or frontend

# Check if alert was cleared
psql -h localhost -U user_test -d db_test -c "
SELECT
    id,
    is_open,
    cleared_by_matching,
    cleared_at,
    matched_transaction_count,
    total_transaction_count
FROM alerts
WHERE cleared_by_matching = TRUE
LIMIT 5;
"
```

---

## Validation Checklist

After reset, verify:

- [ ] All tables exist (clients, transactions, crm_notes, alerts, matches, users)
- [ ] Base data imported (clients > 0, transactions > 0)
- [ ] New alerts schema applied (check for rule_name, rule_details columns)
- [ ] Alerts created (should have some based on unmatched transactions)
- [ ] Backend connects successfully
- [ ] API endpoints respond correctly

### Schema Validation

Check that new columns exist:

```sql
\d alerts
```

Expected columns:
- id, client_id
- rule_name, rule_version, rule_details (JSONB)
- evaluation_window_start, evaluation_window_end
- direction
- is_open (boolean)
- dismissed_reason, dismissed_at
- cleared_by_matching, cleared_at
- matched_transaction_count, total_transaction_count
- created_at

---

## Troubleshooting

### Cannot connect to database

**Problem:** `psql: error: connection to server at "localhost" (127.0.0.1), port 5432 failed`

**Solution:**
1. Check port-forwarding is active
2. Verify postgres service exists in k9s
3. Try restarting port-forward

### Schema conflicts

**Problem:** `ERROR: relation "alerts" already exists`

**Solution:**
Drop the database completely and recreate:
```bash
psql -h localhost -U user_test -d postgres -c "DROP DATABASE db_test CASCADE;"
psql -h localhost -U user_test -d postgres -c "CREATE DATABASE db_test;"
```

### No alerts created

**Problem:** Alert evaluation returns 0 alerts created

**Possible causes:**
1. All transactions are matched (check matches table)
2. Transactions don't meet rule thresholds
3. Rule engine error (check backend logs)

**Debug:**
```bash
# Check unmatched transactions
psql -h localhost -U user_test -d db_test -c "
SELECT t.transaction_id, t.amount, t.client_id
FROM transactions t
LEFT JOIN matches m ON t.transaction_id = m.transaction_id
WHERE m.transaction_id IS NULL
LIMIT 10;
"

# Check backend logs
kubectl logs <backend-pod-name> --tail=100
```

---

## Important Notes

1. **This is a test environment** - Data loss is expected and acceptable
2. **Backup data exists** - All data can be re-imported from DML.sql
3. **No migration needed** - Full reset is the correct approach
4. **Port-forwarding must stay active** - Don't close k9s or kubectl during reset

---

## Next Steps After Successful Reset

1. Test all 5 AML rules individually
2. Test alert deduplication
3. Test auto-clear logic with match creation
4. Test manual dismissal workflow
5. Update frontend to use new alert schema
6. Run comprehensive tests (Phase 6)

---

## Questions or Issues?

If you encounter any issues:
1. Check backend logs: `kubectl logs <backend-pod-name>`
2. Verify database connection: `psql -h localhost -U user_test -d db_test -c "SELECT 1;"`
3. Review ALERTS_REDESIGN_PLAN.md for implementation details
