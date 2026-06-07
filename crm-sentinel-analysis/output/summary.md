# CRM Sentinel - Linked Notes Evaluation Summary

**Generated:** 2025-12-10 18:59:14

---

## Executive Summary

### Dataset
- **Total Notes:** 36 linked notes (ground truth only)
- **Evaluation Method:** Focus on business-relevant metrics

### Key Metrics at Recommended Threshold (0.7)

| Metric | Value | Interpretation |
|--------|-------|----------------|
| **Precision** | **81.4%** | When system suggests a match above 0.7, it's correct 81.4% of the time |
| **Recall (Linked Notes)** | **97.2%** | System finds 97.2% of all linked notes above threshold 0.7 |
| **F1 Score** | **88.6%** | Harmonic mean of precision and recall |
| **Top-1 Recall** | **100.0%** | Correct match is #1 result for 100.0% of notes |
| **Top-3 Recall** | **100.0%** | Correct match is in top-3 for 100.0% of notes |
| **Top-5 Recall** | **100.0%** | Correct match is in top-5 for 100.0% of notes |
| **Workload Savings** | **100.0%** | System reduces manual work by 100.0% (based on Top-3) |

### Optimal Threshold (Maximizing F1)

The optimal threshold is **0.8** with:
- Precision: 100.0%
- Recall: 97.2%
- F1: 98.6%
- Top-3 Recall: 100.0%

---

## Business Impact

### Workload Reduction
At threshold 0.7, the system provides actionable suggestions (top-3 results) for **100.0%** of linked notes.

**Translation:**
- Out of 36 linked notes, system helps with **35** notes
- Remaining **1** notes require full manual search

### Precision vs Coverage Tradeoff

| Threshold | Precision | Recall | Top-3 Recall | Use Case |
|-----------|-----------|--------|--------------|----------|
| 0.5 | 9.6% | 100.0% | 100.0% | High coverage |
| 0.6 | 43.4% | 97.2% | 100.0% | High coverage |
| 0.7 | 81.4% | 97.2% | 100.0% | High confidence |
| 0.8 | 100.0% | 97.2% | 100.0% | High confidence |
| 0.9 | 100.0% | 88.9% | 100.0% | High confidence |

---

## Segment Performance (Threshold 0.7)

### By Amount Range

| Amount | Precision | Recall | Top-3 | Count | Interpretation |
|--------|-----------|--------|-------|-------|----------------|
| <5k | 73.1% | 100.0% | 100.0% | 19 | Strong |
| 5k-10k | 100.0% | 100.0% | 100.0% | 5 | Perfect |
| 10k-50k | 100.0% | 100.0% | 100.0% | 7 | Perfect |

### By Transaction Reference Presence

| Has TX Ref? | Precision | Recall | Top-3 | Count | Impact |
|-------------|-----------|--------|-------|-------|--------|
| no_reference | 81.4% | 97.2% | 100.0% | 36 | Baseline |

---

## Recommendations

### 1. Optimal Threshold Selection

**Current Recommendation: 0.7**
- Good balance of precision (81.4%) and workload savings (100.0%)
- Users can trust high-confidence suggestions

**Alternative: 0.8** (optimal F1)
- Better recall (97.2%)
- Slightly lower precision (100.0%)
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
*Dataset: 36 linked notes, 5 thresholds evaluated*
