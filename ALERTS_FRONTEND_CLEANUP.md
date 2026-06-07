# Alerts Frontend Cleanup

**Date:** 2025-12-16
**Status:** ✅ COMPLETE - Ready for new component development

---

## Summary

Successfully cleaned up old alert frontend code and updated types/API to match the new backend schema.

---

## Changes Made

### 1. ✅ Moved Old Alert UI Files

**Archived to reference folders:**
- `frontend/nextjs/src/app/app-ui/AlertsList.tsx` → `frontend/nextjs/src/app/app-ui/OLD_ALERTS/AlertsList.tsx`
- `frontend/nextjs/src/app/app-ui/ui-sections/RecentAlerts.tsx` → `frontend/nextjs/src/app/app-ui/OLD_ALERTS/RecentAlerts.tsx`
- `frontend/nextjs/src/app/alerts/[id]/page.tsx` → `frontend/nextjs/src/app/OLD_ALERTS_PAGE/[id]/page.tsx`

**Why moved:** Old components used incompatible schema (status, timestamp, rule_triggered, is_invalid, etc.)

---

### 2. ✅ Updated Alert Type Interface

**File:** `frontend/nextjs/src/types/transaction.ts`

**New Alert Interface:**
```typescript
export interface Alert {
  id: string;
  client_id: string;
  rule_name: string;                      // was: rule_triggered
  rule_version: string;                   // NEW
  rule_details: Record<string, any>;      // NEW - JSONB metadata
  evaluation_window_start: string | null; // NEW
  evaluation_window_end: string | null;   // NEW
  direction: "Credit" | "Debit" | null;   // NEW
  is_open: boolean;                       // was: status
  dismissed_reason: string | null;        // was: invalid_reason
  dismissed_at: string | null;            // was: invalidated_at
  cleared_by_matching: boolean;           // NEW
  cleared_at: string | null;              // NEW
  matched_transaction_count: number;      // NEW
  total_transaction_count: number;        // NEW
  created_at: string;                     // was: timestamp
  transactions?: Transaction[];           // Populated from backend
}
```

**New AlertTransaction Interface:**
```typescript
export interface AlertTransaction {
  alert_id: string;
  transaction_id: string;
  transaction?: Transaction & { client?: any };
}
```

---

### 3. ✅ Updated Alert API Functions

**File:** `frontend/nextjs/src/lib/api.ts`

**New AlertFilters Interface:**
```typescript
export interface AlertFilters {
  is_open?: boolean;           // was: status
  rule_name?: string;          // was: rule_triggered
  client_id?: string;          // NEW
  date_from?: string;
  date_to?: string;
  cleared_by_matching?: boolean; // NEW
}
```

**Updated Functions:**
- ✅ `getAlerts(filters?: AlertFilters): Promise<Alert[]>` - New filter params
- ✅ `getAlert(id: string): Promise<Alert>` - Unchanged
- ✅ `dismissAlert(id: string, reason: string): Promise<Alert>` - **NEW** (replaces resolve/reopen/invalidate)
- ✅ `evaluateAlerts(): Promise<{created, updated, skipped}>` - **NEW**
- ✅ `autoClearAlerts(): Promise<{cleared_count}>` - **NEW**

**Removed Functions:**
- ❌ `resolveAlert(id)` - Replaced by dismissAlert()
- ❌ `reopenAlert(id)` - Not needed (alerts auto-reopen if new transactions added)
- ❌ `invalidateAlert(id)` - Merged into dismissAlert()

---

### 4. ✅ Minor Fix: Confidence Threshold

**File:** `frontend/nextjs/src/lib/api.ts:356`

**Change:** Updated default confidence threshold from `0.7` to `0.81` to match backend matching logic

```typescript
export async function getNotesForTransaction(
  transactionId: string,
  confidence_threshold: number = 0.81,  // was: 0.7
  limit?: number
)
```

---

## What's Next: Building New Alert Components

### Required Components (in order):

1. **RecentAlerts.tsx** (Dashboard widget)
   - Show 5 most recent open alerts
   - Display rule_name, direction, created_at
   - Show auto-clear indicator if cleared_by_matching
   - Link to detail page

2. **AlertsList.tsx** (Full alerts page)
   - Filter by is_open, rule_name, client_id, cleared_by_matching
   - Show rule_name, direction, client_id, transaction counts
   - Display evaluation windows
   - Show dismissed_reason if dismissed
   - Pagination

3. **AlertDetailPage.tsx** (`/alerts/[id]/page.tsx`)
   - Show full alert details including rule_details JSONB
   - Display all linked transactions (from transactions[] array)
   - Show evaluation_window_start/end
   - Show matched vs total transaction counts
   - Dismiss button (with reason input)
   - If cleared_by_matching, show "Auto-cleared" badge

---

## Key Features to Implement

### 1. Rule Details Visualization (JSONB)

Each alert has rich metadata in `rule_details`:

**Example for SMURFING rule:**
```json
{
  "threshold_amount": "15000.00",
  "threshold_count": 8,
  "window_days": 7,
  "actual_count": 9,
  "time_window": "2024-12-09 to 2024-12-16"
}
```

**Display strategy:**
- Show key-value pairs in a card
- Format Decimals as currency
- Highlight "actual" vs "threshold" values

### 2. Direction Badges

Alerts are now split by Credit/Debit:
- Show "Credit" badge (green) or "Debit" badge (red)
- Filter by direction in AlertsList

### 3. Auto-Clear Indicators

Alerts can be automatically cleared when transactions get matched:
- Show "🔄 Auto-cleared" badge if `cleared_by_matching === true`
- Show `matched_transaction_count / total_transaction_count` progress
- Display `cleared_at` timestamp

### 4. Evaluation Windows

Show time context for each alert:
- `evaluation_window_start` to `evaluation_window_end`
- Helpful for understanding when suspicious activity occurred

---

## Backend Endpoints Available

### GET /alerts/
**Query params:** is_open, rule_name, client_id, date_from, date_to, cleared_by_matching

**Response:**
```json
[{
  "id": "uuid",
  "client_id": "CL000001",
  "rule_name": "SMURFING",
  "rule_version": "1.0",
  "rule_details": {...},
  "evaluation_window_start": "2024-12-09T00:00:00",
  "evaluation_window_end": "2024-12-16T23:59:59",
  "direction": "Credit",
  "is_open": true,
  "dismissed_reason": null,
  "dismissed_at": null,
  "cleared_by_matching": false,
  "cleared_at": null,
  "matched_transaction_count": 0,
  "total_transaction_count": 9,
  "created_at": "2024-12-16T10:30:00",
  "transactions": [...]
}]
```

### GET /alerts/{alert_id}
Returns single alert with same structure

### POST /alerts/{alert_id}/dismiss
**Body:** `{"reason": "False positive - legitimate business activity"}`
**Response:** Updated alert object with `dismissed_reason` and `dismissed_at` set

### POST /alerts/evaluate
Triggers rule evaluation for all unmatched transactions
**Response:** `{"created": 2, "updated": 5, "skipped": 1}`

### POST /alerts/auto-clear
Triggers bulk auto-clear for alerts whose transactions are now matched
**Response:** `{"cleared_count": 3}`

---

## Demo Data Available (K8s Database)

Currently in K8s database:
- **16 alerts** generated with demo-optimized thresholds
- **162 transactions** flagged across all 5 AML rules
- All rules have at least 1 alert:
  - Large Value: 2 alerts
  - High-Risk Client: 1 alert (Jane Street)
  - Smurfing: 1 alert
  - Pass-Through: 2 alerts
  - Unusual Patterns: 10 alerts

---

## Next Steps

1. Build **RecentAlerts.tsx** component for dashboard
2. Build **AlertsList.tsx** for full alerts page
3. Build **AlertDetailPage.tsx** for individual alert view
4. Test with demo data in K8s environment
5. Add any missing UI polish (animations, loading states, error handling)

---

## Reference

Old components available in:
- `frontend/nextjs/src/app/app-ui/OLD_ALERTS/`
- `frontend/nextjs/src/app/OLD_ALERTS_PAGE/`

Use for:
- Layout inspiration
- Design patterns
- Component structure ideas

**Don't copy directly** - schema is completely different!
