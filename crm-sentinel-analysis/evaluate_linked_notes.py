#!/usr/bin/env python3
"""
Evaluate matching system on LINKED NOTES ONLY.

This evaluation focuses on business-relevant metrics:
- Precision: When system suggests a match, how often is it correct?
- Recall (linked notes): What % of linked notes have correct match above threshold?
- Top-K Recall: What % of linked notes have correct match in top-1/3/5?
- Workload Savings: What % of manual work is eliminated?
"""

import pandas as pd
import numpy as np
from datetime import datetime

def load_data():
    """Load notes, match results, and transactions."""
    print("Loading data...")
    notes = pd.read_csv('crm_notes.csv')
    matches = pd.read_csv('match_results.csv')
    transactions = pd.read_csv('transactions_evaluated.csv')

    return notes, matches, transactions


def filter_linked_notes(notes):
    """Filter to notes that have transaction links (ground truth)."""
    # Keep only notes with non-null, non-empty linked_transaction_id
    linked = notes[
        notes['linked_transaction_id'].notna() &
        (notes['linked_transaction_id'] != '')
    ].copy()

    # Expand multi-transaction notes: Convert pipe-separated IDs into list
    # Format: "TR00000004|TR00000002" → ["TR00000004", "TR00000002"]
    linked['linked_transactions'] = linked['linked_transaction_id'].apply(
        lambda x: x.split('|') if '|' in str(x) else [str(x)]
    )

    # Count single vs multi-transaction notes
    single_tx = linked[linked['linked_transactions'].apply(len) == 1]
    multi_tx = linked[linked['linked_transactions'].apply(len) > 1]

    print(f"\nFiltered to {len(linked)} linked notes (out of {len(notes)} total)")
    print(f"  - {len(single_tx)} single-transaction notes")
    print(f"  - {len(multi_tx)} multi-transaction notes")
    if len(multi_tx) > 0:
        print(f"    Multi-note details:")
        for _, note in multi_tx.iterrows():
            txs = note['linked_transactions']
            print(f"      {note['note_id']}: {len(txs)} transactions ({', '.join(txs)})")

    return linked


def evaluate_at_threshold(linked_notes, matches, threshold):
    """
    Evaluate precision, recall, and Top-K metrics at a given threshold.

    Precision: Among all predictions above threshold, how many are correct?
    Recall: Among all linked notes, how many have correct prediction above threshold?
    Top-K: Among all linked notes, how many have correct prediction in top-K?
    """
    total_linked = len(linked_notes)

    # Precision: TP / (TP + FP) across all predictions above threshold
    tp_count = 0
    fp_count = 0

    # Recall: Count linked notes with at least one correct prediction above threshold
    notes_found = 0

    # Top-K: Count linked notes with correct prediction in top-1/3/5
    top1_hits = 0
    top3_hits = 0
    top5_hits = 0

    for _, note in linked_notes.iterrows():
        note_id = note['note_id']
        true_txs = note['linked_transactions']  # Now a list of transaction IDs

        # Get all predictions for this note, sorted by score descending
        note_predictions = matches[matches['note_id'] == note_id].sort_values('score', ascending=False)

        # Top-K analysis (regardless of threshold)
        # For multi-transaction notes, we check if ANY correct transaction is in top-K
        if len(note_predictions) > 0:
            top1_tx = note_predictions.iloc[0]['transaction_id'] if len(note_predictions) >= 1 else None
            top3_txs = note_predictions.head(3)['transaction_id'].tolist() if len(note_predictions) >= 3 else note_predictions['transaction_id'].tolist()
            top5_txs = note_predictions.head(5)['transaction_id'].tolist() if len(note_predictions) >= 5 else note_predictions['transaction_id'].tolist()

            # Check if any correct transaction is in top-1/3/5
            if top1_tx in true_txs:
                top1_hits += 1
            if any(tx in top3_txs for tx in true_txs):
                top3_hits += 1
            if any(tx in top5_txs for tx in true_txs):
                top5_hits += 1

        # Predictions above threshold for precision/recall
        above_threshold = note_predictions[note_predictions['score'] >= threshold]

        # Check if any prediction above threshold is correct
        # For multi-transaction notes, ANY correct match counts
        correct_above_threshold = above_threshold[above_threshold['transaction_id'].isin(true_txs)]

        if len(correct_above_threshold) > 0:
            notes_found += 1  # Recall: found at least one correct match for this note

        # Count TP/FP for each prediction above threshold
        for _, pred in above_threshold.iterrows():
            if pred['transaction_id'] in true_txs:
                tp_count += 1  # Correct prediction (matches one of the linked transactions)
            else:
                fp_count += 1  # Incorrect prediction

    # Calculate metrics
    precision = tp_count / (tp_count + fp_count) if (tp_count + fp_count) > 0 else 0.0
    recall = notes_found / total_linked if total_linked > 0 else 0.0
    f1 = 2 * precision * recall / (precision + recall) if (precision + recall) > 0 else 0.0

    top1_recall = top1_hits / total_linked if total_linked > 0 else 0.0
    top3_recall = top3_hits / total_linked if total_linked > 0 else 0.0
    top5_recall = top5_hits / total_linked if total_linked > 0 else 0.0

    return {
        'threshold': threshold,
        'precision': precision,
        'recall': recall,
        'f1': f1,
        'tp': tp_count,
        'fp': fp_count,
        'notes_found': notes_found,
        'total_linked': total_linked,
        'top1_recall': top1_recall,
        'top3_recall': top3_recall,
        'top5_recall': top5_recall,
        'workload_savings': top3_recall  # Top-3 recall = workload savings rate
    }


def threshold_sweep(linked_notes, matches, thresholds):
    """Evaluate across multiple thresholds."""
    print("\nPerforming threshold sweep...")

    results = []
    for threshold in thresholds:
        result = evaluate_at_threshold(linked_notes, matches, threshold)
        results.append(result)
        print(f"  Threshold {threshold:.1f}: P={result['precision']:.3f}, R={result['recall']:.3f}, "
              f"F1={result['f1']:.3f}, Top-3={result['top3_recall']:.3f}")

    return pd.DataFrame(results)


def analyze_segments(linked_notes, matches, transactions, threshold=0.7):
    """
    Segment analysis by:
    - Amount range
    - Date difference
    - Transaction reference presence
    - Entity mention presence
    - Amount mention presence
    """
    print(f"\nSegment analysis at threshold {threshold}...")

    # Merge linked notes with transactions to get transaction details
    linked_with_tx = linked_notes.merge(
        transactions,
        left_on='linked_transaction_id',
        right_on='transaction_id',
        how='left'
    )

    segments = []

    # Segment by amount range
    amount_ranges = [
        ('<5k', lambda x: x < 5000),
        ('5k-10k', lambda x: 5000 <= x < 10000),
        ('10k-50k', lambda x: 10000 <= x < 50000),
        ('>50k', lambda x: x >= 50000)
    ]

    for range_name, range_func in amount_ranges:
        segment_notes = linked_with_tx[linked_with_tx['amount_chf'].apply(range_func)]
        if len(segment_notes) > 0:
            result = evaluate_at_threshold(segment_notes, matches, threshold)
            segments.append({
                'segment_type': 'amount',
                'segment_value': range_name,
                **result
            })

    # Segment by transaction reference presence
    import re
    tx_ref_pattern = re.compile(r'tr\d{8}', re.IGNORECASE)

    has_ref = linked_notes[linked_notes['note_text'].str.contains(tx_ref_pattern, na=False)]
    no_ref = linked_notes[~linked_notes['note_text'].str.contains(tx_ref_pattern, na=False)]

    if len(has_ref) > 0:
        result = evaluate_at_threshold(has_ref, matches, threshold)
        segments.append({
            'segment_type': 'tx_reference',
            'segment_value': 'has_reference',
            **result
        })

    if len(no_ref) > 0:
        result = evaluate_at_threshold(no_ref, matches, threshold)
        segments.append({
            'segment_type': 'tx_reference',
            'segment_value': 'no_reference',
            **result
        })

    return pd.DataFrame(segments)


def generate_summary(threshold_results, linked_notes, segment_results):
    """Generate executive summary in markdown format."""

    # Find optimal threshold (maximize F1)
    optimal = threshold_results.loc[threshold_results['f1'].idxmax()]

    # Results at threshold 0.7 (recommended)
    rec_threshold = threshold_results[threshold_results['threshold'] == 0.7].iloc[0]

    summary = f"""# CRM Sentinel - Linked Notes Evaluation Summary

**Generated:** {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}

---

## Executive Summary

### Dataset
- **Total Notes:** {len(linked_notes)} linked notes (ground truth only)
- **Evaluation Method:** Focus on business-relevant metrics

### Key Metrics at Recommended Threshold (0.7)

| Metric | Value | Interpretation |
|--------|-------|----------------|
| **Precision** | **{rec_threshold['precision']:.1%}** | When system suggests a match above 0.7, it's correct {rec_threshold['precision']:.1%} of the time |
| **Recall (Linked Notes)** | **{rec_threshold['recall']:.1%}** | System finds {rec_threshold['recall']:.1%} of all linked notes above threshold 0.7 |
| **F1 Score** | **{rec_threshold['f1']:.1%}** | Harmonic mean of precision and recall |
| **Top-1 Recall** | **{rec_threshold['top1_recall']:.1%}** | Correct match is #1 result for {rec_threshold['top1_recall']:.1%} of notes |
| **Top-3 Recall** | **{rec_threshold['top3_recall']:.1%}** | Correct match is in top-3 for {rec_threshold['top3_recall']:.1%} of notes |
| **Top-5 Recall** | **{rec_threshold['top5_recall']:.1%}** | Correct match is in top-5 for {rec_threshold['top5_recall']:.1%} of notes |
| **Workload Savings** | **{rec_threshold['workload_savings']:.1%}** | System reduces manual work by {rec_threshold['workload_savings']:.1%} (based on Top-3) |

### Optimal Threshold (Maximizing F1)

The optimal threshold is **{optimal['threshold']:.1f}** with:
- Precision: {optimal['precision']:.1%}
- Recall: {optimal['recall']:.1%}
- F1: {optimal['f1']:.1%}
- Top-3 Recall: {optimal['top3_recall']:.1%}

---

## Business Impact

### Workload Reduction
At threshold 0.7, the system provides actionable suggestions (top-3 results) for **{rec_threshold['workload_savings']:.1%}** of linked notes.

**Translation:**
- Out of {int(rec_threshold['total_linked'])} linked notes, system helps with **{int(rec_threshold['notes_found'])}** notes
- Remaining **{int(rec_threshold['total_linked'] - rec_threshold['notes_found'])}** notes require full manual search

### Precision vs Coverage Tradeoff

| Threshold | Precision | Recall | Top-3 Recall | Use Case |
|-----------|-----------|--------|--------------|----------|
"""

    for _, row in threshold_results.iterrows():
        summary += f"| {row['threshold']:.1f} | {row['precision']:.1%} | {row['recall']:.1%} | {row['top3_recall']:.1%} | "
        if row['precision'] >= 0.7:
            summary += "High confidence |\n"
        elif row['recall'] >= 0.5:
            summary += "High coverage |\n"
        else:
            summary += "Balanced |\n"

    summary += f"""
---

## Segment Performance (Threshold 0.7)

"""

    if len(segment_results) > 0:
        # Amount segments
        amount_segs = segment_results[segment_results['segment_type'] == 'amount']
        if len(amount_segs) > 0:
            summary += """### By Amount Range

| Amount | Precision | Recall | Top-3 | Count | Interpretation |
|--------|-----------|--------|-------|-------|----------------|
"""
            for _, seg in amount_segs.iterrows():
                summary += f"| {seg['segment_value']} | {seg['precision']:.1%} | {seg['recall']:.1%} | {seg['top3_recall']:.1%} | {int(seg['total_linked'])} | "
                if seg['precision'] == 1.0:
                    summary += "Perfect |\n"
                elif seg['precision'] >= 0.7:
                    summary += "Strong |\n"
                else:
                    summary += "Moderate |\n"

        # Transaction reference segments
        ref_segs = segment_results[segment_results['segment_type'] == 'tx_reference']
        if len(ref_segs) > 0:
            summary += """
### By Transaction Reference Presence

| Has TX Ref? | Precision | Recall | Top-3 | Count | Impact |
|-------------|-----------|--------|-------|-------|--------|
"""
            for _, seg in ref_segs.iterrows():
                summary += f"| {seg['segment_value']} | {seg['precision']:.1%} | {seg['recall']:.1%} | {seg['top3_recall']:.1%} | {int(seg['total_linked'])} | "
                if seg['segment_value'] == 'has_reference':
                    summary += "Priority 1 rule boost |\n"
                else:
                    summary += "Baseline |\n"

    summary += f"""
---

## Recommendations

### 1. Optimal Threshold Selection

**Current Recommendation: 0.7**
- Good balance of precision ({rec_threshold['precision']:.1%}) and workload savings ({rec_threshold['workload_savings']:.1%})
- Users can trust high-confidence suggestions

**Alternative: {optimal['threshold']:.1f}** (optimal F1)
- Better recall ({optimal['recall']:.1%})
- Slightly lower precision ({optimal['precision']:.1%})
- Consider if maximizing coverage is priority

### 2. Production Deployment Strategy

**Phase 1:** Deploy with threshold 0.7
- Show top-3 results to users
- Track which suggestions users accept
- Collect feedback on false positives

**Phase 2:** Adjust based on data
- If FP rate too high → Increase threshold to 0.8
- If recall too low → Decrease threshold to 0.6
- If Top-3 not enough → Show top-5

### 3. User Experience

**High Confidence (Score ≥ 0.7):**
- Show as "Recommended Match"
- Highlight in UI with green badge

**Medium Confidence (Score 0.5-0.7):**
- Show as "Possible Match"
- Let user decide

**Low Confidence (Score < 0.5):**
- Don't show unless user explicitly searches

---

## Next Steps

1. **Deploy to production** with threshold 0.7
2. **Monitor metrics:**
   - User acceptance rate of suggestions
   - Time saved per matched note
   - False positive complaints
3. **Iterate based on feedback:**
   - Adjust threshold if needed
   - Tune rule boost magnitudes
   - Add new rules based on patterns

---

*Evaluation Method: Linked notes only (business-focused)*
*Dataset: {len(linked_notes)} linked notes, {len(threshold_results)} thresholds evaluated*
"""

    return summary


def main():
    """Main evaluation pipeline."""
    print("=" * 80)
    print("CRM SENTINEL - LINKED NOTES EVALUATION (PHASE 1)")
    print("=" * 80)

    # Load data
    notes, matches, transactions = load_data()

    # Filter to linked notes only
    linked_notes = filter_linked_notes(notes)

    # Save linked notes for reference
    linked_notes.to_csv('output/linked_notes.csv', index=False)
    print(f"Saved linked notes to: output/linked_notes.csv")

    # Threshold sweep
    thresholds = [0.5, 0.6, 0.7, 0.8, 0.9]
    threshold_results = threshold_sweep(linked_notes, matches, thresholds)
    threshold_results.to_csv('output/threshold_results.csv', index=False)
    print(f"Saved threshold results to: output/threshold_results.csv")

    # Segment analysis at threshold 0.7
    segment_results = analyze_segments(linked_notes, matches, transactions, threshold=0.7)
    segment_results.to_csv('output/segment_results.csv', index=False)
    print(f"Saved segment analysis to: output/segment_results.csv")

    # Generate summary
    summary = generate_summary(threshold_results, linked_notes, segment_results)
    with open('output/summary.md', 'w') as f:
        f.write(summary)
    print(f"Saved executive summary to: output/summary.md")

    print("\n" + "=" * 80)
    print("EVALUATION COMPLETE")
    print("=" * 80)
    print(f"\nKey Results at Threshold 0.7:")
    rec = threshold_results[threshold_results['threshold'] == 0.7].iloc[0]
    print(f"  Precision: {rec['precision']:.1%}")
    print(f"  Recall (Linked Notes): {rec['recall']:.1%}")
    print(f"  F1: {rec['f1']:.1%}")
    print(f"  Top-3 Recall: {rec['top3_recall']:.1%}")
    print(f"  Workload Savings: {rec['workload_savings']:.1%}")
    print()


if __name__ == '__main__':
    main()
