#!/usr/bin/env python3
"""
Test script to verify all microservice endpoints work correctly.
Tests health check, single matching, batch matching, and comparison endpoints.
"""

import requests
import json
from datetime import date

BASE_URL = "http://localhost:5173"

def test_health_check():
    """Test the health check endpoint."""
    print("=" * 80)
    print("TEST 1: Health Check Endpoint")
    print("=" * 80)

    response = requests.get(f"{BASE_URL}/health")

    print(f"Status Code: {response.status_code}")
    print(f"Response: {response.json()}")

    assert response.status_code == 200
    assert response.json() == {"status": "ok"}

    print("✅ PASS: Health check endpoint works")
    print()


def test_single_match_simple():
    """Test single transaction matching with simple method."""
    print("=" * 80)
    print("TEST 2: Single Transaction Matching (Simple Method)")
    print("=" * 80)

    payload = {
        "transaction": {
            "transaction_id": "TR001",
            "client_id": 1,
            "date": "2025-08-26",
            "amount_chf": 5000.00,
            "original_currency": "CHF",
            "direction": "debit",
            "type": "wire_transfer",
            "counterparty_bank": "TESTBANK",
            "counterparty_entity": "Test Company"
        },
        "notes": [
            {
                "note_index": 0,
                "client_id": 1,
                "date": "2025-08-25",
                "content": "Client discussed wire transfer of 5000 CHF to Test Company"
            },
            {
                "note_index": 1,
                "client_id": 1,
                "date": "2025-08-20",
                "content": "Unrelated note about something else"
            }
        ],
        "config": {
            "scoring_method": "simple",
            "return_top_k": 5
        }
    }

    response = requests.post(f"{BASE_URL}/v1/match", json=payload)

    print(f"Status Code: {response.status_code}")
    result = response.json()
    print(f"Number of matches: {len(result['matches'])}")

    for i, match in enumerate(result['matches']):
        print(f"  Match {i+1}: note_index={match['note_index']}, score={match['score']:.3f}")
        print(f"           explanation: {match['explanation']}")

    assert response.status_code == 200
    assert 'matches' in result
    assert len(result['matches']) > 0
    assert result['matches'][0]['note_index'] == 0  # First note should match best

    print("✅ PASS: Simple matching works correctly")
    print()


def test_single_match_semantic():
    """Test single transaction matching with semantic method."""
    print("=" * 80)
    print("TEST 3: Single Transaction Matching (Semantic Method)")
    print("=" * 80)

    payload = {
        "transaction": {
            "transaction_id": "TR002",
            "client_id": 1,
            "date": "2025-09-15",
            "amount_chf": 12500.00,
            "original_currency": "USD",
            "direction": "debit",
            "type": "wire_transfer",
            "counterparty_bank": "N/A",
            "counterparty_entity": "Real Estate Holdings Inc"
        },
        "notes": [
            {
                "note_index": 0,
                "client_id": 1,
                "date": "2025-09-14",
                "content": "Client inquired about property acquisition financing options."
            },
            {
                "note_index": 1,
                "client_id": 1,
                "date": "2025-09-15",
                "content": "Discussed quarterly dividend distribution timeline."
            }
        ],
        "config": {
            "scoring_method": "semantic",
            "return_top_k": 5
        }
    }

    response = requests.post(f"{BASE_URL}/v1/match", json=payload)

    print(f"Status Code: {response.status_code}")
    result = response.json()
    print(f"Number of matches: {len(result['matches'])}")

    for i, match in enumerate(result['matches']):
        print(f"  Match {i+1}: note_index={match['note_index']}, score={match['score']:.3f}")
        print(f"           explanation: {match['explanation']}")

    assert response.status_code == 200
    assert 'matches' in result
    assert len(result['matches']) > 0
    # Semantic should understand "Real Estate" ≈ "property acquisition"
    assert result['matches'][0]['note_index'] == 0

    print("✅ PASS: Semantic matching works correctly")
    print()


def test_batch_matching():
    """Test batch transaction matching."""
    print("=" * 80)
    print("TEST 4: Batch Transaction Matching")
    print("=" * 80)

    payload = {
        "transactions": [
            {
                "transaction_id": "TX1",
                "client_id": 1,
                "date": "2025-08-26",
                "amount_chf": 5000.00,
                "original_currency": "CHF",
                "direction": "debit",
                "type": "wire_transfer",
                "counterparty_bank": "BANK1",
                "counterparty_entity": "Company A"
            },
            {
                "transaction_id": "TX2",
                "client_id": 1,
                "date": "2025-08-27",
                "amount_chf": 3000.00,
                "original_currency": "USD",
                "direction": "credit",
                "type": "wire_transfer",
                "counterparty_bank": "BANK2",
                "counterparty_entity": "Company B"
            }
        ],
        "notes": [
            {
                "note_index": 0,
                "client_id": 1,
                "date": "2025-08-25",
                "content": "Wire transfer to Company A for 5000 CHF"
            },
            {
                "note_index": 1,
                "client_id": 1,
                "date": "2025-08-26",
                "content": "Expecting incoming payment from Company B"
            }
        ],
        "config": {
            "scoring_method": "simple",
            "return_top_k": 3
        }
    }

    response = requests.post(f"{BASE_URL}/v1/match/batch", json=payload)

    print(f"Status Code: {response.status_code}")
    result = response.json()
    print(f"Transactions processed: {len(result['results'])}")

    for tx_id, matches in result['results'].items():
        print(f"\n  Transaction {tx_id}:")
        print(f"    Matches: {len(matches)}")
        for match in matches:
            print(f"      note_index={match['note_index']}, score={match['score']:.3f}")

    assert response.status_code == 200
    assert 'results' in result
    assert 'TX1' in result['results']
    assert 'TX2' in result['results']
    assert len(result['results']['TX1']) > 0
    assert len(result['results']['TX2']) > 0

    print("\n✅ PASS: Batch matching works correctly")
    print()


def test_comparison_endpoint():
    """Test the comparison endpoint."""
    print("=" * 80)
    print("TEST 5: Method Comparison Endpoint")
    print("=" * 80)

    payload = {
        "transaction": {
            "transaction_id": "TR003",
            "client_id": 1,
            "date": "2025-08-26",
            "amount_chf": 5000.00,
            "original_currency": "CHF",
            "direction": "debit",
            "type": "wire_transfer",
            "counterparty_bank": "TESTBANK",
            "counterparty_entity": "Investment Fund LLC"
        },
        "notes": [
            {
                "note_index": 0,
                "client_id": 1,
                "date": "2025-08-25",
                "content": "Client wants to allocate capital to portfolio."
            },
            {
                "note_index": 1,
                "client_id": 1,
                "date": "2025-08-26",
                "content": "Wire transfer to Investment Fund LLC for 5000 CHF processed today."
            }
        ],
        "config": {
            "return_top_k": 5
        }
    }

    response = requests.post(f"{BASE_URL}/v1/match/compare", json=payload)

    print(f"Status Code: {response.status_code}")
    result = response.json()

    print("\nSimple Method Results:")
    if result.get('simple_method'):
        for match in result['simple_method']['matches']:
            print(f"  note_index={match['note_index']}, score={match['score']:.3f}")

    print("\nSemantic Method Results:")
    if result.get('semantic_method'):
        for match in result['semantic_method']['matches']:
            print(f"  note_index={match['note_index']}, score={match['score']:.3f}")

    print("\nComparison Metadata:")
    comparison = result['comparison']
    print(f"  Simple available: {comparison['simple_method_available']}")
    print(f"  Semantic available: {comparison['semantic_method_available']}")
    print(f"  Top match agrees: {comparison.get('top_match_agrees', 'N/A')}")
    if comparison.get('agreement_score') is not None:
        print(f"  Agreement score: {comparison['agreement_score']:.3f}")

    assert response.status_code == 200
    assert 'simple_method' in result
    assert 'semantic_method' in result
    assert 'comparison' in result

    print("\n✅ PASS: Comparison endpoint works correctly")
    print()


def test_auto_method():
    """Test auto scoring method (should use semantic with fallback)."""
    print("=" * 80)
    print("TEST 6: Auto Method (Default)")
    print("=" * 80)

    payload = {
        "transaction": {
            "transaction_id": "TR004",
            "client_id": 1,
            "date": "2025-08-26",
            "amount_chf": 1000.00,
            "original_currency": "CHF",
            "direction": "debit",
            "type": "card_payment",
            "counterparty_bank": "N/A",
            "counterparty_entity": "Restaurant ABC"
        },
        "notes": [
            {
                "note_index": 0,
                "client_id": 1,
                "date": "2025-08-26",
                "content": "Client had dinner at Restaurant ABC"
            }
        ],
        "config": {
            "scoring_method": "auto",
            "return_top_k": 5
        }
    }

    response = requests.post(f"{BASE_URL}/v1/match", json=payload)

    print(f"Status Code: {response.status_code}")
    result = response.json()
    print(f"Number of matches: {len(result['matches'])}")

    for match in result['matches']:
        print(f"  note_index={match['note_index']}, score={match['score']:.3f}")
        print(f"  explanation: {match['explanation']}")

    assert response.status_code == 200
    assert 'matches' in result

    print("✅ PASS: Auto method works correctly")
    print()


def main():
    """Run all tests."""
    print("\n")
    print("╔" + "=" * 78 + "╗")
    print("║" + " " * 25 + "MICROSERVICE TEST SUITE" + " " * 30 + "║")
    print("╚" + "=" * 78 + "╝")
    print()

    try:
        test_health_check()
        test_single_match_simple()
        test_single_match_semantic()
        test_batch_matching()
        test_comparison_endpoint()
        test_auto_method()

        print("=" * 80)
        print("ALL TESTS PASSED ✅")
        print("=" * 80)
        print()
        print("Summary:")
        print("  ✓ Health check endpoint works")
        print("  ✓ Simple matching method works")
        print("  ✓ Semantic matching method works")
        print("  ✓ Batch matching endpoint works")
        print("  ✓ Comparison endpoint works")
        print("  ✓ Auto method works with graceful fallback")
        print()

        return 0

    except AssertionError as e:
        print()
        print("=" * 80)
        print("TEST FAILED ❌")
        print("=" * 80)
        print(f"\nAssertion Error: {e}")
        print()
        return 1

    except requests.exceptions.RequestException as e:
        print()
        print("=" * 80)
        print("CONNECTION ERROR ❌")
        print("=" * 80)
        print(f"\nError: {e}")
        print("\nMake sure the microservice is running:")
        print("  cd microservice/src")
        print("  uvicorn main:app --reload --port 5173")
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
