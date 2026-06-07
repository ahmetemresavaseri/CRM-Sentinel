# CRM Sentinel - Transaction Matching Evaluation

This folder contains the complete evaluation pipeline for the CRM Sentinel transaction-to-note matching system.

## Quick Start

**For complete documentation, see [EVALUATION_SUMMARY.md](EVALUATION_SUMMARY.md)**

### Running the Evaluation

```bash
# 1. Ensure backend microservice is running
# (from /backend directory)
python3 app.py

# 2. Generate match results (2-5 minutes)
python3 process_matches.py

# 3. Evaluate performance
python3 evaluate_linked_notes.py

# 4. View results
cat output/summary.md
```

## Files

**Documentation:**
- `EVALUATION_SUMMARY.md` - Complete evaluation report (implementation, results, findings)

**Scripts:**
- `process_matches.py` - Generate match results via API (sequential, production)
- `process_matches_batch.py` - Batch API version (experimental, not ready)
- `evaluate_linked_notes.py` - Calculate precision, recall, F1, Top-K metrics

**Data:**
- `crm_notes.csv` - 82 CRM notes (36 with ground truth links)
- `transactions_evaluated.csv` - 259 transactions to evaluate
- `match_results.csv` - API match results (generated)

**Results:**
- `output/summary.md` - Executive summary
- `output/threshold_results.csv` - Performance at different thresholds
- `output/segment_results.csv` - Performance by segments
- `output/linked_notes.csv` - Ground truth notes with match results

## Performance Highlights

**Recommended Configuration: Threshold 0.8**

- **Precision:** 100.0% (zero false positives)
- **Recall:** 97.2% (finds 35 out of 36 transactions)
- **F1 Score:** 98.6%
- **Top-1 Recall:** 100.0% (correct match always ranked #1)
- **Top-3 Recall:** 100.0% (correct match always in top-3)

## Requirements

- Python 3.8+
- Backend microservice running on `http://localhost:5173`
- Dependencies: `pandas`, `requests`, `numpy`

For detailed setup instructions, architecture overview, and complete findings, see [EVALUATION_SUMMARY.md](EVALUATION_SUMMARY.md).
