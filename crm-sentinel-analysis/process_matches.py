#!/usr/bin/env python3
"""
CRM Sentinel - Transaction Matching Script
===========================================
This script:
1. Loads ALL transactions (changed from top 50 to get accurate evaluation)
2. Loads CRM notes
3. Calls the /v1/match endpoint for each transaction
4. Saves matching scores to match_results.csv

NOTE: Now evaluates against ALL 259 transactions to ensure ground truth
      transactions are included in the evaluation set.
"""

import pandas as pd
import requests
import json
import time
from typing import List, Dict, Any

# Configuration
API_URL = "http://localhost:5173/v1/match"
TOP_K = 10
USE_LLM_REFINEMENT = False

def extract_client_id_number(client_id_str: str) -> int:
    """Extract numeric part from client ID string (e.g., 'CL000001' -> 1)."""
    # Remove 'CL' prefix and convert to int
    return int(client_id_str.replace('CL', ''))

def load_transactions(filepath: str) -> pd.DataFrame:
    """Load transactions from CSV file."""
    df = pd.read_csv(filepath)
    print(f"Loaded {len(df)} transactions")
    return df

def load_notes(filepath: str) -> pd.DataFrame:
    """Load CRM notes from CSV file."""
    df = pd.read_csv(filepath)
    print(f"Loaded {len(df)} CRM notes")
    return df

def select_transactions_for_evaluation(df: pd.DataFrame) -> pd.DataFrame:
    """
    Select transactions for evaluation.

    Changed from top 50 to ALL transactions to ensure ground truth
    transactions are included in the evaluation set.
    """
    # Use ALL transactions for complete evaluation
    transactions = df.copy()
    print(f"\nSelected ALL {len(transactions)} transactions for evaluation")
    # Use correct column name (amount_chf in transactions_evaluated.csv)
    amount_col = 'amount_chf' if 'amount_chf' in transactions.columns else 'Amount_(CHF)'
    print(f"Amount range: {transactions[amount_col].min():.2f} - {transactions[amount_col].max():.2f} CHF")
    return transactions

def save_transactions_for_evaluation(df: pd.DataFrame, filepath: str):
    """Save transactions being evaluated to CSV."""
    # Rename columns to match expected output format
    output_df = df.copy()
    output_df.columns = [
        'transaction_id', 'date', 'client_id', 'amount_chf',
        'original_currency', 'direction', 'type',
        'counterparty_bank', 'counterparty_entity'
    ]
    output_df.to_csv(filepath, index=False)
    print(f"Saved {len(df)} transactions to {filepath}")

def get_notes_for_client(notes_df: pd.DataFrame, client_id: str) -> List[Dict[str, Any]]:
    """Get all notes for a specific client, formatted for API."""
    client_notes = notes_df[notes_df['client_id'] == client_id]

    notes_list = []
    for idx, (_, note) in enumerate(client_notes.iterrows()):
        note_dict = {
            'note_index': idx,
            'client_id': extract_client_id_number(note['client_id']),
            'date': note['note_date'],
            'content': note['note_text'],
            'note_id': note['note_id']  # Keep for later mapping
        }
        notes_list.append(note_dict)

    return notes_list

def call_match_endpoint(transaction: Dict[str, Any], notes: List[Dict[str, Any]]) -> List[Dict[str, Any]]:
    """Call the /v1/match endpoint with transaction and notes."""
    payload = {
        "transaction": transaction,
        "notes": notes,
        "config": {
            "return_top_k": TOP_K,
            "use_llm_refinement": USE_LLM_REFINEMENT
        }
    }

    try:
        response = requests.post(API_URL, json=payload, timeout=30)
        response.raise_for_status()
        result = response.json()
        return result.get('matches', [])
    except requests.exceptions.RequestException as e:
        print(f"Error calling API for transaction {transaction.get('transaction_id')}: {e}")
        return []

def process_all_transactions(transactions_df: pd.DataFrame, notes_df: pd.DataFrame) -> List[Dict[str, Any]]:
    """Process all transactions and collect match results."""
    results = []
    total = len(transactions_df)

    print(f"\nProcessing {total} transactions...")

    for idx, (_, row) in enumerate(transactions_df.iterrows(), 1):
        transaction_id = row['transaction_id']
        client_id = row['client_id']

        # Prepare transaction dict (handle NaN values)
        transaction = {
            'transaction_id': transaction_id,
            'date': row['date'],
            'client_id': extract_client_id_number(client_id),
            'amount_chf': float(row['amount_chf']),
            'original_currency': row['original_currency'],
            'direction': row['direction'],
            'type': row['type'],
            'counterparty_bank': row['counterparty_bank'] if pd.notna(row['counterparty_bank']) else '',
            'counterparty_entity': row['counterparty_entity'] if pd.notna(row['counterparty_entity']) else ''
        }

        # Get notes for this client
        notes = get_notes_for_client(notes_df, client_id)

        if not notes:
            print(f"  [{idx}/{total}] {transaction_id}: No notes found for client {client_id}")
            continue

        print(f"  [{idx}/{total}] {transaction_id}: Matching against {len(notes)} notes...")

        # Call API
        matches = call_match_endpoint(transaction, notes)

        # Store results
        for match in matches:
            note_index = match['note_index']
            score = match['score']

            # Get the actual note_id from the notes list
            if 0 <= note_index < len(notes):
                note_id = notes[note_index]['note_id']
                results.append({
                    'transaction_id': transaction_id,
                    'note_id': note_id,
                    'score': score
                })

        print(f"    -> Found {len(matches)} matches")

        # Small delay to avoid overwhelming the API
        time.sleep(0.1)

    return results

def save_match_results(results: List[Dict[str, Any]], filepath: str):
    """Save match results to CSV."""
    df = pd.DataFrame(results)
    df.to_csv(filepath, index=False)
    print(f"\nSaved {len(results)} match results to {filepath}")

def main():
    print("="*60)
    print("CRM Sentinel - Transaction Matching (FULL EVALUATION)")
    print("="*60)

    # Load data
    transactions_df = load_transactions('transactions_evaluated.csv')
    notes_df = load_notes('crm_notes.csv')

    # Select transactions for evaluation (ALL transactions now)
    eval_transactions_df = select_transactions_for_evaluation(transactions_df)

    # Save transactions being evaluated
    save_transactions_for_evaluation(eval_transactions_df, 'transactions_evaluated.csv')

    # Process all transactions and get matches
    print("\n⚠️  Note: Evaluating ALL transactions will take ~5-10 minutes")
    print("   (259 transactions × 10 matches = ~2,590 API calls)")
    match_results = process_all_transactions(eval_transactions_df, notes_df)

    # Save match results
    save_match_results(match_results, 'match_results.csv')

    print("\n" + "="*60)
    print("Transaction matching complete - full evaluation dataset")
    print("="*60)

if __name__ == "__main__":
    main()
