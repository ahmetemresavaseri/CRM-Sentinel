#!/usr/bin/env python3
"""
SAFE test-data cleanup script.

Purpose:
- Remove ONLY explicitly identifiable test data
- Never rely on timestamps or broad heuristics
- Safe to run against a shared or long-lived database

Prerequisites:
- Port-forwarding to the target PostgreSQL database is active
- DATABASE_URL points to the correct database
"""

import os
from sqlalchemy import create_engine, text
from sqlalchemy.orm import sessionmaker

DATABASE_URL = os.getenv(
    "DATABASE_URL",
    "postgresql://user_test:goh9aami0aeph5Ah@localhost:5432/db_test"
)

print(f"Connecting to database:")
print(f"  {DATABASE_URL}\n")

engine = create_engine(DATABASE_URL)
Session = sessionmaker(bind=engine)
session = Session()

try:
    print("=== SAFE TEST DATA CLEANUP ===\n")

    # ------------------------------------------------------------------
    # 1. Delete matches related to test transactions
    # ------------------------------------------------------------------
    print("Deleting matches for test transactions...")
    match_result = session.execute(text("""
        DELETE FROM matches
        WHERE transaction_id IN (
            'TXN_TEST_001',
            'TXN_TEST_002',
            'TXN_TEST_003',
            'TXN_TEST_004',
            'TXN_TEST_005'
        )
    """))
    print(f"✓ Deleted {match_result.rowcount} matches")

    # ------------------------------------------------------------------
    # 2. Delete explicitly marked test transactions
    # ------------------------------------------------------------------
    print("Deleting test transactions...")
    tx_result = session.execute(text("""
        DELETE FROM transactions
        WHERE transaction_id IN (
            'TXN_TEST_001',
            'TXN_TEST_002',
            'TXN_TEST_003',
            'TXN_TEST_004',
            'TXN_TEST_005'
        )
    """))
    print(f"✓ Deleted {tx_result.rowcount} test transactions")

    # ------------------------------------------------------------------
    # 3. Delete explicitly known test CRM notes
    # ------------------------------------------------------------------
    print("\nDeleting test CRM notes...")
    note_result = session.execute(text("""
        DELETE FROM crm_notes
        WHERE text IN (
            'Meeting with client to discuss recent large transaction. Client confirmed the transfer was for legitimate business expansion.',
            'Follow-up call regarding payment to supplier. All documentation verified and approved.',
            'Reviewed transaction history. Pattern appears normal for this client''s business operations.',
            'Client provided documentation for incoming USD transfer. Source verified as partner company.',
            'Discussed upcoming payment. Client confirmed this is part of regular vendor relationship.'
        )
    """))
    print(f"✓ Deleted {note_result.rowcount} test CRM notes")

    print("\nNOTE:")
    print("- Alerts are intentionally NOT deleted")
    print("- Alerts represent audit evidence and must be reviewed manually")
    print("- If required, alerts should be deleted explicitly by ID")

    session.commit()
    print("\n✅ Test data cleanup completed successfully.")

except Exception as exc:
    session.rollback()
    print("\n❌ Cleanup failed. Transaction rolled back.")
    print(f"Error: {exc}")
    raise

finally:
    session.close()
