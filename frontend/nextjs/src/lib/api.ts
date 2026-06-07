/**
 * API Client für Backend-Kommunikation
 *
 * Dieser Client verwaltet alle HTTP-Anfragen an das Backend.
 * Er kümmert sich um:
 * - Base URL Konfiguration über Environment Variables
 * - Automatisches Hinzufügen von Authorization Headers
 * - Fehlerbehandlung für häufige HTTP-Fehler
 * - Type-safe API Anfragen
 */

import { Transaction, CRMNote, CRMNoteFilters, Alert } from "@/types/transaction";
import { Client } from "@/types/client";
import { PaginatedResponse } from "@/types/pagination";

// Backend URL aus Environment Variable oder Fallback zu localhost
const RAW_API_BASE_URL = process.env.NEXT_PUBLIC_BACKEND_URL || "https://be.group-p5.webdev-25.ivia.isginf.ch";
// const RAW_API_BASE_URL = process.env.NEXT_PUBLIC_BACKEND_URL || "http://localhost:8080";
const API_BASE_URL = RAW_API_BASE_URL.replace(/\/+$/, ""); // normalize trailing slash

/**
 * Interface für API Fehlermeldungen vom Backend (FastAPI Format)
 * Validation Errors haben ein detail Array mit loc, msg, type
 */
interface ApiError {
  detail: string | Array<{
    loc: (string | number)[];
    msg: string;
    type: string;
  }>;
}

/**
 * Interface für User-Daten vom Backend
 * Entspricht dem User Model aus backend/src/routes/users.py
 */
export interface User {
  username: string;
  email: string | null;
  full_name: string | null;
  disabled: boolean | null;
  write_access?: boolean | null;
}

/**
 * Interface für Token-Response vom /users/token Endpoint
 * Entspricht dem Token Model aus backend/src/routes/users.py
 */
export interface TokenResponse {
  access_token: string;
  token_type: string;
}

/**
 * Overview response for transactions KPIs
 * Mirrors /transactions/overview in backend/src/routes/transactions.py
 */
export interface TransactionsOverview {
  count_txn: number;
  sum_amount: number;
  avg_amount: number;
}

/**
 * Zentrale Fetch-Funktion mit Error Handling
 *
 * Diese Funktion wraps die native fetch API und fügt hinzu:
 * - Automatische Authorization Header (Bearer Token)
 * - Bessere Error Messages vom Backend
 * - JSON Parsing
 *
 * @param endpoint - API Endpoint (z.B. "/users/me")
 * @param options - Fetch options (method, headers, body, etc.)
 * @returns Parsed JSON Response
 * @throws Error mit aussagekräftiger Fehlermeldung
 */
async function apiFetch<T>(endpoint: string, options: RequestInit = {}): Promise<T> {
  const url = `${API_BASE_URL}${endpoint.startsWith("/") ? endpoint : `/${endpoint}`}`;

  // Default headers
  const headers: Record<string, string> = {
    ...(options.headers as Record<string, string>),
  };

  // Token aus localStorage holen und als Authorization Header hinzufügen
  // Dies geschieht automatisch bei jeder API-Anfrage, wenn ein Token vorhanden ist
  if (typeof window !== "undefined") {
    const token = localStorage.getItem("auth_token");
    if (token) {
      headers["Authorization"] = `Bearer ${token}`;
    }
  }

  try {
    const response = await fetch(url, {
      ...options,
      headers,
    });

    // Wenn Response nicht OK ist (Status 400-599), werfe einen Error
    if (!response.ok) {
      // Versuche, die Error-Details aus der Response zu parsen
      let errorMessage = `HTTP Error ${response.status}: ${response.statusText}`;

      try {
        const errorData: ApiError = await response.json();

        // Backend sendet entweder einen String oder ein Array von Validation Errors
        if (typeof errorData.detail === "string") {
          errorMessage = errorData.detail;
        } else if (Array.isArray(errorData.detail)) {
          // Bei Validation Errors (422) alle Fehler zusammenfassen
          errorMessage = errorData.detail
            .map((err) => `${err.loc.join(".")}: ${err.msg}`)
            .join(", ");
        }
      } catch (e) {
        // Falls JSON parsing fehlschlägt, behalte die Standard-Fehlermeldung
      }

      // Spezielle Behandlung für 401 Unauthorized
      // In diesem Fall ist das Token abgelaufen oder ungültig
      if (response.status === 401) {
        // Token aus localStorage entfernen
        if (typeof window !== "undefined") {
          localStorage.removeItem("auth_token");
        }
      }

      throw new Error(errorMessage);
    }

    // Parse JSON Response
    // Bei 204 No Content gibt es keine Response Body
    if (response.status === 204) {
      return {} as T;
    }

    return await response.json();
  } catch (error) {
    // Netzwerkfehler oder andere unerwartete Fehler
    if (error instanceof Error) {
      throw new Error(`Failed to fetch ${url}: ${error.message}`);
    }
    throw new Error(`Failed to fetch ${url}: Ein unerwarteter Fehler ist aufgetreten`);
  }
}

/**
 * Login-Funktion
 *
 * Sendet POST Request an /users/token mit OAuth2 Password Flow
 * Das Backend erwartet application/x-www-form-urlencoded Format
 *
 * Backend Endpoint: POST /users/token
 * Request Format: grant_type=password&username={user}&password={pass}
 *
 * @param username - Benutzername (required)
 * @param password - Passwort (required)
 * @returns Token Response mit access_token und token_type
 * @throws Error bei falschen Credentials (401) oder Validation Error (422)
 */
export async function loginUser(
  username: string,
  password: string
): Promise<TokenResponse> {
  // OAuth2 Password Flow benötigt application/x-www-form-urlencoded
  // Format: grant_type=password&username=xxx&password=xxx
  const formData = new URLSearchParams();
  formData.append("grant_type", "password");
  formData.append("username", username);
  formData.append("password", password);

  return apiFetch<TokenResponse>("/users/token", {
    method: "POST",
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
    },
    body: formData.toString(),
  });
}

/**
 * Holt die Daten des aktuell eingeloggten Users
 *
 * Backend Endpoint: GET /users/me/
 * Benötigt ein gültiges Token im localStorage
 * Das Token wird automatisch von apiFetch als Authorization Header hinzugefügt
 *
 * @returns User Objekt mit username, email, full_name, disabled
 * @throws Error wenn kein Token vorhanden oder Token ungültig (401)
 */
export async function getCurrentUser(): Promise<User> {
  return apiFetch<User>("/users/me/");
}

/**
 * Holt Transaktionen mit Pagination
 *
 * Backend Endpoint: GET /transactions/
 * Optional: client_id, transaction_id, skip, limit
 * Benötigt Authentication
 */

export interface TransactionsQuery {
  clientId?: string;
  transactionId?: string;
  skip?: number;
  limit?: number;
}

export async function getTransactions(params?: TransactionsQuery): Promise<Transaction[] | PaginatedResponse<Transaction>> {
  const search = new URLSearchParams();
  if (params?.clientId) search.append("client_id", params.clientId);
  if (params?.transactionId) search.append("transaction_id", params.transactionId);
  if (typeof params?.skip === "number") search.append("skip", String(params.skip));
  if (typeof params?.limit === "number") search.append("limit", String(params.limit));

  const query = search.toString();
  const endpoint = query ? `/transactions/?${query}` : "/transactions/";

  const data = await apiFetch<PaginatedResponse<Transaction> | Transaction[]>(endpoint, {
    method: "GET",
  });

  return data;
}

/**
 * Holt KPI Overview (Count, Sum, Average)
 *
 * Backend Endpoint: GET /transactions/overview
 * Benötigt Authentication
 */
export async function getTransactionsOverview(clientId?: string): Promise<TransactionsOverview> {
  const params = new URLSearchParams();
  if (clientId) params.append("client_id", clientId);
  const query = params.toString();
  const endpoint = query ? `/transactions/overview?${query}` : "/transactions/overview";

  return apiFetch<TransactionsOverview>(endpoint, {
    method: "GET",
  });
}

/**
 * Holt Alerts (optional mit Filtern)
 *
 * Backend Endpoint: GET /alerts/
 * Benötigt Authentication
 *
 * Updated: 2025-12-16 - New alert schema filters
 */
export interface AlertFilters {
  is_open?: boolean;
  rule_name?: string;
  client_id?: string;
  date_from?: string; // ISO date string (YYYY-MM-DD)
  date_to?: string; // ISO date string (YYYY-MM-DD)
  cleared_by_matching?: boolean;
}

export async function getAlerts(filters?: AlertFilters): Promise<Alert[]> {
  let endpoint = "/alerts/";

  if (filters) {
    const params = new URLSearchParams();
    if (filters.is_open !== undefined) params.append("is_open", String(filters.is_open));
    if (filters.rule_name) params.append("rule_name", filters.rule_name);
    if (filters.client_id) params.append("client_id", filters.client_id);
    if (filters.date_from) params.append("date_from", filters.date_from);
    if (filters.date_to) params.append("date_to", filters.date_to);
    if (filters.cleared_by_matching !== undefined) params.append("cleared_by_matching", String(filters.cleared_by_matching));

    const queryString = params.toString();
    if (queryString) {
      endpoint += `?${queryString}`;
    }
  }

  return apiFetch<Alert[]>(endpoint, {
    method: "GET",
  });
}

export async function getAlert(id: string): Promise<Alert> {
  return apiFetch<Alert>(`/alerts/${id}`, {
    method: "GET",
  });
}

/**
 * Dismiss an alert with a reason
 *
 * Backend Endpoint: POST /alerts/{alert_id}/dismiss
 * Benötigt Authentication
 */
export async function dismissAlert(id: string, reason: string): Promise<Alert> {
  return apiFetch<Alert>(`/alerts/${id}/dismiss`, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify({ reason }),
  });
}

/**
 * Reopen a closed alert for manual review
 *
 * This permanently disables auto-clear for the alert.
 * Backend Endpoint: POST /alerts/{alert_id}/reopen
 * Benötigt Authentication
 */
export async function reopenAlert(id: string): Promise<Alert> {
  return apiFetch<Alert>(`/alerts/${id}/reopen`, {
    method: "POST",
  });
}

/**
 * Manually trigger alert evaluation for all unmatched transactions
 *
 * Backend Endpoint: POST /alerts/evaluate
 * Benötigt Authentication
 */
export async function evaluateAlerts(): Promise<{ created: number; updated: number; skipped: number }> {
  const response = await apiFetch<{ success: boolean; message: string; statistics: { created: number; updated: number; skipped: number } }>("/alerts/evaluate", {
    method: "POST",
  });
  // Return the nested statistics object
  return response.statistics;
}

/**
 * Manually trigger auto-clear for alerts whose transactions are now matched
 *
 * Backend Endpoint: POST /alerts/auto-clear
 * Benötigt Authentication
 */
export async function autoClearAlerts(): Promise<{ success: boolean; message: string; cleared_count: number }> {
  return apiFetch<{ success: boolean; message: string; cleared_count: number }>("/alerts/auto-clear", {
    method: "POST",
  });
}

/**
 * Delete all alerts from the database (destructive operation for testing/demos)
 *
 * Backend Endpoint: DELETE /alerts/clear-all
 * Benötigt Authentication + Write Access
 */
export async function clearAllAlerts(): Promise<{ success: boolean; message: string; deleted_count: number }> {
  return apiFetch<{ success: boolean; message: string; deleted_count: number }>("/alerts/clear-all", {
    method: "DELETE",
  });
}

/**
 * Clients
 */
export async function getClients(
  page: number = 1,
  pageSize: number = 100,
  search?: string
): Promise<PaginatedResponse<Client>> {
  const skip = (page - 1) * pageSize;
  let endpoint = `/clients/?skip=${skip}&limit=${pageSize}`;

  if (search) {
    endpoint += `&search=${encodeURIComponent(search)}`;
  }

  return apiFetch<PaginatedResponse<Client>>(endpoint, { method: "GET" });
}

export async function getClientById(clientId: string): Promise<Client | null> {
  try {
    return await apiFetch<Client>(`/clients/${clientId}`, { method: "GET" });
  } catch (err) {
    return null;
  }
}

/**
 * Holt CRM Notes, die zu einer Transaktion gematcht wurden
 *
 * Backend Endpoint: GET /transactions/{transaction_id}/notes
 * Optional: limit, confidence_threshold
 */
export async function getNotesForTransaction(
  transactionId: string,
  confidence_threshold: number = 0.81,
  limit?: number
): Promise<CRMNote[]> {
  const params = new URLSearchParams();
  if (limit) params.append("limit", String(limit));
  if (confidence_threshold !== undefined) params.append("confidence_threshold", String(confidence_threshold));
  const query = params.toString();
  const endpoint = query
    ? `/transactions/${transactionId}/notes?${query}`
    : `/transactions/${transactionId}/notes`;

  return apiFetch<CRMNote[]>(endpoint, { method: "GET" });
}

/**
 * Holt Transaktionen, die zu einer CRM Note gematcht wurden
 *
 * Backend Endpoint: GET /notes/{note_id}/transactions
 * Optional: limit, confidence_threshold
 */
export async function getTransactionsForNote(
  noteId: string,
  confidence_threshold: number = 0.81,
  limit?: number
): Promise<Transaction[]> {
  const params = new URLSearchParams();
  if (limit) params.append("limit", String(limit));
  if (confidence_threshold !== undefined) params.append("confidence_threshold", String(confidence_threshold));
  const query = params.toString();
  const endpoint = query
    ? `/notes/${noteId}/transactions?${query}`
    : `/notes/${noteId}/transactions`;

  return apiFetch<Transaction[]>(endpoint, { method: "GET" });
}

/**
 * Holt eine einzelne Transaktion anhand der ID
 *
 * Backend Endpoint: GET /transactions/?transaction_id={id}
 * Benötigt Authentication
 *
 * @param id - Transaction ID
 * @returns Transaction Objekt oder null wenn nicht gefunden
 */
export async function getTransaction(id: string): Promise<Transaction | null> {
  const data = await getTransactions({ transactionId: id });
  const transactions = Array.isArray(data) ? data : data.items;
  return transactions.length > 0 ? transactions[0] : null;
}

/**
 * Holt alle CRM Notes
 *
 * Backend Endpoint: GET /notes/
 * Optional mit Filtern als Query Parameter
 * Benötigt Authentication
 *
 * @param filters - Optional: Filter Objekt (clientId, dateFrom, dateTo, textContains, skip, limit)
 * @returns Array von CRM Notes oder pagination response
 */
export async function getNotes(filters?: CRMNoteFilters): Promise<CRMNote[] | PaginatedResponse<CRMNote>> {
  let endpoint = "/notes/";

  // Build query parameters if filters are provided
  if (filters) {
    const params = new URLSearchParams();
    if (filters.clientId) params.append("client_id", filters.clientId);
    if (filters.dateFrom) params.append("date_from", filters.dateFrom);
    if (filters.dateTo) params.append("date_to", filters.dateTo);
    if (filters.textContains) params.append("text_contains", filters.textContains);
    if (typeof filters.skip === "number") params.append("skip", String(filters.skip));
    if (typeof filters.limit === "number") params.append("limit", String(filters.limit));

    const queryString = params.toString();
    if (queryString) {
      endpoint += `?${queryString}`;
    }
  }

  const data = await apiFetch<PaginatedResponse<CRMNote> | CRMNote[]>(endpoint, {
    method: "GET",
  });

  return data;
}

/**
 * Holt eine einzelne CRM Note anhand der ID
 *
 * Backend Endpoint: GET /notes/ (mit Filter nach ID über textsuche)
 * Benötigt Authentication
 *
 * @param id - Note ID
 * @returns CRM Note Objekt oder null wenn nicht gefunden
 */
export async function getNote(id: string): Promise<CRMNote | null> {
  const data = await getNotes();

  // Handle pagination response format
  const notes = Array.isArray(data) ? data : data.items;

  return notes.find((note: CRMNote) => note.id === id) || null;
}

/**
 * Holt die 10 neuesten CRM Notes
 *
 * Backend Endpoint: GET /notes/recent
 * Benötigt Authentication
 *
 * @returns Array von maximal 10 CRM Notes (sortiert nach Datum)
 */
export async function getRecentNotes(): Promise<CRMNote[]> {
  return apiFetch<CRMNote[]>("/notes/recent", {
    method: "GET",
  });
}

/**
 * Health Check Endpoint (falls implementiert)
 *
 * Prüft ob das Backend erreichbar ist
 * Benötigt keine Authentication
 *
 * @returns Health Status
 */
export async function checkHealth(): Promise<{ status: string }> {
  return apiFetch<{ status: string }>("/health", {
    method: "GET",
  });
}

/**
 * Interface für Client-Daten vom Backend
 * Entspricht dem Client Model aus backend/src/models/schemas.py (snake_case)
 */
export interface BackendClient {
  client_id: string;
  name: string;
  client_risk_rating: string;
  opening_date: string;
  status: string;
  aum: number;
  domicile: string;
  nationality: string;
  country_of_business: string;
  expected_monthly_turnover: number;
  declared_counterparties: string;
}
