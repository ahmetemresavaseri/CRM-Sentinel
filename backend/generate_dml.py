#!/usr/bin/env python3
"""
Generate DML.sql from CSV files in crm-sentinel-analysis folder
"""

import csv
import sys
from pathlib import Path

# Paths
BASE_DIR = Path(__file__).parent.parent
CSV_DIR = BASE_DIR / "crm-sentinel-analysis"
OUTPUT_FILE = BASE_DIR / "backend" / "db" / "DML.sql"

TRANSACTIONS_CSV = CSV_DIR / "transactions_all.csv"
NOTES_CSV = CSV_DIR / "crm_notes_all.csv"
MATCHES_CSV = CSV_DIR / "match_results_all.csv"


def escape_sql_string(value):
    """Escape single quotes for SQL"""
    if value is None or value == "":
        return "NULL"
    return f"'{str(value).replace(chr(39), chr(39) + chr(39))}'"


def generate_dml():
    """Generate DML.sql file"""

    with open(OUTPUT_FILE, 'w', encoding='utf-8') as f:
        # Header
        f.write("-- CRM Sentinel - Data Import (Generated from CSV files)\n")
        f.write("-- DO NOT EDIT MANUALLY - Regenerate using: python backend/generate_dml.py\n\n")

        # ========================================
        # CLIENTS
        # ========================================
        f.write("------------------------------------------------------------\n")
        f.write("-- CLIENTS\n")
        f.write("------------------------------------------------------------\n")
        f.write("INSERT INTO clients (client_id, name, client_risk_rating, opening_date, status, aum, domicile, nationality, country_of_business, expected_monthly_turnover, declared_counterparties)\n")
        f.write("VALUES \n")
        clients = [
            ("'CL000001'", "'Citadel'", "'Low'", "'2016-04-08'", "'Open'", "4155.47", "'DE'", "'DE'", "'DE'", "10457.99", "'First Capital'"),
            ("'CL000002'", "'Jane Street'", "'Medium'", "'2021-07-10'", "'Open'", "1738997.27", "'CU'", "'CU'", "'SY'", "47450.14", "'Omega Financial'"),
            ("'CL000003'", "'IMC'", "'Low'", "'2016-10-16'", "'Open'", "10991.46", "'DK'", "'DK'", "'SE'", "5582.64", "'Beta Financial Holdings; Omega Holdings; United Capital'"),
            ("'CL000004'", "'Optiver'", "'Low'", "'2022-01-07'", "'Open'", "4821.08", "'NL'", "'NL'", "'NL'", "10419.12", "'Elite AG; United Asset Holdings'"),
            ("'CL000005'", "'Goldman Sachs'", "'Low'", "'2020-12-09'", "'Open'", "8567.98", "'AT'", "'DE'", "'AT'", "13071.33", "'Premier Capital'"),
        ]
        for i, client in enumerate(clients):
            comma = "," if i < len(clients) - 1 else ";"
            f.write(f"({', '.join(client)}){comma}\n")
        f.write("\n\n")

        # ========================================
        # USERS
        # ========================================
        f.write("------------------------------------------------------------\n")
        f.write("-- USERS\n")
        f.write("------------------------------------------------------------\n")
        f.write("INSERT INTO users (username, full_name, email, hashed_password, disabled) VALUES ")
        f.write("('johndoe', 'John Doe', 'johndoe@example.com', '$argon2id$v=19$m=65536,t=3,p=4$wagCPXjifgvUFBzq4hqe3w$CYaIb8sB+wtD+Vu/P4uod1+Qof8h+1g7bbDlBID48Rc', FALSE);\n\n\n")

        # ========================================
        # TRANSACTIONS
        # ========================================
        f.write("------------------------------------------------------------\n")
        f.write("-- TRANSACTIONS\n")
        f.write("------------------------------------------------------------\n")

        print(f"Reading transactions from {TRANSACTIONS_CSV}...")
        with open(TRANSACTIONS_CSV, 'r', encoding='utf-8') as csvfile:
            reader = csv.DictReader(csvfile)
            transactions = list(reader)

        print(f"Found {len(transactions)} transactions")

        # Write transactions in batches
        batch_size = 500
        for batch_start in range(0, len(transactions), batch_size):
            batch_end = min(batch_start + batch_size, len(transactions))
            batch = transactions[batch_start:batch_end]

            f.write(f"-- Batch {batch_start//batch_size + 1} (rows {batch_start+1}-{batch_end})\n")
            f.write("INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)\n")
            f.write("VALUES\n")

            for i, row in enumerate(batch):
                # Map CSV columns to DB columns
                values = [
                    escape_sql_string(row['transaction_id']),
                    escape_sql_string(row['client_id']),
                    escape_sql_string(row['date']),
                    row['amount_chf'] if row['amount_chf'] else 'NULL',
                    escape_sql_string(row['original_currency']),
                    escape_sql_string(row['direction']),
                    escape_sql_string(row['type']),
                    escape_sql_string(row['counterparty_bank']),
                    escape_sql_string(row['counterparty_entity']),
                ]
                comma = "," if i < len(batch) - 1 else ";"
                f.write(f"({', '.join(values)}){comma}\n")
            f.write("\n")

        # ========================================
        # CRM NOTES
        # ========================================
        f.write("\n------------------------------------------------------------\n")
        f.write("-- CRM NOTES\n")
        f.write("------------------------------------------------------------\n")

        print(f"Reading notes from {NOTES_CSV}...")
        with open(NOTES_CSV, 'r', encoding='utf-8') as csvfile:
            reader = csv.DictReader(csvfile)
            notes = list(reader)

        print(f"Found {len(notes)} notes")

        # Write notes in batches
        for batch_start in range(0, len(notes), batch_size):
            batch_end = min(batch_start + batch_size, len(notes))
            batch = notes[batch_start:batch_end]

            f.write(f"-- Batch {batch_start//batch_size + 1} (rows {batch_start+1}-{batch_end})\n")
            f.write("INSERT INTO crm_notes (id, client_id, date, text)\n")
            f.write("VALUES\n")

            for i, row in enumerate(batch):
                values = [
                    escape_sql_string(row['note_id']),
                    escape_sql_string(row['client_id']),
                    escape_sql_string(row['note_date']),
                    escape_sql_string(row['note_text']),
                ]
                comma = "," if i < len(batch) - 1 else ";"
                f.write(f"({', '.join(values)}){comma}\n")
            f.write("\n")

        # ========================================
        # MATCHES
        # ========================================
        f.write("\n------------------------------------------------------------\n")
        f.write("-- MATCHES\n")
        f.write("------------------------------------------------------------\n")

        print(f"Reading matches from {MATCHES_CSV}...")
        with open(MATCHES_CSV, 'r', encoding='utf-8') as csvfile:
            reader = csv.DictReader(csvfile)
            matches = list(reader)

        print(f"Found {len(matches)} matches")

        # Generate match IDs and write in batches
        for batch_start in range(0, len(matches), batch_size):
            batch_end = min(batch_start + batch_size, len(matches))
            batch = matches[batch_start:batch_end]

            f.write(f"-- Batch {batch_start//batch_size + 1} (rows {batch_start+1}-{batch_end})\n")
            f.write("INSERT INTO matches (id, transaction_id, note_id, confidence_score)\n")
            f.write("VALUES\n")

            for i, row in enumerate(batch):
                match_id = f"M{str(batch_start + i + 1).zfill(7)}"
                values = [
                    escape_sql_string(match_id),
                    escape_sql_string(row['transaction_id']),
                    escape_sql_string(row['note_id']),
                    row['score'] if row['score'] else 'NULL',
                ]
                comma = "," if i < len(batch) - 1 else ";"
                f.write(f"({', '.join(values)}){comma}\n")
            f.write("\n")

        f.write("\n-- Data import complete\n")
        f.write(f"-- Total records: {len(transactions)} transactions, {len(notes)} notes, {len(matches)} matches\n")

    print(f"\n✅ DML.sql generated successfully at {OUTPUT_FILE}")
    print(f"   - {len(clients)} clients")
    print(f"   - {len(transactions)} transactions")
    print(f"   - {len(notes)} notes")
    print(f"   - {len(matches)} matches")


if __name__ == "__main__":
    try:
        generate_dml()
    except Exception as e:
        print(f"❌ Error: {e}", file=sys.stderr)
        sys.exit(1)
