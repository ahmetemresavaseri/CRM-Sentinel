/**
 * Type definitions for Transaction-related data models
 * These interfaces match the backend SQLAlchemy models
 */

/**
 * Transaction direction types
 */
export type TransactionDirection = "Credit" | "Debit";

/**
 * Transaction type categories
 */
export type TransactionType = "Wire Transfer" | "Cash" | "Cheque" | "Security";

/**
 * Main Transaction interface
 * Matches the Transaction model from backend/src/models/schemas.py
 */
export interface Transaction {
  transaction_id: string;
  client_id: string;
  client_name?: string; // Optional client name from joined Client table
  date: string; // ISO date string from backend
  amount: string; // Numeric as string to preserve precision
  currency: string;
  direction: TransactionDirection;
  type: TransactionType;
  counterparty_bank: string;
  counterparty_entity: string;
}

/**
 * CRM Note interface
 * Matches the CRMNote model from backend/src/models/schemas.py
 */
export interface CRMNote {
  id: string;
  client_id: string;
  date: string; // ISO date string
  text: string;
  client_name?: string;
}

/**
 * Transaction with confidence score
 * Used when displaying matched transactions for a note
 */
export interface TransactionWithConfidence extends Transaction {
  confidence_score: number | null;
}

/**
 * Match interface - links transactions to CRM notes
 * Matches the Match model from backend/src/models/schemas.py
 */
export interface Match {
  id: string;
  transaction_id: string;
  note_id: string;
  confidence_score: string; // Numeric as string to preserve precision
  // Relationships (populated when needed)
  note?: CRMNote;
}

/**
 * Alert interface
 * Matches the NEW Alert model from backend/src/models/schemas.py
 * Updated: 2025-12-16 (Alerts Redesign)
 */
export interface Alert {
  id: string;
  client_id: string;
  rule_name: string;
  rule_version: string;
  rule_details: Record<string, any>; // JSONB field with rule-specific metadata
  evaluation_window_start: string | null; // ISO datetime string
  evaluation_window_end: string | null; // ISO datetime string
  direction: "Credit" | "Debit" | null;
  is_open: boolean;
  dismissed_reason: string | null;
  dismissed_at: string | null; // ISO datetime string
  cleared_by_matching: boolean;
  cleared_at: string | null; // ISO datetime string
  matched_transaction_count: number;
  total_transaction_count: number;
  created_at: string; // ISO datetime string
  transactions?: Transaction[]; // Populated from backend join
}

export interface AlertTransaction {
  alert_id: string;
  transaction_id: string;
  transaction?: Transaction & { client?: any }; // Populated relationship
}

/**
 * Transaction with related data for detail view
 * This is used when we need to show a transaction with its matches
 */
export interface TransactionWithMatches extends Transaction {
  matches?: Match[];
}

/**
 * Filter options for transaction list
 * Used for future filtering functionality
 */
export interface TransactionFilters {
  clientId?: string;
  dateFrom?: string;
  dateTo?: string;
  minAmount?: number;
  maxAmount?: number;
  direction?: TransactionDirection;
  type?: TransactionType;
}

/**
 * Sort options for transaction list
 * Used for future sorting functionality
 */
export type TransactionSortField = "date" | "amount" | "client_id";
export type SortDirection = "asc" | "desc";

export interface TransactionSortOptions {
  field: TransactionSortField;
  direction: SortDirection;
}

/**
 * Filter options for CRM notes list
 * Used for future filtering functionality
 */
export interface CRMNoteFilters {
  clientId?: string;
  dateFrom?: string;
  dateTo?: string;
  textContains?: string;
  skip?: number;
  limit?: number;
}

/**
 * Sort options for CRM notes list
 * Used for future sorting functionality
 */
export type CRMNoteSortField = "date" | "client_id";

export interface CRMNoteSortOptions {
  field: CRMNoteSortField;
  direction: SortDirection;
}
