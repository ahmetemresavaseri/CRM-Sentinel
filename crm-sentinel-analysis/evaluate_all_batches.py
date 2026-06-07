#!/usr/bin/env python3
"""
Evaluate all batches to find the optimal threshold.
Tests thresholds from 0.7 to 0.85 in steps of 0.01.
"""

import pandas as pd
import numpy as np
from datetime import datetime

# Batch configurations
BATCHES = [
    {'batch_num': 1, 'notes': 'crm_notes_1.csv', 'matches': 'match_results_1.csv', 'transactions': 'transactions_1.csv'},
    {'batch_num': 2, 'notes': 'crm_notes_2.csv', 'matches': 'match_results_2.csv', 'transactions': 'transactions_2.csv'},
    {'batch_num': 3, 'notes': 'crm_notes_3.csv', 'matches': 'match_results_3.csv', 'transactions': 'transactions_3.csv'},
    {'batch_num': 4, 'notes': 'crm_notes_4.csv', 'matches': 'match_results_4.csv', 'transactions': 'transactions_4.csv'},
    {'batch_num': 5, 'notes': 'crm_notes_5.csv', 'matches': 'match_results_5.csv', 'transactions': 'transactions_5.csv'},
]

# Threshold range
THRESHOLDS = np.arange(0.70, 0.86, 0.01)


def filter_linked_notes(notes):
    """Filter to notes that have transaction links (ground truth)."""
    linked = notes[
        notes['linked_transaction_id'].notna() &
        (notes['linked_transaction_id'] != '')
    ].copy()

    # Expand multi-transaction notes
    linked['linked_transactions'] = linked['linked_transaction_id'].apply(
        lambda x: x.split('|') if '|' in str(x) else [str(x)]
    )

    return linked


def evaluate_at_threshold(linked_notes, matches, threshold):
    """Evaluate precision, recall, and F1 at a given threshold."""
    total_linked = len(linked_notes)

    tp_count = 0
    fp_count = 0
    notes_found = 0

    top1_hits = 0
    top3_hits = 0

    for _, note in linked_notes.iterrows():
        note_id = note['note_id']
        true_txs = note['linked_transactions']

        note_predictions = matches[matches['note_id'] == note_id].sort_values('score', ascending=False)

        # Top-K analysis
        if len(note_predictions) > 0:
            top1_tx = note_predictions.iloc[0]['transaction_id'] if len(note_predictions) >= 1 else None
            top3_txs = note_predictions.head(3)['transaction_id'].tolist() if len(note_predictions) >= 3 else note_predictions['transaction_id'].tolist()

            if top1_tx in true_txs:
                top1_hits += 1
            if any(tx in top3_txs for tx in true_txs):
                top3_hits += 1

        # Predictions above threshold
        above_threshold = note_predictions[note_predictions['score'] >= threshold]
        correct_above_threshold = above_threshold[above_threshold['transaction_id'].isin(true_txs)]

        if len(correct_above_threshold) > 0:
            notes_found += 1

        for _, pred in above_threshold.iterrows():
            if pred['transaction_id'] in true_txs:
                tp_count += 1
            else:
                fp_count += 1

    precision = tp_count / (tp_count + fp_count) if (tp_count + fp_count) > 0 else 0.0
    recall = notes_found / total_linked if total_linked > 0 else 0.0
    f1 = 2 * precision * recall / (precision + recall) if (precision + recall) > 0 else 0.0

    top1_recall = top1_hits / total_linked if total_linked > 0 else 0.0
    top3_recall = top3_hits / total_linked if total_linked > 0 else 0.0

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
    }


def evaluate_batch(batch_config, thresholds):
    """Evaluate a single batch across all thresholds."""
    print(f"\nEvaluating Batch {batch_config['batch_num']}...")

    # Load data
    notes = pd.read_csv(batch_config['notes'])
    matches = pd.read_csv(batch_config['matches'])

    # Filter to linked notes
    linked_notes = filter_linked_notes(notes)
    print(f"  Found {len(linked_notes)} linked notes")

    # Evaluate at each threshold
    results = []
    for threshold in thresholds:
        result = evaluate_at_threshold(linked_notes, matches, threshold)
        result['batch'] = batch_config['batch_num']
        results.append(result)

    return pd.DataFrame(results)


def aggregate_results(all_results):
    """Aggregate results across all batches."""
    print("\nAggregating results across all batches...")

    # Group by threshold
    aggregated = []
    for threshold in THRESHOLDS:
        threshold_data = all_results[all_results['threshold'].round(2) == round(threshold, 2)]

        # Calculate weighted averages (weighted by number of linked notes)
        total_linked = threshold_data['total_linked'].sum()
        total_tp = threshold_data['tp'].sum()
        total_fp = threshold_data['fp'].sum()
        total_notes_found = threshold_data['notes_found'].sum()

        precision = total_tp / (total_tp + total_fp) if (total_tp + total_fp) > 0 else 0.0
        recall = total_notes_found / total_linked if total_linked > 0 else 0.0
        f1 = 2 * precision * recall / (precision + recall) if (precision + recall) > 0 else 0.0

        # Top-K recalls (average across batches)
        avg_top1_recall = threshold_data['top1_recall'].mean()
        avg_top3_recall = threshold_data['top3_recall'].mean()

        aggregated.append({
            'threshold': round(threshold, 2),
            'precision': precision,
            'recall': recall,
            'f1': f1,
            'total_tp': total_tp,
            'total_fp': total_fp,
            'total_notes_found': total_notes_found,
            'total_linked': total_linked,
            'avg_top1_recall': avg_top1_recall,
            'avg_top3_recall': avg_top3_recall,
        })

    return pd.DataFrame(aggregated)


def generate_report(aggregated_results, all_results):
    """Generate a comprehensive report."""

    # Find optimal threshold
    optimal = aggregated_results.loc[aggregated_results['f1'].idxmax()]

    report = f"""# Multi-Batch Threshold Optimization Report

**Generated:** {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}

---

## Executive Summary

### Dataset Overview
- **Total Batches Evaluated:** {len(BATCHES)}
- **Total Linked Notes:** {int(aggregated_results.iloc[0]['total_linked'])}
- **Threshold Range:** 0.70 to 0.85 (steps of 0.01)

### Optimal Threshold

**Best Threshold: {optimal['threshold']:.2f}** (Maximizing F1 Score)

| Metric | Value |
|--------|-------|
| **Precision** | {optimal['precision']:.1%} |
| **Recall** | {optimal['recall']:.1%} |
| **F1 Score** | {optimal['f1']:.1%} |
| **Top-1 Recall** | {optimal['avg_top1_recall']:.1%} |
| **Top-3 Recall** | {optimal['avg_top3_recall']:.1%} |
| **Notes Found** | {int(optimal['total_notes_found'])} / {int(optimal['total_linked'])} |

---

## Threshold Analysis

### Complete Results Table

| Threshold | Precision | Recall | F1 | TP | FP | Notes Found |
|-----------|-----------|--------|----|----|----|----|
"""

    for _, row in aggregated_results.iterrows():
        report += f"| {row['threshold']:.2f} | {row['precision']:.1%} | {row['recall']:.1%} | {row['f1']:.1%} | {int(row['total_tp'])} | {int(row['total_fp'])} | {int(row['total_notes_found'])} |\n"

    report += f"""
---

## Top 5 Thresholds by F1 Score

"""

    top5 = aggregated_results.nlargest(5, 'f1')
    for idx, (_, row) in enumerate(top5.iterrows(), 1):
        report += f"""
### {idx}. Threshold {row['threshold']:.2f}
- **F1 Score:** {row['f1']:.1%}
- **Precision:** {row['precision']:.1%}
- **Recall:** {row['recall']:.1%}
- **Top-3 Recall:** {row['avg_top3_recall']:.1%}
"""

    report += """
---

## Per-Batch Performance

Below shows how each batch performed at the optimal threshold.

"""

    optimal_threshold = optimal['threshold']
    per_batch = all_results[all_results['threshold'].round(2) == round(optimal_threshold, 2)]
    per_batch = per_batch.sort_values('batch')

    report += f"""
| Batch | Precision | Recall | F1 | Linked Notes | Notes Found |
|-------|-----------|--------|----|--------------|----|
"""

    for _, row in per_batch.iterrows():
        precision = row['tp'] / (row['tp'] + row['fp']) if (row['tp'] + row['fp']) > 0 else 0.0
        recall = row['notes_found'] / row['total_linked'] if row['total_linked'] > 0 else 0.0
        f1 = 2 * precision * recall / (precision + recall) if (precision + recall) > 0 else 0.0
        report += f"| Batch {int(row['batch'])} | {precision:.1%} | {recall:.1%} | {f1:.1%} | {int(row['total_linked'])} | {int(row['notes_found'])} |\n"

    report += """
---

## Recommendations

Based on the analysis across all 5 batches:

"""

    # Find thresholds with >90% precision
    high_precision = aggregated_results[aggregated_results['precision'] >= 0.90]
    if len(high_precision) > 0:
        best_high_prec = high_precision.loc[high_precision['f1'].idxmax()]
        report += f"""
### For High Precision Applications
- **Recommended Threshold:** {best_high_prec['threshold']:.2f}
- **Precision:** {best_high_prec['precision']:.1%}
- **Recall:** {best_high_prec['recall']:.1%}
- **F1:** {best_high_prec['f1']:.1%}

Use this threshold when false positives are costly.

"""

    # Find thresholds with >90% recall
    high_recall = aggregated_results[aggregated_results['recall'] >= 0.90]
    if len(high_recall) > 0:
        best_high_rec = high_recall.loc[high_recall['f1'].idxmax()]
        report += f"""
### For High Recall Applications
- **Recommended Threshold:** {best_high_rec['threshold']:.2f}
- **Precision:** {best_high_rec['precision']:.1%}
- **Recall:** {best_high_rec['recall']:.1%}
- **F1:** {best_high_rec['f1']:.1%}

Use this threshold when missing matches is costly.

"""

    report += f"""
### For Balanced Performance
- **Recommended Threshold:** {optimal['threshold']:.2f}
- **Precision:** {optimal['precision']:.1%}
- **Recall:** {optimal['recall']:.1%}
- **F1:** {optimal['f1']:.1%}

This threshold maximizes the F1 score across all batches.

---

*Analysis performed on {len(BATCHES)} batches with {int(aggregated_results.iloc[0]['total_linked'])} total linked notes*
"""

    return report


def main():
    print("="*80)
    print("MULTI-BATCH THRESHOLD OPTIMIZATION")
    print("="*80)
    print(f"Evaluating {len(BATCHES)} batches across {len(THRESHOLDS)} thresholds (0.70 to 0.85)")

    # Evaluate each batch
    all_results = []
    for batch_config in BATCHES:
        batch_results = evaluate_batch(batch_config, THRESHOLDS)
        all_results.append(batch_results)

    # Combine all results
    all_results_df = pd.concat(all_results, ignore_index=True)

    # Aggregate across batches
    aggregated = aggregate_results(all_results_df)

    # Save results
    all_results_df.to_csv('output/all_batches_detailed.csv', index=False)
    aggregated.to_csv('output/all_batches_aggregated.csv', index=False)
    print(f"\nSaved detailed results to: output/all_batches_detailed.csv")
    print(f"Saved aggregated results to: output/all_batches_aggregated.csv")

    # Generate report
    report = generate_report(aggregated, all_results_df)
    with open('output/threshold_optimization_report.md', 'w') as f:
        f.write(report)
    print(f"Saved report to: output/threshold_optimization_report.md")

    # Print summary
    print("\n" + "="*80)
    print("OPTIMIZATION COMPLETE")
    print("="*80)

    optimal = aggregated.loc[aggregated['f1'].idxmax()]
    print(f"\nOptimal Threshold: {optimal['threshold']:.2f}")
    print(f"  Precision: {optimal['precision']:.1%}")
    print(f"  Recall: {optimal['recall']:.1%}")
    print(f"  F1 Score: {optimal['f1']:.1%}")
    print(f"  Top-3 Recall: {optimal['avg_top3_recall']:.1%}")
    print()


if __name__ == '__main__':
    main()
