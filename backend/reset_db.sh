#!/bin/bash
# Database Reset Script for Deployed Kubernetes Database
#
# Prerequisites:
# 1. Port-forward to database is active:
#    k9s: Shift+F on postgres service
#    OR
#    kubectl port-forward svc/postgres 5432:5432 -n <namespace>
#
# This script will:
# 1. Drop and recreate the database
# 2. Apply the new schema (DDL.sql)
# 3. Import base data from DML.sql
# 4. Verify table counts

set -e  # Exit on error

echo "========================================="
echo "CRM Sentinel - Database Reset"
echo "========================================="
echo ""
echo "⚠️  This will COMPLETELY RESET the deployed database!"
echo "   - All existing data will be deleted"
echo "   - New schema will be applied"
echo "   - Base data will be re-imported"
echo ""

# Database connection parameters (via port-forward)
DB_HOST="localhost"
DB_PORT="5432"
DB_NAME="db_test"
DB_USER="user_test"
DB_PASS="goh9aami0aeph5Ah"

export PGPASSWORD="$DB_PASS"

echo "Step 1: Checking port-forward connection..."
if ! psql -h "$DB_HOST" -p "$DB_PORT" -U "$DB_USER" -d postgres -c "SELECT 1;" > /dev/null 2>&1; then
    echo "❌ Cannot connect to database!"
    echo ""
    echo "Make sure port-forwarding is active:"
    echo "  Option 1 (k9s):"
    echo "    - Press ':' to enter command mode"
    echo "    - Type 'svc' to view services"
    echo "    - Navigate to postgres service"
    echo "    - Press 'Shift+F' to start port-forward"
    echo ""
    echo "  Option 2 (kubectl):"
    echo "    kubectl port-forward svc/postgres 5432:5432 -n <namespace>"
    echo ""
    exit 1
fi
echo "✅ Database connection successful"
echo ""

read -p "Continue with database reset? (yes/no): " confirm
if [ "$confirm" != "yes" ]; then
    echo "Aborted."
    exit 0
fi
echo ""

echo "Step 2: Dropping existing database..."
psql -h "$DB_HOST" -p "$DB_PORT" -U "$DB_USER" -d postgres -c "DROP DATABASE IF EXISTS $DB_NAME;" 2>/dev/null || true
echo "✅ Old database dropped"
echo ""

echo "Step 3: Creating new database..."
psql -h "$DB_HOST" -p "$DB_PORT" -U "$DB_USER" -d postgres -c "CREATE DATABASE $DB_NAME;"
echo "✅ New database created"
echo ""

echo "Step 4: Applying schema (DDL.sql)..."
psql -h "$DB_HOST" -p "$DB_PORT" -U "$DB_USER" -d "$DB_NAME" -f db/DDL.sql
echo "✅ Schema applied successfully"
echo ""

echo "Step 5: Importing base data..."
if [ -f "db/DML.sql" ]; then
    echo "  → Importing from DML.sql..."
    psql -h "$DB_HOST" -p "$DB_PORT" -U "$DB_USER" -d "$DB_NAME" -f db/DML.sql
    echo "✅ Base data imported"
else
    echo "❌ DML.sql not found!"
    echo "   Expected path: backend/db/DML.sql"
    exit 1
fi
echo ""

echo "Step 6: Verifying database setup..."
echo ""
echo "Table counts:"
CLIENTS=$(psql -h "$DB_HOST" -p "$DB_PORT" -U "$DB_USER" -d "$DB_NAME" -t -c "SELECT COUNT(*) FROM clients;" | tr -d ' ')
TRANSACTIONS=$(psql -h "$DB_HOST" -p "$DB_PORT" -U "$DB_USER" -d "$DB_NAME" -t -c "SELECT COUNT(*) FROM transactions;" | tr -d ' ')
NOTES=$(psql -h "$DB_HOST" -p "$DB_PORT" -U "$DB_USER" -d "$DB_NAME" -t -c "SELECT COUNT(*) FROM crm_notes;" | tr -d ' ')
ALERTS=$(psql -h "$DB_HOST" -p "$DB_PORT" -U "$DB_USER" -d "$DB_NAME" -t -c "SELECT COUNT(*) FROM alerts;" | tr -d ' ')
MATCHES=$(psql -h "$DB_HOST" -p "$DB_PORT" -U "$DB_USER" -d "$DB_NAME" -t -c "SELECT COUNT(*) FROM matches;" | tr -d ' ')
USERS=$(psql -h "$DB_HOST" -p "$DB_PORT" -U "$DB_USER" -d "$DB_NAME" -t -c "SELECT COUNT(*) FROM users;" | tr -d ' ')

echo "  Clients:      $CLIENTS"
echo "  Transactions: $TRANSACTIONS"
echo "  CRM Notes:    $NOTES"
echo "  Users:        $USERS"
echo "  Matches:      $MATCHES (expected: 0 initially)"
echo "  Alerts:       $ALERTS (expected: 0 initially)"
echo ""

echo "Step 7: Verifying schema..."
echo ""
echo "Alert table columns:"
psql -h "$DB_HOST" -p "$DB_PORT" -U "$DB_USER" -d "$DB_NAME" -c "\d alerts" | head -30
echo ""

echo "========================================="
echo "✅ Database reset complete!"
echo "========================================="
echo ""
echo "Next steps:"
echo "1. Restart backend pod to pick up new schema:"
echo "   k9s: Navigate to pods, select backend pod, press 'd' to delete (will auto-restart)"
echo ""
echo "2. Trigger matching for all transactions:"
echo "   (This will create matches via the microservice)"
echo "   curl -X POST http://localhost:8080/transactions/bulk -H 'Content-Type: application/json' -d '[]'"
echo ""
echo "3. Trigger alert evaluation:"
echo "   curl -X POST http://localhost:8080/alerts/evaluate"
echo ""
echo "4. Check created alerts:"
echo "   curl http://localhost:8080/alerts/ | jq ."
echo ""
echo "5. View alerts in database:"
echo "   psql -h localhost -U user_test -d db_test -c \"SELECT id, client_id, rule_name, is_open, matched_transaction_count, total_transaction_count FROM alerts;\""
echo ""
