/**
 * Authentication Service
 *
 * Verwaltet die Authentifizierung und Token-Speicherung
 * Funktionen:
 * - Login/Logout
 * - Token Management (speichern/abrufen/löschen)
 * - Token Validation und Expiry Check
 */

import { loginUser, type TokenResponse } from "./api";

// localStorage Key für den Access Token
const TOKEN_KEY = "auth_token";

/**
 * Login Funktion
 *
 * Ruft das Backend API auf, um ein Access Token zu erhalten
 * Speichert das Token in localStorage bei Erfolg
 *
 * @param username - Benutzername
 * @param password - Passwort
 * @returns TokenResponse mit access_token und token_type
 * @throws Error bei fehlgeschlagenem Login
 */
export async function login(username: string, password: string): Promise<TokenResponse> {
  // API Call zum Backend /users/token Endpoint
  const tokenResponse = await loginUser(username, password);

  // Token in localStorage speichern für spätere Verwendung
  setToken(tokenResponse.access_token);

  return tokenResponse;
}

/**
 * Logout Funktion
 *
 * Entfernt das Access Token aus localStorage
 * Danach ist der User nicht mehr authentifiziert
 */
export function logout(): void {
  if (typeof window !== "undefined") {
    localStorage.removeItem(TOKEN_KEY);
  }
}

/**
 * Holt das gespeicherte Access Token aus localStorage
 *
 * @returns Access Token als String oder null wenn nicht vorhanden
 */
export function getToken(): string | null {
  if (typeof window !== "undefined") {
    return localStorage.getItem(TOKEN_KEY);
  }
  return null;
}

/**
 * Speichert das Access Token in localStorage
 *
 * @param token - Der Access Token vom Backend
 */
export function setToken(token: string): void {
  if (typeof window !== "undefined") {
    localStorage.setItem(TOKEN_KEY, token);
  }
}

/**
 * Prüft ob ein Token vorhanden ist
 *
 * @returns true wenn Token existiert, sonst false
 */
export function isAuthenticated(): boolean {
  return getToken() !== null;
}

/**
 * JWT Token Decoder (vereinfacht)
 *
 * Dekodiert den JWT Token um Informationen wie Expiry zu extrahieren
 * Achtung: Dies validiert den Token NICHT - nur das Backend kann das!
 *
 * @param token - JWT Token String
 * @returns Decoded Payload oder null bei Fehler
 */
function decodeToken(token: string): any {
  try {
    // JWT hat 3 Teile: header.payload.signature
    const parts = token.split(".");
    if (parts.length !== 3) {
      return null;
    }

    // Payload ist der mittlere Teil (Base64 encoded)
    const payload = parts[1];

    // Base64 decode (URL-safe)
    const decoded = atob(payload.replace(/-/g, "+").replace(/_/g, "/"));

    // Parse JSON
    return JSON.parse(decoded);
  } catch (error) {
    console.error("Failed to decode token:", error);
    return null;
  }
}

/**
 * Prüft ob das Token abgelaufen ist
 *
 * JWT Tokens haben ein "exp" (expiry) Feld im Payload
 * Backend setzt Expiry auf 30 Minuten (siehe ACCESS_TOKEN_EXPIRE_MINUTES in users.py)
 *
 * @param token - Optional: Token zum prüfen (default: aktuelles Token aus localStorage)
 * @returns true wenn Token abgelaufen, false wenn noch gültig, null bei Fehler
 */
export function isTokenExpired(token?: string): boolean | null {
  const tokenToCheck = token || getToken();

  if (!tokenToCheck) {
    return null;
  }

  const decoded = decodeToken(tokenToCheck);

  if (!decoded || !decoded.exp) {
    return null;
  }

  // exp ist in Sekunden seit Unix Epoch
  // Date.now() ist in Millisekunden
  const expiryTime = decoded.exp * 1000;
  const currentTime = Date.now();

  return currentTime >= expiryTime;
}

/**
 * Gibt die verbleibende Zeit bis zum Token Expiry zurück
 *
 * @param token - Optional: Token zum prüfen (default: aktuelles Token aus localStorage)
 * @returns Verbleibende Zeit in Millisekunden, oder null bei Fehler/kein Token
 */
export function getTokenTimeRemaining(token?: string): number | null {
  const tokenToCheck = token || getToken();

  if (!tokenToCheck) {
    return null;
  }

  const decoded = decodeToken(tokenToCheck);

  if (!decoded || !decoded.exp) {
    return null;
  }

  const expiryTime = decoded.exp * 1000;
  const currentTime = Date.now();
  const remaining = expiryTime - currentTime;

  // Wenn negativ, dann ist Token abgelaufen
  return remaining > 0 ? remaining : 0;
}

/**
 * Extrahiert den Username aus dem JWT Token
 *
 * Backend speichert den Username im "sub" (subject) Feld des JWT
 * (siehe create_access_token in backend/src/routes/users.py)
 *
 * @param token - Optional: Token zum dekodieren (default: aktuelles Token aus localStorage)
 * @returns Username oder null
 */
export function getUsernameFromToken(token?: string): string | null {
  const tokenToCheck = token || getToken();

  if (!tokenToCheck) {
    return null;
  }

  const decoded = decodeToken(tokenToCheck);

  // Backend speichert Username im "sub" field
  return decoded?.sub || null;
}
