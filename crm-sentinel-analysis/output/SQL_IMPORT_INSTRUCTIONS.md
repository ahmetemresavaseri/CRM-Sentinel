# SQL Import Instructions

## Overview

The file `insert_batches_2_to_5.sql` contains SQL INSERT statements to populate the CRM Sentinel database with evaluation data from batches 2-5.

## File Statistics

- **File Size:** 715 KB
- **Total Statements:** 8,868 lines
- **Batches Included:** 2, 3, 4, 5

## Data Summary

### Batch 2
- Transactions: 266
- CRM Notes: 75
- Matches: 798

### Batch 3
- Transactions: 244
- CRM Notes: 62
- Matches: 732

### Batch 4
- Transactions: 233
- CRM Notes: 73
- Matches: 699

### Batch 5
- Transactions: 285
- CRM Notes: 93
- Matches: 855

**Total Records:**
- **Transactions:** 1,028
- **CRM Notes:** 303
- **Matches:** 3,084

## Database Schema Mapping

The SQL file populates three tables:

### 1. `transactions` table
```sql
CREATE TABLE transactions (
    transaction_id      TEXT PRIMARY KEY,
    client_id           TEXT NOT NULL,
    date                DATE NOT NULL,
    amount              NUMERIC NOT NULL,
    currency            TEXT,
    direction           TEXT,
    type                TEXT,
    counterparty_bank   TEXT,
    counterparty_entity TEXT,
    FOREIGN KEY (client_id) REFERENCES clients (client_id)
);
```

### 2. `crm_notes` table
```sql
CREATE TABLE crm_notes (
    id        TEXT PRIMARY KEY,
    client_id TEXT NOT NULL,
    date      DATE,
    text      TEXT,
    FOREIGN KEY (client_id) REFERENCES clients (client_id)
);
```

### 3. `matches` table
```sql
CREATE TABLE matches (
    id               TEXT PRIMARY KEY,
    transaction_id   TEXT NOT NULL,
    note_id          TEXT,
    confidence_score NUMERIC,
    FOREIGN KEY (transaction_id) REFERENCES transactions (transaction_id),
    FOREIGN KEY (note_id) REFERENCES crm_notes (id)
);
```

## Prerequisites

**IMPORTANT:** Before running this SQL file, ensure the `clients` table contains the following client entries:
- `CL000002` (Batch 2)
- `CL000003` (Batch 3)
- `CL000004` (Batch 4)
- `CL000005` (Batch 5)

If these clients don't exist, the foreign key constraints will cause the inserts to fail.

## How to Import

### Option 1: PostgreSQL (psql)
```bash
psql -U your_username -d your_database -f insert_batches_2_to_5.sql
```

### Option 2: PostgreSQL (Docker)
```bash
docker exec -i your_postgres_container psql -U your_username -d your_database < insert_batches_2_to_5.sql
```

### Option 3: SQLite
```bash
sqlite3 your_database.db < insert_batches_2_to_5.sql
```

### Option 4: Interactive SQL Client
1. Open your SQL client (pgAdmin, DBeaver, etc.)
2. Connect to your database
3. Open and execute the SQL file

## Transaction Handling

The SQL file includes transaction management:
```sql
BEGIN TRANSACTION;
-- All INSERT statements
COMMIT;
```

This ensures that either all data is inserted successfully, or none of it is (atomicity).

## Data Features

### NULL Handling
- Cash transactions have `NULL` values for `counterparty_bank` and `counterparty_entity`
- CRM notes without dates have `NULL` date values
- Proper SQL NULL handling (not string 'NULL')

### String Escaping
- All text fields are properly escaped for SQL injection protection
- Single quotes in text are escaped with double single quotes

### Match IDs
- Unique match IDs generated in format: `M{batch:02d}{index:05d}`
- Example: `M0200001` = Batch 2, Match #1

## Validation Queries

After import, validate the data with these queries:

```sql
-- Count records by batch
SELECT
    SUBSTRING(transaction_id, 1, 8) as batch_prefix,
    COUNT(*) as transaction_count
FROM transactions
GROUP BY SUBSTRING(transaction_id, 1, 8)
ORDER BY batch_prefix;

-- Count notes by client
SELECT client_id, COUNT(*) as note_count
FROM crm_notes
GROUP BY client_id
ORDER BY client_id;

-- Count matches by batch
SELECT
    SUBSTRING(id, 2, 2) as batch_num,
    COUNT(*) as match_count
FROM matches
GROUP BY SUBSTRING(id, 2, 2)
ORDER BY batch_num;

-- Verify foreign keys
SELECT COUNT(*) FROM transactions WHERE client_id NOT IN (SELECT client_id FROM clients);
-- Should return 0

-- Check match relationships
SELECT COUNT(*) FROM matches
WHERE transaction_id NOT IN (SELECT transaction_id FROM transactions)
   OR note_id NOT IN (SELECT id FROM crm_notes);
-- Should return 0
```

## Notes

- The SQL file was generated from CSV evaluation data used for threshold optimization
- Match confidence scores range from 0.0 to 1.0 (higher = better match)
- Transactions span dates from 2024-10-06 to 2025-09-30
- All amounts are in CHF (Swiss Francs), with original currency preserved

## Troubleshooting

### Error: Client ID not found
**Solution:** Ensure the `clients` table contains entries for CL000002, CL000003, CL000004, CL000005

### Error: Duplicate key violation
**Solution:** The database already contains some of this data. Either:
1. Delete existing records for batches 2-5
2. Modify the SQL file to skip duplicates (add `ON CONFLICT DO NOTHING`)

### Error: Transaction failed
**Solution:** Check the error message. Common issues:
- Missing client records
- Data type mismatches
- Foreign key constraint violations

## File Generation

This SQL file was generated using `generate_sql_inserts.py` from the evaluation CSV files:
- `crm_notes_{2,3,4,5}.csv`
- `transactions_{2,3,4,5}.csv`
- `match_results_{2,3,4,5}.csv`

To regenerate:
```bash
cd crm-sentinel-analysis
python3 generate_sql_inserts.py
```

---

**Generated:** 2025-12-14 10:30:25
