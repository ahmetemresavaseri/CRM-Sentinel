#!/usr/bin/env python3
"""
CRM Sentinel - Transaction Matching Script (BATCH - EXPERIMENTAL)
==================================================================
⚠️  EXPERIMENTAL: This script is NOT used in production due to timeout issues.
⚠️  Use process_matches.py instead for reliable evaluation.

This script uses the /v1/match/batch endpoint for potential speedup:
1. Loads ALL transactions (259)
2. Loads CRM notes (82)
3. Calls /v1/match/batch ONCE with all transactions
4. Saves matching scores to match_results.csv

CURRENT STATUS:
- Times out after 5 minutes when processing 259 transactions
- Backend needs optimization (embedding caching, vectorization)
- See README.md "API Performance Analysis" section for details

THEORETICAL PERFORMANCE (after optimization):
- Current approach: 259 API calls (~2-5 minutes)
- Optimized batch: 1 API call (~10-30 seconds)
- Potential speedup: 6-30x faster

For now, use process_matches.py for production evaluation.
"""

import pandas as pd
import requests
import json
import time
from typing import List, Dict, Any

# Configuration
API_URL = "http://localhost:5173/v1/match/batch"
TOP_K = 10
USE_LLM_REFINEMENT = False

def extract_client_id_number(client_id_str: str) -> int:
    """Extract numeric part from client ID string (e.g., 'CL000001' -> 1)."""
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

def prepare_transactions_for_batch(transactions_df: pd.DataFrame, client_id_str: str) -> List[Dict[str, Any]]:
    """Prepare all transactions for a client for batch API call."""
    # transactions_evaluated.csv uses lowercase column names
    client_transactions = transactions_df[transactions_df['client_id'] == client_id_str]

    transactions_list = []
    for _, row in client_transactions.iterrows():
        transaction = {
            'transaction_id': row['transaction_id'],
            'date': row['date'],
            'client_id': extract_client_id_number(row['client_id']),
            'amount_chf': float(row['amount_chf']),
            'original_currency': row['original_currency'],
            'direction': row['direction'],
            'type': row['type'],
            'counterparty_bank': row['counterparty_bank'] if pd.notna(row['counterparty_bank']) else '',
            'counterparty_entity': row['counterparty_entity'] if pd.notna(row['counterparty_entity']) else ''
        }
        transactions_list.append(transaction)

    return transactions_list

def prepare_notes_for_batch(notes_df: pd.DataFrame, client_id: str) -> List[Dict[str, Any]]:
    """Prepare all notes for a client for batch API call."""
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

def call_batch_match_endpoint(transactions: List[Dict[str, Any]], notes: List[Dict[str, Any]]) -> Dict[str, List[Dict[str, Any]]]:
    """Call the /v1/match/batch endpoint with all transactions and notes."""
    payload = {
        "transactions": transactions,
        "notes": notes,
        "config": {
            "return_top_k": TOP_K,
            "use_llm_refinement": USE_LLM_REFINEMENT
        }
    }

    print(f"Calling batch API with {len(transactions)} transactions and {len(notes)} notes...")
    start_time = time.time()

    try:
        response = requests.post(API_URL, json=payload, timeout=300)  # 5 min timeout for batch
        response.raise_for_status()
        result = response.json()

        elapsed = time.time() - start_time
        print(f"Batch API call completed in {elapsed:.1f} seconds")

        return result.get('results', {})
    except requests.exceptions.RequestException as e:
        print(f"Error calling batch API: {e}")
        return {}

def process_batch_results(batch_results: Dict[str, List[Dict[str, Any]]], notes_list: List[Dict[str, Any]]) -> List[Dict[str, Any]]:
    """Convert batch API results to match_results.csv format."""
    results = []

    for transaction_id, matches in batch_results.items():
        for match in matches:
            note_index = match['note_index']
            score = match['score']

            # Get the actual note_id from the notes list
            if 0 <= note_index < len(notes_list):
                note_id = notes_list[note_index]['note_id']
                results.append({
                    'transaction_id': transaction_id,
                    'note_id': note_id,
                    'score': score
                })

    return results

def process_all_transactions_batch(transactions_df: pd.DataFrame, notes_df: pd.DataFrame) -> List[Dict[str, Any]]:
    """Process all transactions using batch API call."""
    # For now, assume all transactions are for same client (CL000001)
    # In production, you'd loop over unique clients
    client_id_str = 'CL000001'

    print(f"\nProcessing transactions for client {client_id_str}...")

    # Prepare data for batch call
    transactions_list = prepare_transactions_for_batch(transactions_df, client_id_str)
    notes_list = prepare_notes_for_batch(notes_df, client_id_str)

    if not transactions_list:
        print(f"No transactions found for client {client_id_str}")
        return []

    if not notes_list:
        print(f"No notes found for client {client_id_str}")
        return []

    print(f"Found {len(transactions_list)} transactions and {len(notes_list)} notes")

    # Call batch API (SINGLE API CALL!)
    batch_results = call_batch_match_endpoint(transactions_list, notes_list)

    # Convert to results format
    results = process_batch_results(batch_results, notes_list)

    print(f"Processed {len(batch_results)} transactions, generated {len(results)} matches")

    return results

def save_match_results(results: List[Dict[str, Any]], filepath: str):
    """Save match results to CSV."""
    df = pd.DataFrame(results)
    df.to_csv(filepath, index=False)
    print(f"\nSaved {len(results)} match results to {filepath}")

def main():
    print("="*60)
    print("CRM Sentinel - BATCH Transaction Matching")
    print("="*60)

    # Load data
    transactions_df = load_transactions('transactions_evaluated.csv')
    notes_df = load_notes('crm_notes.csv')

    # Process all transactions using batch endpoint
    print("\n🚀 Using batch endpoint for 10-50x speedup!")
    print("   Expected time: 30-60 seconds (vs 5-10 minutes for single calls)")

    start_time = time.time()
    match_results = process_all_transactions_batch(transactions_df, notes_df)
    elapsed = time.time() - start_time

    # Save match results
    save_match_results(match_results, 'match_results.csv')

    print(f"\n⏱️  Total processing time: {elapsed:.1f} seconds")
    print("\n" + "="*60)
    print("Batch transaction matching complete!")
    print("="*60)

if __name__ == "__main__":
    main()
