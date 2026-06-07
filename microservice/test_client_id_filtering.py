#!/usr/bin/env python3
"""
Test script to verify client_id filtering in the matching microservice.
Ensures that transactions only match notes from the same client.
"""

import sys
import os
from datetime import date

# Add src to path to import modules
sys.path.insert(0, os.path.join(os.path.dirname(__file__), 'src'))

from models.schemas import Transaction, CRMNote, MatchConfig
from logic.pipeline import filter_notes_by_client, match_transaction_to_notes

def test_filter_notes_by_client():
    """Test the client_id filtering function."""
    print("=" * 80)
    print("TEST 1: Filter Notes by Client ID")
    print("=" * 80)

    # Create sample notes from different clients
    notes = [
        CRMNote(note_index=0, client_id=1, date=date(2025, 1, 10), content="Client 1 note about transfer"),
        CRMNote(note_index=1, client_id=2, date=date(2025, 1, 11), content="Client 2 note about investment"),
        CRMNote(note_index=2, client_id=1, date=date(2025, 1, 12), content="Client 1 another note"),
        CRMNote(note_index=3, client_id=3, date=date(2025, 1, 13), content="Client 3 payment discussion"),
        CRMNote(note_index=4, client_id=1, date=date(2025, 1, 14), content="Client 1 third note"),
    ]

    # Filter for client 1
    client_1_notes = filter_notes_by_client(notes, client_id=1)

    print(f"\nTotal notes: {len(notes)}")
    print(f"Notes for client_id=1: {len(client_1_notes)}")
    print(f"Expected: 3")

    assert len(client_1_notes) == 3, f"Expected 3 notes for client 1, got {len(client_1_notes)}"
    assert all(note.client_id == 1 for note in client_1_notes), "All filtered notes should have client_id=1"

    print("✅ PASS: Client ID filtering works correctly")
    print()

    # Filter for client 2
    client_2_notes = filter_notes_by_client(notes, client_id=2)
    print(f"Notes for client_id=2: {len(client_2_notes)}")
    print(f"Expected: 1")

    assert len(client_2_notes) == 1, f"Expected 1 note for client 2, got {len(client_2_notes)}"
    print("✅ PASS: Client 2 filtering correct")
    print()

    # Filter for non-existent client
    client_99_notes = filter_notes_by_client(notes, client_id=99)
    print(f"Notes for client_id=99: {len(client_99_notes)}")
    print(f"Expected: 0")

    assert len(client_99_notes) == 0, f"Expected 0 notes for client 99, got {len(client_99_notes)}"
    print("✅ PASS: Non-existent client returns empty list")
    print()


def test_match_respects_client_id():
    """Test that matching only considers notes from the same client."""
    print("=" * 80)
    print("TEST 2: Match Transaction Respects Client ID")
    print("=" * 80)

    # Create a transaction for client 1
    transaction = Transaction(
        transaction_id="TR00000001",
        client_id=1,
        date=date(2025, 1, 10),
        amount_chf=5000.0,
        original_currency="CHF",
        direction="debit",
        type="wire_transfer",
        counterparty_bank="TESTBANK",
        counterparty_entity="Test Company"
    )

    # Create notes from different clients
    notes = [
        CRMNote(
            note_index=0,
            client_id=1,
            date=date(2025, 1, 9),
            content="Client discussed wire transfer of 5000 CHF to Test Company"
        ),
        CRMNote(
            note_index=1,
            client_id=2,
            date=date(2025, 1, 9),
            content="Client discussed wire transfer of 5000 CHF to Test Company"
        ),
        CRMNote(
            note_index=2,
            client_id=1,
            date=date(2025, 1, 8),
            content="Client mentioned upcoming payment"
        ),
        CRMNote(
            note_index=3,
            client_id=3,
            date=date(2025, 1, 10),
            content="Perfect match text but wrong client: wire transfer 5000 CHF Test Company"
        ),
    ]

    config = MatchConfig(return_top_k=10, scoring_method="simple")

    # Run matching
    matches = match_transaction_to_notes(transaction, notes, config)

    print(f"\nTransaction client_id: {transaction.client_id}")
    print(f"Total notes provided: {len(notes)}")
    print(f"  - Client 1 notes: 2")
    print(f"  - Client 2 notes: 1")
    print(f"  - Client 3 notes: 1")
    print()
    print(f"Matches returned: {len(matches)}")

    # Verify all matches are from client 1
    for i, match in enumerate(matches):
        matched_note = notes[match.note_index]
        print(f"  Match {i+1}: note_index={match.note_index}, client_id={matched_note.client_id}, score={match.score:.3f}")
        assert matched_note.client_id == transaction.client_id, \
            f"Match {i} has wrong client_id: {matched_note.client_id} (expected {transaction.client_id})"

    # Should only match notes from client 1 (indices 0 and 2)
    matched_indices = {match.note_index for match in matches}
    expected_indices = {0, 2}

    assert matched_indices == expected_indices, \
        f"Expected matches with indices {expected_indices}, got {matched_indices}"

    print()
    print("✅ PASS: Matching respects client_id boundary")
    print("✅ PASS: Notes from other clients were filtered out")
    print()


def test_batch_matching_with_multiple_clients():
    """Test batch matching with transactions from different clients."""
    print("=" * 80)
    print("TEST 3: Batch Matching with Multiple Clients")
    print("=" * 80)

    from logic.pipeline import match_batch_transactions_to_notes

    # Create transactions from different clients
    transactions = [
        Transaction(
            transaction_id="TR00000001",
            client_id=1,
            date=date(2025, 1, 10),
            amount_chf=1000.0,
            original_currency="CHF",
            direction="debit",
            type="wire_transfer",
            counterparty_bank="BANK1",
            counterparty_entity="Company A"
        ),
        Transaction(
            transaction_id="TR00000002",
            client_id=2,
            date=date(2025, 1, 11),
            amount_chf=2000.0,
            original_currency="USD",
            direction="credit",
            type="wire_transfer",
            counterparty_bank="BANK2",
            counterparty_entity="Company B"
        ),
    ]

    # Create notes from both clients
    notes = [
        CRMNote(note_index=0, client_id=1, date=date(2025, 1, 9), content="Note for client 1 about Company A payment"),
        CRMNote(note_index=1, client_id=2, date=date(2025, 1, 10), content="Note for client 2 about Company B transfer"),
        CRMNote(note_index=2, client_id=1, date=date(2025, 1, 11), content="Another client 1 note"),
        CRMNote(note_index=3, client_id=2, date=date(2025, 1, 12), content="Another client 2 note"),
    ]

    config = MatchConfig(return_top_k=5, scoring_method="simple")

    # Run batch matching
    results = match_batch_transactions_to_notes(transactions, notes, config)

    print(f"\nTransactions: {len(transactions)}")
    print(f"Notes: {len(notes)}")
    print()

    # Check transaction 1 (client 1)
    tx1_matches = results["TR00000001"]
    print(f"Transaction TR00000001 (client_id=1):")
    print(f"  Matches: {len(tx1_matches)}")

    for match in tx1_matches:
        matched_note = notes[match.note_index]
        print(f"    note_index={match.note_index}, client_id={matched_note.client_id}")
        assert matched_note.client_id == 1, \
            f"TX1 matched note from wrong client: {matched_note.client_id}"

    # Check transaction 2 (client 2)
    tx2_matches = results["TR00000002"]
    print(f"\nTransaction TR00000002 (client_id=2):")
    print(f"  Matches: {len(tx2_matches)}")

    for match in tx2_matches:
        matched_note = notes[match.note_index]
        print(f"    note_index={match.note_index}, client_id={matched_note.client_id}")
        assert matched_note.client_id == 2, \
            f"TX2 matched note from wrong client: {matched_note.client_id}"

    print()
    print("✅ PASS: Batch matching correctly isolates clients")
    print("✅ PASS: No cross-client data leakage")
    print()


def main():
    """Run all tests."""
    print("\n")
    print("╔" + "=" * 78 + "╗")
    print("║" + " " * 20 + "CLIENT ID FILTERING TEST SUITE" + " " * 28 + "║")
    print("╚" + "=" * 78 + "╝")
    print()

    try:
        test_filter_notes_by_client()
        test_match_respects_client_id()
        test_batch_matching_with_multiple_clients()

        print("=" * 80)
        print("ALL TESTS PASSED ✅")
        print("=" * 80)
        print()
        print("Summary:")
        print("  ✓ Client ID filtering function works correctly")
        print("  ✓ Single transaction matching respects client boundaries")
        print("  ✓ Batch matching handles multiple clients correctly")
        print("  ✓ No cross-client data leakage detected")
        print()

        return 0

    except AssertionError as e:
        print()
        print("=" * 80)
        print("TEST FAILED ❌")
        print("=" * 80)
        print(f"\nError: {e}")
        print()
        return 1

    except Exception as e:
        print()
        print("=" * 80)
        print("UNEXPECTED ERROR ❌")
        print("=" * 80)
        print(f"\nError: {e}")
        import traceback
        traceback.print_exc()
        print()
        return 1


if __name__ == "__main__":
    exit(main())
