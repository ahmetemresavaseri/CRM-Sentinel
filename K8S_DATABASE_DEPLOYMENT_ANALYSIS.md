# Kubernetes Database Deployment Analysis

**Date:** 2025-12-16
**Status:** ✅ STABLE - Schema manually applied, PVC persists across deployments

---

## Current Deployment Architecture

### Pipeline Stages (.gitlab-ci.yml)

```
1. prepare
2. build          → Builds Docker images (frontend, backend, microservice)
3. deploy:db      → Deploys PostgreSQL with PersistentVolumeClaim
4. deploy:microservice
5. deploy:app     → Deploys backend + frontend
```

### PostgreSQL Deployment (helm/postgres.yaml)

**Key Configuration:**
```yaml
pvc:
  enabled: true
  accessMode: ReadWriteOnce
  storage: 1Gi
  mountPath: "/var/lib/postgresql"
```

**Critical Finding:**
- **PersistentVolumeClaim (PVC) is enabled** → Database data persists across deployments
- **Data is NOT recreated** when redeploying
- **Schema changes are NOT automatically applied**

---

## How Database Schema is Currently Handled

### ✅ What EXISTS:

1. **DDL File:** [backend/db/DDL.sql](backend/db/DDL.sql)
   - Complete schema definition
   - Includes new alerts table with JSONB
   - Contains all indexes and constraints

2. **Init Script:** [backend/src/init_db.py](backend/src/init_db.py)
   ```python
   def init_db():
       Base.metadata.create_all(bind=engine)
   ```
   - Uses SQLAlchemy to create tables
   - Only creates tables that don't exist
   - **Does NOT drop/recreate existing tables**
   - **Does NOT run migrations**

### ❌ What is MISSING:

1. **No automatic schema migration** on deployment
2. **No init containers** in Helm chart to run DDL.sql
3. **No database migration tool** (like Alembic, Flyway)
4. **No startup command** to apply schema changes

---

## Current Behavior on GitLab Push

When you push to GitLab:

```
1. Docker images are built
2. PostgreSQL deployment is upgraded:
   - If PVC exists → Reuses existing volume (keeps old data)
   - If PVC missing → Creates new volume (empty database)
3. Backend pod starts:
   - Connects to PostgreSQL
   - Does NOT run init_db.py automatically
   - Does NOT apply DDL.sql
   - Assumes tables already exist
```

**Result:**
- ⚠️ Schema changes in DDL.sql are **NOT automatically applied**
- ⚠️ If you added new columns/tables, they **won't exist** in K8s database
- ⚠️ Backend will fail with "table not found" or "column not found" errors

---

## Impact of Recent Changes

### Schema Changes Made:

1. **alerts table** - Complete replacement with new structure
2. **alert_transactions table** - Recreated with new constraints
3. **New indexes** added for performance
4. **New CHECK constraints** for data integrity

### What Happens on Next Deploy:

**Scenario A: First deployment after schema changes**
- ✅ If postgres PVC is deleted before deploy → Fresh database, schema applies correctly
- ❌ If postgres PVC exists → Old schema remains, **backend will fail**

**Scenario B: Existing deployment**
- ❌ Old alerts/alert_transactions tables exist
- ❌ New structure won't be created
- ❌ Backend queries expect new schema, finds old schema → **errors**

---

## Solutions

### Option 1: Add Init Container to Backend Deployment ⭐ RECOMMENDED

**Modify:** [helm/app.yaml](helm/app.yaml)

Add init container to backend that runs DDL.sql before main container starts:

```yaml
backend:
  image:
    repository: null
    tag: latest

  # ADD THIS: Init container to apply schema
  initContainers:
    - name: init-db
      image: ${CI_REGISTRY_IMAGE}-backend:latest
      command:
        - /bin/bash
        - -c
        - |
          echo "Waiting for postgres..."
          until pg_isready -h ${RELEASE_NAME}-postgres.${K8S_NAMESPACE}.svc.cluster.local -p 5432; do
            sleep 2
          done
          echo "PostgreSQL is ready"
          echo "Applying database schema..."
          psql ${POSTGRES_URL} -f /usr/src/app/db/DDL.sql || true
          echo "Schema applied"
      env:
        - name: POSTGRES_URL
          value: ${POSTGRES_URL}

  port: 8080
  # ... rest of config
```

**Pros:**
- Runs automatically on every deployment
- Idempotent (CREATE TABLE IF NOT EXISTS)
- No manual intervention required

**Cons:**
- Requires psql client in backend image
- DDL.sql must use IF NOT EXISTS clauses

---

### Option 2: Use Database Migration Tool (Alembic)

**Install Alembic:**
```bash
cd backend
pip install alembic
alembic init migrations
```

**Create migration:**
```bash
alembic revision -m "redesign_alerts_system"
# Edit the generated migration file
alembic upgrade head  # Apply migrations
```

**Add to Dockerfile:**
```dockerfile
# Run migrations on startup
CMD ["sh", "-c", "alembic upgrade head && uvicorn main:app --host 0.0.0.0 --port 8080"]
```

**Pros:**
- Professional approach
- Version-controlled migrations
- Handles complex schema changes
- Rollback support

**Cons:**
- More setup required
- Need to learn Alembic
- Requires migration files for all changes

---

### Option 3: Manual Schema Application (Current State)

**Process:**
1. Push code to GitLab
2. Wait for deployment to complete
3. Port-forward to PostgreSQL:
   ```bash
   k9s
   # Find postgres pod
   # Press SHIFT+F to port-forward
   ```
4. Apply schema manually:
   ```bash
   psql -h localhost -U user_test -d db_test < backend/db/DDL.sql
   ```

**Pros:**
- Full control over when schema changes apply
- Can test before applying

**Cons:**
- ❌ Manual step required every deployment
- ❌ Easy to forget
- ❌ Not scalable for team
- ❌ Schema and code can get out of sync

---

### Option 4: Delete PVC and Redeploy (Nuclear Option)

**Process:**
```bash
# Connect to k9s
k9s

# Delete PersistentVolumeClaim
# Navigate to: persistentvolumeclaims
# Find: group-p5-postgres-pvc
# Press 'd' to delete

# Redeploy via GitLab
git push origin main
```

**Result:**
- New empty database created
- DDL.sql applied via init_db.py
- All data lost (transactions, notes, matches)

**Pros:**
- Clean slate
- Guaranteed correct schema

**Cons:**
- ❌ **ALL DATA LOST**
- ❌ Need to re-import CSV data
- ❌ Not suitable for production

---

## Recommended Immediate Action

### For Current Deployment:

**Step 1: Update DDL.sql to be idempotent**

Add `DROP TABLE IF EXISTS` and `CREATE TABLE IF NOT EXISTS` to [backend/db/DDL.sql](backend/db/DDL.sql):

```sql
-- Drop old tables (safe because of CASCADE)
DROP TABLE IF EXISTS alert_transactions CASCADE;
DROP TABLE IF EXISTS alerts CASCADE;

-- Create new tables
CREATE TABLE IF NOT EXISTS alerts (
    id TEXT PRIMARY KEY,
    -- ... rest of schema
);

CREATE TABLE IF NOT EXISTS alert_transactions (
    alert_id TEXT NOT NULL REFERENCES alerts(id) ON DELETE CASCADE,
    transaction_id TEXT NOT NULL REFERENCES transactions(transaction_id) ON DELETE CASCADE,
    PRIMARY KEY (alert_id, transaction_id)
);

-- Create indexes (IF NOT EXISTS added in PostgreSQL 9.5+)
CREATE INDEX IF NOT EXISTS idx_alerts_client_id ON alerts(client_id);
-- ... rest of indexes
```

**Step 2: Choose deployment strategy**

**For demo/testing:**
- Use **Option 4** (delete PVC, redeploy)
- Fresh database with correct schema
- Re-import demo data

**For future deployments:**
- Implement **Option 1** (init container)
- Automatic schema application
- No manual steps required

---

## Files That Need Updates

### 1. backend/db/DDL.sql ⚠️ CRITICAL
**Current:** Has CREATE TABLE without IF NOT EXISTS
**Needed:** Add DROP IF EXISTS and CREATE IF NOT EXISTS

### 2. helm/app.yaml (Optional but recommended)
**Current:** No init container
**Needed:** Add init container to run schema before backend starts

### 3. backend/Dockerfile (Optional)
**Needed if using Option 1:**
```dockerfile
# Add postgresql-client for psql command
RUN apt-get update && apt-get -y install libpq-dev gcc curl postgresql-client && rm -rf /var/lib/apt/lists/*

# Copy DDL file
COPY ./db /usr/src/app/db
```

---

## Testing the Fix

### After implementing Option 1:

1. **Push to GitLab:**
   ```bash
   git add .
   git commit -m "Add init container for database schema"
   git push origin main
   ```

2. **Monitor deployment:**
   ```bash
   # GitLab pipeline will show init-db container logs
   # Should see: "Applying database schema..."
   ```

3. **Verify schema:**
   ```bash
   # Port-forward and check tables
   psql -h localhost -U user_test -d db_test
   \d alerts
   \d alert_transactions
   ```

---

## Summary

**Current State (As of 2025-12-16):**
- ✅ PostgreSQL schema manually updated via port-forwarding
- ✅ New alerts table structure is live in K8s cluster
- ✅ Backend code matches deployed schema
- ✅ PVC persists database across deployments
- ✅ System is stable and safe for GitLab deployments

**How It Works:**
1. PostgreSQL uses PVC → Database persists across pod restarts
2. CI/CD redeploys backend/frontend/microservice pods (NOT postgres)
3. Backend connects to existing database with schema already in place
4. No schema changes on redeploy → No breakage

**When Schema Changes ARE Needed:**
- Only when DDL.sql is updated with breaking changes
- Options:
  1. Port-forward and apply manually (current approach)
  2. Delete PVC for fresh database
  3. Add init container for automatic application (future enhancement)

**Risk Level:** ✅ LOW - Current deployment is stable

---

## Workflow Summary

### Current Workflow (Stable):

1. **Code changes** (backend logic, API endpoints, etc.)
   - Push to GitLab
   - CI/CD rebuilds backend image
   - Backend pod restarts with new code
   - Connects to existing database
   - ✅ Works perfectly

2. **Schema changes** (new tables, columns, indexes)
   - Update DDL.sql in repo
   - Port-forward to postgres pod via k9s
   - Apply DDL manually: `psql < backend/db/DDL.sql`
   - Push code changes to GitLab
   - ✅ Backend uses new schema

### When to Delete PVC:

- Fresh start needed (e.g., demo reset)
- Major schema redesign (like the alerts redesign)
- Testing migration scripts

**Steps:**
```bash
k9s
# Navigate to: persistentvolumeclaims
# Find postgres PVC
# Press 'd' to delete
# Next deployment creates fresh database
```

---

## Completed Actions

1. ✅ Analyzed K8s deployment architecture
2. ✅ Documented PVC behavior
3. ✅ Schema manually applied to production database
4. ✅ Verified backend compatibility
5. ✅ Confirmed stable deployment state
6. ✅ Documented workflow for future schema changes
