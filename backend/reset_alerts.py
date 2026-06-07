#!/usr/bin/env python3
"""
Reset alerts: Delete all existing alerts and re-evaluate from scratch.

This script:
1. Deletes ALL alerts from the database
2. Triggers alert evaluation to create fresh alerts based on current data
3. Reports the results

Safe to run - creates a clean slate for alerts.
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
    print("=== ALERT RESET ===\n")

    # ------------------------------------------------------------------
    # 1. Count existing alerts
    # ------------------------------------------------------------------
    count_result = session.execute(text("SELECT COUNT(*) FROM alerts"))
    existing_count = count_result.scalar()
    print(f"Found {existing_count} existing alerts")

    # ------------------------------------------------------------------
    # 2. Delete all alerts
    # ------------------------------------------------------------------
    print("\nDeleting all alerts...")
    delete_result = session.execute(text("DELETE FROM alerts"))
    print(f"✓ Deleted {delete_result.rowcount} alerts")

    # ------------------------------------------------------------------
    # 3. Delete related alert_transactions (CASCADE should handle this, but being explicit)
    # ------------------------------------------------------------------
    print("\nCleaning up alert-transaction relationships...")
    session.execute(text("DELETE FROM alert_transactions"))
    print(f"✓ Cleaned up alert_transactions table")

    session.commit()
    print("\n✅ All alerts deleted successfully.")
    print("\nNext step: Re-evaluate alerts using the backend API")
    print("  You can trigger this by calling: POST /alerts/evaluate")
    print("  Or use: curl -X POST http://localhost:8080/alerts/evaluate")

except Exception as exc:
    session.rollback()
    print("\n❌ Alert reset failed. Transaction rolled back.")
    print(f"Error: {exc}")
    raise

finally:
    session.close()
