# Backend Database Files Cleanup

**Date:** 2025-12-16
**Status:** ✅ COMPLETE - Unnecessary files removed

---

## Files Deleted (and Why)

### ❌ `backend/src/init_db.py`
**What it did:** Used SQLAlchemy's `Base.metadata.create_all()` to create database tables from Python models

**Why deleted:**
- **Redundant:** We have `backend/db/DDL.sql` which is the source of truth for schema
- **Out of sync risk:** Python models and DDL.sql could diverge
- **K8s deployment:** Schema is manually applied to K8s database via port-forwarding
- **Not used:** Never called in production deployment

**Replacement:** Use `backend/db/DDL.sql` directly with `psql`

---

### ❌ `backend/src/add_indexes.py`
**What it did:** Added database indexes via raw SQL commands

**Why deleted:**
- **Redundant:** All indexes are already defined in `backend/db/DDL.sql`
- **Outdated:** Used old alert schema field names (`timestamp`, `status`)
- **K8s deployment:** Indexes are created when DDL.sql is applied
- **Not needed:** DDL.sql is the single source of truth

**Replacement:** Indexes in `backend/db/DDL.sql` (lines with `CREATE INDEX`)

---

### ❌ `backend/src/empty_alerts.py`
**What it did:** Deleted all alerts and alert_transactions from database

**Why deleted:**
- **API exists:** Can use `DELETE FROM alerts CASCADE` via psql
- **Better alternative:** Use backend API endpoint for controlled deletion
- **Not safe:** No confirmation prompt, easy to accidentally run
- **Demo tool:** Only useful for development, not production

**Replacement:**
```bash
# Option 1: SQL (recommended for full reset)
psql < "DELETE FROM alert_transactions; DELETE FROM alerts;"

# Option 2: Via port-forward to K8s database
k9s  # port-forward to postgres pod
psql -h localhost -U user_test -d db_test
DELETE FROM alert_transactions;
DELETE FROM alerts;
```

---

### ❌ `backend/src/regenerate_alerts.py`
**What it did:** Called old `/transactions/evaluate_rules` endpoint

**Why deleted:**
- **Outdated endpoint:** Uses old endpoint that creates OLD alert schema
- **Wrong port:** Hardcoded to port 8000 (backend uses 8080)
- **API replacement:** New endpoint is `POST /alerts/evaluate`
- **Better method:** Use curl or frontend to trigger evaluation

**Replacement:**
```bash
# New way to regenerate alerts
curl -X POST http://localhost:8080/alerts/evaluate \
  -H "Authorization: Bearer $TOKEN"

# Or via port-forwarded K8s backend
curl -X POST https://api.group-p5.webdev-25.ivia.isginf.ch/alerts/evaluate \
  -H "Authorization: Bearer $TOKEN"
```

---

## Files Kept (and Why)

### ✅ `backend/db/DDL.sql`
**Purpose:** Database schema definition (Data Definition Language)

**Why keep:**
- ✅ **Source of truth** for database structure
- ✅ **K8s deployment:** Applied manually via port-forwarding
- ✅ **Version controlled:** Changes tracked in git
- ✅ **Documented:** Contains all tables, indexes, constraints
- ✅ **Up to date:** Reflects new alerts schema redesign

**Contains:**
- Table definitions (clients, transactions, crm_notes, matches, alerts, alert_transactions, users)
- Primary keys and foreign keys
- Check constraints
- Indexes for performance
- Composite unique indexes for deduplication

**Usage:**
```bash
# Apply schema to database
psql -h localhost -U user_test -d db_test < backend/db/DDL.sql

# Or via K8s port-forward
k9s  # port-forward postgres pod to localhost:5432
psql -h localhost -U user_test -d db_test < backend/db/DDL.sql
```

---

### ✅ `backend/db/DML.sql`
**Purpose:** Data import (Data Manipulation Language) - auto-generated from CSV files

**Why keep:**
- ✅ **Auto-generated:** Created by `generate_dml.py` from CSV files
- ✅ **Demo data:** Imports 1,287 transactions, 200+ notes, matches
- ✅ **Reproducible:** Can regenerate anytime from CSV sources
- ✅ **K8s deployment:** Used to populate fresh database
- ✅ **Version controlled:** Tracks changes to demo data

**Contains:**
- INSERT statements for 5 clients
- INSERT statements for 1 user (johndoe)
- INSERT statements for ~1,287 transactions (in batches)
- INSERT statements for ~200 CRM notes (in batches)
- INSERT statements for ~1,000+ matches (in batches)

**Usage:**
```bash
# Import data after schema is applied
psql -h localhost -U user_test -d db_test < backend/db/DML.sql
```

**Note:** Auto-generated file - DO NOT edit manually. Regenerate with:
```bash
python backend/generate_dml.py
```

---

### ✅ `backend/generate_dml.py`
**Purpose:** Script to generate DML.sql from CSV files in crm-sentinel-analysis folder

**Why keep:**
- ✅ **Automation:** Regenerates DML.sql from source CSV files
- ✅ **Reproducible:** Ensures data import is consistent
- ✅ **Maintained:** Still actively used for data updates
- ✅ **Source of truth:** Reads from CSV files (external data source)

**Inputs:**
- `crm-sentinel-analysis/transactions_all.csv`
- `crm-sentinel-analysis/crm_notes_all.csv`
- `crm-sentinel-analysis/match_results_all.csv`

**Output:**
- `backend/db/DML.sql` (533 KB SQL file with INSERT statements)

**Usage:**
```bash
cd /Users/juliusrasner/Documents/ETHZ/fifth_semester/webEngineering/group-P5
python backend/generate_dml.py
```

**Features:**
- Escapes SQL strings safely (prevents SQL injection)
- Batches inserts (500 rows per batch for performance)
- Generates sequential match IDs (M0000001, M0000002, ...)
- Preserves 5 specific clients with hardcoded data

---

### ✅ `backend/src/db.py`
**Purpose:** SQLAlchemy database connection and session management

**Why keep:**
- ✅ **CRITICAL:** Core database connection for entire backend
- ✅ **Used by all routes:** Transactions, alerts, clients, notes, users
- ✅ **Session management:** Provides `get_db()` dependency for FastAPI
- ✅ **Connection pooling:** Manages PostgreSQL connections efficiently

**Exports:**
- `engine` - SQLAlchemy engine
- `SessionLocal` - Session factory
- `Base` - Declarative base for models
- `get_db()` - FastAPI dependency for database sessions

**Used by:**
- All route files (`routes/*.py`)
- All utility modules (`utils/*.py`)
- Alert engine, auto-clear, AML rules

---

### ✅ `backend/src/models/schemas.py`
**Purpose:** SQLAlchemy ORM models defining database schema

**Why keep:**
- ✅ **CRITICAL:** Defines all database tables as Python classes
- ✅ **Type safety:** Provides Python types for database operations
- ✅ **Relationships:** Defines foreign keys and relationships
- ✅ **Used everywhere:** All routes and utilities depend on these models

**Defines:**
- `Client` - Client information
- `Transaction` - Financial transactions
- `CRMNote` - CRM notes
- `Match` - Transaction-to-note matches
- `Alert` - AML alerts (NEW SCHEMA)
- `AlertTransaction` - Many-to-many relationship
- `User` - Authentication users

**Must stay in sync with:** `backend/db/DDL.sql`

---

### ✅ `backend/src/seed_user.py`
**Purpose:** Creates default user (johndoe) in database

**Why keep:**
- ✅ **Authentication:** Needed for login to work
- ✅ **Development:** Useful for local development
- ✅ **K8s deployment:** Can seed user in fresh K8s database
- ✅ **Safe:** Only creates user if not exists

**Usage:**
```bash
python backend/src/seed_user.py
```

**Creates:**
- Username: `johndoe`
- Password: `secret` (hashed with Argon2)
- Full name: John Doe
- Email: johndoe@example.com

**Note:** User is also in DML.sql, so this script is redundant if DML.sql is loaded. Keep for flexibility.

---

### ✅ `backend/reset_db.sh`
**Purpose:** Automated script to completely reset the K8s database via port-forwarding

**Why keep:**
- ✅ **Critical utility:** Automates the entire database reset workflow
- ✅ **Safe:** Requires confirmation before proceeding (`yes/no` prompt)
- ✅ **Well-documented:** Includes clear instructions and error messages
- ✅ **Complete workflow:** Drops DB → Creates DB → Applies DDL → Imports DML → Verifies
- ✅ **Production-ready:** Designed specifically for K8s deployment

**What it does:**
1. Checks port-forward connection to K8s postgres
2. Prompts for confirmation (prevents accidents)
3. Drops existing database
4. Creates new database
5. Applies schema from DDL.sql
6. Imports data from DML.sql
7. Verifies table counts
8. Shows alert table structure
9. Provides next steps (restart backend, run matching, evaluate alerts)

**Prerequisites:**
```bash
# Start port-forward to K8s postgres pod
k9s  # Navigate to postgres service, press SHIFT+F
# OR
kubectl port-forward svc/postgres 5432:5432 -n <namespace>
```

**Usage:**
```bash
cd /Users/juliusrasner/Documents/ETHZ/fifth_semester/webEngineering/group-P5/backend
./reset_db.sh
```

**Safety features:**
- Connection test before starting
- Confirmation prompt
- Clear error messages
- Exit on error (`set -e`)

**When to use:**
- Fresh database setup for K8s environment
- After schema changes requiring full reset
- Demo data reset before presentation
- Testing migration workflows

**Alternative:** Manual approach (if script fails):
```bash
# Via port-forward
psql -h localhost -U user_test -d postgres
DROP DATABASE db_test;
CREATE DATABASE db_test;
\c db_test
\i backend/db/DDL.sql
\i backend/db/DML.sql
```

---

## Database Workflow Summary

### Fresh Database Setup (K8s or Local):

```bash
# 1. Port-forward to postgres pod (K8s only)
k9s  # Navigate to postgres pod, press SHIFT+F

# 2. Apply schema
psql -h localhost -U user_test -d db_test < backend/db/DDL.sql

# 3. Import data
psql -h localhost -U user_test -d db_test < backend/db/DML.sql

# 4. Generate alerts (via backend API)
curl -X POST http://localhost:8080/alerts/evaluate \
  -H "Authorization: Bearer $TOKEN"
```

### Update Demo Data:

```bash
# 1. Update CSV files in crm-sentinel-analysis/

# 2. Regenerate DML.sql
python backend/generate_dml.py

# 3. Apply to database (fresh import)
psql -h localhost -U user_test -d db_test < backend/db/DML.sql
```

### Schema Changes:

```bash
# 1. Update DDL.sql

# 2. Update models/schemas.py to match

# 3. Apply to K8s database (via port-forward)
k9s
psql -h localhost -U user_test -d db_test < backend/db/DDL.sql

# 4. Restart backend pod (or push to GitLab for CI/CD)
```

---

## Files Summary

| File | Status | Purpose | Keep? |
|------|--------|---------|-------|
| `db/DDL.sql` | ✅ Active | Schema definition | **KEEP** |
| `db/DML.sql` | ✅ Active | Data import (auto-generated) | **KEEP** |
| `generate_dml.py` | ✅ Active | Generate DML from CSVs | **KEEP** |
| `reset_db.sh` | ✅ Active | Automated K8s DB reset | **KEEP** |
| `src/db.py` | ✅ Active | Database connection | **KEEP** |
| `src/models/schemas.py` | ✅ Active | ORM models | **KEEP** |
| `src/seed_user.py` | ✅ Active | Seed default user | **KEEP** |
| `src/init_db.py` | ❌ Deleted | Create tables from models | **DELETED** |
| `src/add_indexes.py` | ❌ Deleted | Add indexes via SQL | **DELETED** |
| `src/empty_alerts.py` | ❌ Deleted | Delete all alerts | **DELETED** |
| `src/regenerate_alerts.py` | ❌ Deleted | Call old API endpoint | **DELETED** |

---

## Cleanup Benefits

1. ✅ **Reduced confusion:** Single source of truth for schema (DDL.sql)
2. ✅ **No duplication:** Removed redundant index creation
3. ✅ **Up to date:** Removed scripts using old alert schema
4. ✅ **Safer:** Removed scripts that could accidentally wipe data
5. ✅ **Cleaner:** Backend folder is more organized
6. ✅ **Documented:** Clear purpose for each remaining file

---

## Verification

Remaining database-related files in backend:

```bash
backend/
├── db/
│   ├── DDL.sql              ✅ Schema definition
│   └── DML.sql              ✅ Data import
├── generate_dml.py          ✅ DML generator
├── reset_db.sh              ✅ K8s DB reset script
└── src/
    ├── db.py                ✅ Database connection
    ├── seed_user.py         ✅ User seeding
    └── models/
        └── schemas.py       ✅ ORM models
```

All files have clear purposes and are actively used in the system.
