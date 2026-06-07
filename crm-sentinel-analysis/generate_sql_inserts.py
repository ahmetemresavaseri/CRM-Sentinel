#!/usr/bin/env python3
"""
Generate SQL INSERT statements for batches 2-5.
Creates a SQL file that can be used to populate the database.
"""

import pandas as pd
import os
from datetime import datetime

# Batch configurations
BATCHES = [2, 3, 4, 5]

def escape_sql_string(value):
    """Escape single quotes in SQL strings."""
    if pd.isna(value) or value == '':
        return 'NULL'
    return f"'{str(value).replace(chr(39), chr(39)+chr(39))}'"  # Escape single quotes

def generate_transaction_inserts(batch_num):
    """Generate INSERT statements for transactions."""
    transactions = pd.read_csv(f'transactions_{batch_num}.csv')

    inserts = []
    inserts.append(f"\n-- Transactions from Batch {batch_num}")

    for _, tx in transactions.iterrows():
        # Handle NULL values for counterparty_entity (Cash transactions)
        counterparty_entity = escape_sql_string(tx['counterparty_entity'])

        insert = f"""INSERT INTO transactions (transaction_id, client_id, date, amount, currency, direction, type, counterparty_bank, counterparty_entity)
VALUES ('{tx['transaction_id']}', '{tx['client_id']}', '{tx['date']}', {tx['amount_chf']}, '{tx['original_currency']}', '{tx['direction']}', '{tx['type']}', {escape_sql_string(tx['counterparty_bank'])}, {counterparty_entity});"""
        inserts.append(insert)

    return inserts

def generate_crm_note_inserts(batch_num):
    """Generate INSERT statements for CRM notes."""
    notes = pd.read_csv(f'crm_notes_{batch_num}.csv')

    inserts = []
    inserts.append(f"\n-- CRM Notes from Batch {batch_num}")

    for _, note in notes.iterrows():
        # Handle NULL values for date
        note_date = escape_sql_string(note['note_date']) if pd.notna(note['note_date']) else 'NULL'

        insert = f"""INSERT INTO crm_notes (id, client_id, date, text)
VALUES ('{note['note_id']}', '{note['client_id']}', {note_date}, {escape_sql_string(note['note_text'])});"""
        inserts.append(insert)

    return inserts

def generate_match_inserts(batch_num):
    """Generate INSERT statements for matches."""
    matches = pd.read_csv(f'match_results_{batch_num}.csv')

    inserts = []
    inserts.append(f"\n-- Matches from Batch {batch_num}")

    for idx, match in matches.iterrows():
        # Generate unique match ID
        match_id = f"M{batch_num:02d}{idx:05d}"

        insert = f"""INSERT INTO matches (id, transaction_id, note_id, confidence_score)
VALUES ('{match_id}', '{match['transaction_id']}', '{match['note_id']}', {match['score']});"""
        inserts.append(insert)

    return inserts

def main():
    """Generate SQL file with all INSERT statements."""
    print("=" * 80)
    print("GENERATING SQL INSERT STATEMENTS FOR BATCHES 2-5")
    print("=" * 80)

    all_inserts = []

    # Header
    all_inserts.append("-- SQL INSERT statements for CRM Sentinel Database")
    all_inserts.append(f"-- Generated: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
    all_inserts.append("-- Batches: 2, 3, 4, 5")
    all_inserts.append("")
    all_inserts.append("-- Note: This assumes clients table is already populated with the required client_id entries")
    all_inserts.append("")
    all_inserts.append("BEGIN TRANSACTION;")
    all_inserts.append("")

    # Generate inserts for each batch
    for batch_num in BATCHES:
        print(f"\nProcessing Batch {batch_num}...")

        # Transactions
        print(f"  - Generating transaction inserts...")
        all_inserts.extend(generate_transaction_inserts(batch_num))

        # CRM Notes
        print(f"  - Generating CRM note inserts...")
        all_inserts.extend(generate_crm_note_inserts(batch_num))

        # Matches
        print(f"  - Generating match inserts...")
        all_inserts.extend(generate_match_inserts(batch_num))

        all_inserts.append("")

    # Footer
    all_inserts.append("COMMIT;")
    all_inserts.append("")
    all_inserts.append(f"-- Total batches processed: {len(BATCHES)}")

    # Write to file
    output_file = 'output/insert_batches_2_to_5.sql'
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write('\n'.join(all_inserts))

    print(f"\n{' ' * 80}")
    print("=" * 80)
    print("SQL GENERATION COMPLETE")
    print("=" * 80)
    print(f"\nSQL file saved to: {output_file}")

    # Print statistics
    for batch_num in BATCHES:
        transactions = pd.read_csv(f'transactions_{batch_num}.csv')
        notes = pd.read_csv(f'crm_notes_{batch_num}.csv')
        matches = pd.read_csv(f'match_results_{batch_num}.csv')

        print(f"\nBatch {batch_num}:")
        print(f"  - Transactions: {len(transactions)}")
        print(f"  - CRM Notes: {len(notes)}")
        print(f"  - Matches: {len(matches)}")

    print()

if __name__ == '__main__':
    main()
