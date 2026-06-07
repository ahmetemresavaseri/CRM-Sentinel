# Multi-Batch Threshold Optimization Report

**Generated:** 2025-12-14 04:25:03

---

## Executive Summary

### Dataset Overview
- **Total Batches Evaluated:** 5
- **Total Linked Notes:** 215
- **Threshold Range:** 0.70 to 0.85 (steps of 0.01)

### Optimal Threshold

**Best Threshold: 0.81** (Maximizing F1 Score)

| Metric | Value |
|--------|-------|
| **Precision** | 97.9% |
| **Recall** | 84.2% |
| **F1 Score** | 90.5% |
| **Top-1 Recall** | 92.0% |
| **Top-3 Recall** | 95.0% |
| **Notes Found** | 181 / 215 |

---

## Threshold Analysis

### Complete Results Table

| Threshold | Precision | Recall | F1 | TP | FP | Notes Found |
|-----------|-----------|--------|----|----|----|----|
| 0.70 | 71.4% | 87.0% | 78.4% | 190 | 76 | 187 |
| 0.71 | 74.2% | 87.0% | 80.1% | 190 | 66 | 187 |
| 0.72 | 77.1% | 86.5% | 81.6% | 189 | 56 | 186 |
| 0.73 | 79.7% | 86.0% | 82.7% | 188 | 48 | 185 |
| 0.74 | 81.7% | 85.6% | 83.6% | 187 | 42 | 184 |
| 0.75 | 83.5% | 85.6% | 84.5% | 187 | 37 | 184 |
| 0.76 | 85.4% | 85.6% | 85.5% | 187 | 32 | 184 |
| 0.77 | 86.2% | 85.6% | 85.9% | 187 | 30 | 184 |
| 0.78 | 90.3% | 85.1% | 87.6% | 186 | 20 | 183 |
| 0.79 | 92.5% | 84.7% | 88.4% | 185 | 15 | 182 |
| 0.80 | 94.4% | 84.7% | 89.3% | 185 | 11 | 182 |
| 0.81 | 97.9% | 84.2% | 90.5% | 184 | 4 | 181 |
| 0.82 | 98.4% | 82.3% | 89.6% | 180 | 3 | 177 |
| 0.83 | 100.0% | 81.4% | 89.7% | 178 | 0 | 175 |
| 0.84 | 100.0% | 80.9% | 89.5% | 177 | 0 | 174 |
| 0.85 | 100.0% | 80.0% | 88.9% | 175 | 0 | 172 |
| 0.86 | 100.0% | 79.5% | 88.6% | 173 | 0 | 171 |

---

## Top 5 Thresholds by F1 Score


### 1. Threshold 0.81
- **F1 Score:** 90.5%
- **Precision:** 97.9%
- **Recall:** 84.2%
- **Top-3 Recall:** 95.0%

### 2. Threshold 0.83
- **F1 Score:** 89.7%
- **Precision:** 100.0%
- **Recall:** 81.4%
- **Top-3 Recall:** 95.0%

### 3. Threshold 0.82
- **F1 Score:** 89.6%
- **Precision:** 98.4%
- **Recall:** 82.3%
- **Top-3 Recall:** 95.0%

### 4. Threshold 0.84
- **F1 Score:** 89.5%
- **Precision:** 100.0%
- **Recall:** 80.9%
- **Top-3 Recall:** 95.0%

### 5. Threshold 0.80
- **F1 Score:** 89.3%
- **Precision:** 94.4%
- **Recall:** 84.7%
- **Top-3 Recall:** 95.0%

---

## Per-Batch Performance

Below shows how each batch performed at the optimal threshold.


| Batch | Precision | Recall | F1 | Linked Notes | Notes Found |
|-------|-----------|--------|----|--------------|----|
| Batch 1 | 100.0% | 97.2% | 98.6% | 36 | 35 |
| Batch 2 | 93.3% | 77.1% | 84.5% | 35 | 27 |
| Batch 3 | 96.6% | 72.2% | 82.6% | 36 | 26 |
| Batch 4 | 100.0% | 88.9% | 94.1% | 45 | 40 |
| Batch 5 | 98.1% | 84.1% | 90.6% | 63 | 53 |

---

## Recommendations

Based on the analysis across all 5 batches:


### For High Precision Applications
- **Recommended Threshold:** 0.81
- **Precision:** 97.9%
- **Recall:** 84.2%
- **F1:** 90.5%

Use this threshold when false positives are costly.


### For Balanced Performance
- **Recommended Threshold:** 0.81
- **Precision:** 97.9%
- **Recall:** 84.2%
- **F1:** 90.5%

This threshold maximizes the F1 score across all batches.

---

*Analysis performed on 5 batches with 215 total linked notes*
