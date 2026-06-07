# Old Alerts UI - Design Reference

**Date:** 2025-12-16
**Status:** Archived - Components removed, new system under development

---

## Overview

This document captures the key design decisions and UI patterns from the old alerts system before it was removed. The old system was built for a different alert schema and is incompatible with the new backend alert structure.

**Why removed:**
- Old alert schema used `status`, `timestamp`, `rule_triggered`, `is_invalid`, `invalid_reason`
- New schema uses `is_open`, `created_at`, `rule_name`, `dismissed_reason`, `cleared_by_matching`
- Old API endpoints (`resolveAlert`, `reopenAlert`) no longer exist
- Components imported `RiskRadarChart` and `ReverificationModal` which are specific to old workflow

---

## Components Removed

### 1. RecentAlerts Dashboard Widget
**Location:** `src/app/app-ui/OLD_ALERTS/RecentAlerts.tsx`

**Purpose:** Dashboard widget showing the 5 most recent alerts

**Key Design Choices:**

#### Data Fetching
- Fetched all alerts, sorted by `timestamp` descending, took top 5
- Used `useEffect` with empty dependency array for initial load
- Error handling with user-friendly messages

#### Visual Design
- **Card-based layout** with white background, subtle shadow
- **Gradient title**: "Alerts Center" with linear gradient text effect
- **Empty state**: Green check icon with "All clear!" message
- **Framer Motion animations**: Staggered fade-in for each alert (50ms delay between items)

#### Alert Item Display
```tsx
- Left accent bar (blue gradient) on hover
- Rule name (bold, hover → blue)
- Status badge:
  - Invalid: slate-200 bg, slate-700 text
  - Open: amber-50 bg, amber-700 text, pulsing animation
  - Resolved: emerald-50 bg, emerald-700 text
- Alert ID (truncated to 8 chars, monospace)
- Timestamp (Swiss German format: dd.MM.yyyy HH:mm)
- Invalid reason (red badge if present)
- Hover effects: shadow increase, border color change, arrow slide
```

#### Link Behavior
- Each alert linked to `/alerts/${alert.id}` detail page
- Used anchor tags (`<a>`) instead of Next.js `<Link>` (could be improved)

---

### 2. AlertsList Full Page
**Location:** `src/app/app-ui/OLD_ALERTS/AlertsList.tsx`

**Purpose:** Full-page view with filtering, stats, charts, and pagination

**Key Design Choices:**

#### Stats Cards (Top Section)
4 cards in responsive grid:
1. **Total Alerts**: Bell icon, total count, "+12% from last month"
2. **Active High Risk**: Rose-colored, shows open alerts, "Requires immediate attention"
3. **Resolved Today**: Emerald-colored, shows resolved count, "Efficiency +5%"
4. **System Status**: Gradient background (indigo → violet), "Operational", "Scanned 14k transactions"

**Note:** Hardcoded metrics (+12%, +5%) - should be dynamic in new system

#### Charts Section
**Alert Volume Trend (Area Chart):**
- Last 7 days of alert volume
- Blue gradient fill under curve (#6366f1)
- Recharts `AreaChart` with smooth monotone interpolation
- Clean axis styling (no lines, slate-600 labels)

**Risk Distribution (Donut Chart):**
- Classified alerts by rule name into High/Medium/Low risk
- High: HIGH_RISK_JURISDICTION, SMURFING (rose-500)
- Medium: LARGE_VALUE_TRANSACTION, PASS_THROUGH, UNUSUAL_PATTERN (amber-500)
- Low: Everything else (emerald-500)
- Center text shows total count
- Custom tooltip with percentage

**New system consideration:** Risk classification should come from backend `rule_details` metadata

#### Filtering & Search
- **Status Filter**: Toggle buttons (ALL, OPEN, RESOLVED)
  - Pill-style design with slate background
  - Active state: white bg with shadow
- **Search Input**: Magnify icon, searches rule_triggered and ID
- Filters reset pagination to page 1

#### Alert List Items
- **Grid layout** (12 columns):
  - Col 1-4: Icon + Rule name + ID
  - Col 5-7: Status badge
  - Col 8-10: Timestamp
  - Col 11-12: "View Details" link
- **Icon color coding**:
  - Resolved: emerald bg, check-circle icon
  - Open: red bg, alert-octagon icon
- **Hover effects**:
  - Background → blue-50/30
  - Border → blue-200
  - Left accent bar (blue → purple gradient) appears
  - "View Details" link slides right
- **Framer Motion**: Staggered entry animations (30ms delay)

#### Pagination
- 20 items per page
- Shows "X to Y of Z results"
- Previous/Next buttons (disabled states)
- Smooth scroll to top on page change

---

### 3. RiskRadarChart Component
**Location:** `src/app/app-ui/OLD_ALERTS/RiskRadarChart.tsx`

**Purpose:** Radar chart visualizing risk scores across 5 dimensions

**Key Design Choices:**

#### Data Structure
```typescript
{
  subject: string;      // Dimension name (Amount, Frequency, etc.)
  A: number;           // Risk score (0-100)
  fullMark: number;    // Always 100
  explanation?: string; // Human-readable explanation
}
```

#### Dimensions Tracked
1. **Amount**: Deviations from typical transaction size
2. **Frequency**: Transaction frequency anomalies
3. **Counterparty**: Counterparty risk assessment
4. **Velocity**: Speed of fund movement (layering detection)
5. **Jurisdiction**: Geographic risk

#### Visual Styling
- Blue theme (#3b82f6 stroke, 40% opacity fill)
- Slate grid lines (#e2e8f0)
- No radius axis labels (cleaner look)
- Slate-600 angle labels

#### Tooltip Design
- White background with shadow
- Shows dimension name, score (large), and explanation
- Max width 200px for readability

#### Usage Context
- Was displayed in alert detail page sidebar
- Scores were **deterministically generated** from alert ID (seeded RNG)
- **Not real data** - just for demo purposes

**New system consideration:** If we rebuild this, use actual `rule_details` JSONB data from backend

---

### 4. ReverificationModal Component
**Location:** `src/app/app-ui/OLD_ALERTS/ReverificationModal.tsx`

**Purpose:** Security verification dialog for resolving/reopening alerts

**Key Design Choices:**

#### Security Pattern
- Required user to re-enter credentials before sensitive actions
- Used `loginUser` API to verify credentials
- Cleared password from state after verification
- Prevented accidental or unauthorized alert resolution

#### Visual Design
- **Modal overlay**: Dark backdrop with blur effect
- **Slide-in animation**: Fade + zoom from 95% scale
- **Header**: Blue shield icon, close button
- **Info banner**: Blue background explaining the action
- **Form fields**:
  - Username input with account icon
  - Password input with lock icon
  - Both have focus states (ring-2, blue-500)
- **Buttons**:
  - Cancel: slate border, hover bg-slate-50
  - Verify: blue-600 bg, hover blue-700, shadow

#### UX Flow
```
1. User clicks "Resolve" or "Reopen" on alert
2. Modal opens, prompts for credentials
3. User enters username + password
4. On submit: calls loginUser API
5. If success: calls onSuccess callback, closes modal
6. If error: shows "Invalid credentials" message
7. Parent component then calls resolveAlert/reopenAlert API
```

#### Error Handling
- Red banner with alert icon on auth failure
- Slide-in animation for error message
- Disabled submit button while loading
- Loading state shows spinner + "Verifying..."

**New system consideration:**
- Dismiss action in new schema doesn't need re-auth (just requires reason)
- Could repurpose this pattern for other sensitive operations
- Consider using existing auth context instead of re-login

---

## API Integration Patterns

### Old Alert Schema (Used by These Components)
```typescript
interface OldAlert {
  id: string;
  timestamp: string;           // → created_at in new schema
  status: "OPEN" | "RESOLVED"; // → is_open: boolean in new schema
  rule_triggered: string;      // → rule_name in new schema
  is_invalid: boolean | null;  // Removed in new schema
  invalid_reason: string | null; // → dismissed_reason in new schema
  alert_transactions?: {       // Still exists in new schema
    transaction: Transaction;
  }[];
}
```

### Old API Endpoints (No Longer Available)
- `resolveAlert(id: string)` - Marked alert as resolved
- `reopenAlert(id: string)` - Reopened resolved alert
- `invalidateAlert(id: string, reason: string)` - Marked as false positive

### New API Endpoints (Current)
- `getAlerts(filters?: AlertFilters)` - Fetch alerts with optional filters
- `getAlert(id: string)` - Fetch single alert with transactions
- `dismissAlert(id: string, reason: string)` - Dismiss alert (replaces resolve/invalidate)
- `evaluateAlerts()` - Trigger alert evaluation
- `autoClearAlerts()` - Trigger auto-clear logic

---

## Design System Tokens

### Color Palette
```
Primary: #3b82f6 (blue-500)
Gradients: linear-gradient(to-br, from-indigo-600, to-violet-700)
Accent: blue-500 → purple-500 (left accent bars)

Status Colors:
- Open/Warning: amber-50 bg, amber-700 text, amber-200 border
- Resolved/Success: emerald-50 bg, emerald-700 text, emerald-200 border
- Invalid: slate-200 bg, slate-700 text, slate-300 border
- Error/High Risk: rose-50 bg, rose-700 text, rose-200 border

Text:
- Primary: slate-900
- Secondary: slate-600
- Muted: slate-500
- Disabled: slate-400
```

### Typography
```
Titles: font-bold, tracking-tight
Headings: font-semibold, uppercase, tracking-wider
Body: Default
Code/IDs: font-mono
Small labels: text-xs, uppercase, tracking-wider
```

### Shadows
```
Card default: shadow-sm
Card hover: shadow-md
Modal: shadow-2xl
Stats cards: shadow-md, hover:shadow-lg
```

### Animations
```
Transitions: transition-all duration-200
Hover transforms: translate-x-1, scale-105
Loading spinners: animate-spin
Staggered lists: delay: index * 0.03 (AlertsList) or 0.05 (RecentAlerts)
Modal entry: fade-in + zoom-in-95
```

---

## Dependencies Used

### UI Libraries
- **@iconify/react** - Icon system (mdi icons mostly)
- **framer-motion** - Animation library for lists and modals
- **recharts** - Chart library (AreaChart, PieChart, RadarChart)
- **@/components/ui/card** - Shadcn/ui card components

### Iconify Icons Used
```
mdi:loading - Loading spinners
mdi:arrow-left - Back navigation
mdi:arrow-right - Forward indicators
mdi:shield-alert-outline - Alert header
mdi:check-circle - Success/resolved
mdi:alert-octagon - Open alerts
mdi:bell-outline - Notifications
mdi:magnify - Search
mdi:calendar-blank-outline - Dates
mdi:clock-outline - Times
mdi:shield-lock-outline - Security
mdi:information-outline - Info banners
mdi:account - User input
mdi:lock - Password input
```

---

## Responsive Design Patterns

### Breakpoints Used
- **Mobile-first**: Base styles for mobile
- **md:**: Tablets (768px+)
  - Stats grid: 1 → 2 columns
  - Filter toolbar: column → row layout
- **lg:**: Desktop (1024px+)
  - Stats grid: 2 → 4 columns
  - Charts grid: 1 → 3 columns (2:1 ratio for trend vs pie)

### Mobile Considerations
- Filter buttons wrap on small screens
- Search bar full-width on mobile, fixed width (w-64) on desktop
- Chart heights fixed (300px) to prevent layout shifts
- Pagination controls stay horizontal (buttons side-by-side)

---

## Lessons Learned & Recommendations for New System

### What Worked Well ✅
1. **Staggered animations** created polished feel
2. **Color-coded status badges** made scanning easy
3. **Left accent bars** on hover provided subtle visual feedback
4. **Empty states** with icons prevented confusion
5. **Pagination** kept list performant
6. **Filtering by status** was intuitive
7. **Card-based layouts** felt modern and clean

### What Could Be Improved 🔄
1. **Hardcoded metrics** (+12% growth, etc.) - should be calculated from real data
2. **Risk classification logic** in frontend - should come from backend
3. **Deterministic fake radar chart data** - use real rule_details from backend
4. **Re-authentication for every action** - consider using auth context token validation instead
5. **Alert detail page used seeded RNG** for risk scores - not real risk assessment
6. **No real-time updates** - could add WebSocket or polling for live alerts
7. **Accessibility** - missing ARIA labels, keyboard navigation not fully implemented

### New System Architecture Recommendations

#### Component Structure
```
app/app-ui/ui-sections/
  ├── RecentAlerts.tsx        # Dashboard widget (5 most recent, open alerts)

app/app-ui/
  ├── AlertsList.tsx          # Full page with filters
  └── AlertDetail.tsx         # Single alert detail page

components/
  └── charts/
      └── RuleDetailsChart.tsx  # Visualize rule_details JSONB (if needed)
```

#### Data Flow
1. **RecentAlerts**: `getAlerts({ is_open: true, limit: 5 })`
2. **AlertsList**: `getAlerts(filters)` with client-side pagination
3. **AlertDetail**: `getAlert(id)` to get alert + transactions

#### New Features to Consider
- **Auto-clear badge**: Show `cleared_by_matching` with distinct color (e.g., purple)
- **Direction badges**: Show Credit/Debit if direction is set
- **Evaluation window display**: Show time range for alert
- **Transaction count badges**: "3/5 matched" (matched_transaction_count / total_transaction_count)
- **Rule details expansion**: Accordion or modal to view JSONB metadata
- **Bulk actions**: Select multiple alerts, dismiss in batch
- **Export**: Download alerts as CSV/PDF
- **Real-time updates**: WebSocket for new alerts

#### Styling Consistency
- Reuse color palette and shadows from old system
- Keep staggered animations pattern
- Keep left accent bars on hover
- Add new colors:
  - Auto-cleared: purple-50 bg, purple-700 text
  - Credit direction: emerald badge
  - Debit direction: rose badge

---

## Migration Path

### Phase 1: Dashboard Widget (RecentAlerts)
- Build minimal version showing 5 recent open alerts
- Display: rule_name, created_at, direction badge (if set)
- Show auto-clear indicator for cleared_by_matching alerts
- Link to detail page (build in Phase 3)

### Phase 2: Full List Page (AlertsList)
- Stats cards: total, open, auto-cleared, dismissed
- Filters: is_open, rule_name, client_id, cleared_by_matching
- Search by rule_name, alert ID
- Pagination (20 per page)
- Charts (optional): Alert volume trend, rule distribution

### Phase 3: Detail Page (AlertDetail)
- Alert metadata: rule_name, direction, evaluation windows
- Rule details JSONB display (formatted JSON or key-value table)
- Linked transactions list with match indicators
- Dismiss button with reason textarea
- Auto-cleared badge if applicable

### Phase 4: Polish & Enhancements
- Add animations (framer-motion)
- Add real-time updates
- Add bulk actions
- Add export functionality
- Improve accessibility (ARIA labels, keyboard nav)

---

## Files Removed

```
frontend/nextjs/src/app/app-ui/OLD_ALERTS/
├── RecentAlerts.tsx          ❌ Deleted
├── AlertsList.tsx            ❌ Deleted
├── RiskRadarChart.tsx        ❌ Deleted
└── ReverificationModal.tsx   ❌ Deleted

frontend/nextjs/src/app/OLD_ALERTS_PAGE/
└── [id]/page.tsx             ❌ Deleted
```

All files archived in git history. This document preserves design decisions.

---

## Summary

The old alerts UI was well-designed with smooth animations, clear visual hierarchy, and intuitive filtering. The main issues were:
1. **Schema mismatch** with new backend
2. **Hardcoded demo data** instead of real metrics
3. **Unnecessary re-authentication** for simple actions

The new system should preserve the polished UX patterns while adapting to the new alert schema and leveraging real backend data (rule_details JSONB, auto-clear functionality, direction-based alerts).
