/**
 * Authentication Context
 *
 * Globaler React Context für Authentication State Management
 * Stellt Authentication-Status und Funktionen für die gesamte App bereit
 *
 * Features:
 * - Globaler Auth State (isAuthenticated, user, token)
 * - Login/Logout Funktionen
 * - Automatisches Laden des Tokens beim App-Start
 * - Automatisches Token Expiry Checking
 */

"use client";

import React, { createContext, useContext, useState, useEffect, ReactNode } from "react";
import { login as authLogin, logout as authLogout, getToken, isTokenExpired, getUsernameFromToken } from "@/lib/auth";
import { getCurrentUser, type User } from "@/lib/api";

/**
 * Interface für den Authentication State
 */
interface AuthState {
  isAuthenticated: boolean;
  user: User | null;
  token: string | null;
  isLoading: boolean;
}

/**
 * Interface für den AuthContext
 * Enthält State und Funktionen die in der gesamten App verfügbar sein sollen
 */
interface AuthContextType extends AuthState {
  login: (username: string, password: string) => Promise<void>;
  logout: () => void;
  checkAuth: () => Promise<void>;
}

/**
 * React Context für Authentication
 * Initial undefined, wird vom Provider gesetzt
 */
const AuthContext = createContext<AuthContextType | undefined>(undefined);

/**
 * AuthProvider Component
 *
 * Wraps die gesamte App und stellt Auth State bereit
 * Lädt automatisch das Token beim Start und prüft dessen Gültigkeit
 *
 * @param children - Child Components (die gesamte App)
 */
export function AuthProvider({ children }: { children: ReactNode }) {
  // State für Authentication
  const [state, setState] = useState<AuthState>({
    isAuthenticated: false,
    user: null,
    token: null,
    isLoading: true, // Initial loading während wir Token aus localStorage laden
  });

  /**
   * Prüft ob ein gültiges Token existiert und lädt User Daten
   * Wird beim Component Mount aufgerufen (useEffect)
   */
  const checkAuth = async () => {
    try {
      // Token aus localStorage holen
      const token = getToken();

      if (!token) {
        // Kein Token vorhanden -> nicht authentifiziert
        setState({
          isAuthenticated: false,
          user: null,
          token: null,
          isLoading: false,
        });
        return;
      }

      // Prüfen ob Token abgelaufen ist
      const expired = isTokenExpired(token);
      if (expired) {
        // Token abgelaufen -> logout
        authLogout();
        setState({
          isAuthenticated: false,
          user: null,
          token: null,
          isLoading: false,
        });
        return;
      }

      // Token ist gültig -> User Daten vom Backend holen
      try {
        const user = await getCurrentUser();
        setState({
          isAuthenticated: true,
          user,
          token,
          isLoading: false,
        });
      } catch (error) {
        // Token ist ungültig oder Backend Fehler
        // In diesem Fall logout und State zurücksetzen
        authLogout();
        setState({
          isAuthenticated: false,
          user: null,
          token: null,
          isLoading: false,
        });
      }
    } catch (error) {
      console.error("Error checking auth:", error);
      setState({
        isAuthenticated: false,
        user: null,
        token: null,
        isLoading: false,
      });
    }
  };

  /**
   * Login Funktion
   *
   * Ruft Backend API auf, speichert Token und lädt User Daten
   *
   * @param username - Benutzername
   * @param password - Passwort
   * @throws Error bei fehlgeschlagenem Login
   */
  const login = async (username: string, password: string) => {
    // Loading State setzen - NICHT global setzen, damit kein Fullscreen-Loader kommt
    // setState((prev) => ({ ...prev, isLoading: true }));

    try {
      // Backend API Call über auth.ts
      const tokenResponse = await authLogin(username, password);

      // Token ist jetzt in localStorage gespeichert
      // User Daten vom Backend holen
      const user = await getCurrentUser();

      // State updaten
      setState({
        isAuthenticated: true,
        user,
        token: tokenResponse.access_token,
        isLoading: false,
      });
    } catch (error) {
      // Login fehlgeschlagen
      setState({
        isAuthenticated: false,
        user: null,
        token: null,
        isLoading: false,
      });
      // Error weiterwerfen damit Login Component ihn anzeigen kann
      throw error;
    }
  };

  /**
   * Logout Funktion
   *
   * Entfernt Token aus localStorage und setzt State zurück
   */
  const logout = () => {
    // Token aus localStorage entfernen
    authLogout();

    // State zurücksetzen
    setState({
      isAuthenticated: false,
      user: null,
      token: null,
      isLoading: false,
    });
  };

  /**
   * Effect Hook: Beim Component Mount Auth Status prüfen
   * Lädt Token aus localStorage und validiert es
   */
  useEffect(() => {
    checkAuth();
  }, []);

  /**
   * Optional: Token Expiry Timer
   * Prüft alle 5 Minuten ob Token abgelaufen ist
   * Bei Ablauf automatisch logout
   */
  useEffect(() => {
    if (!state.isAuthenticated || !state.token) {
      return;
    }

    // Timer alle 5 Minuten
    const interval = setInterval(() => {
      const expired = isTokenExpired(state.token!);
      if (expired) {
        console.log("Token expired, logging out...");
        logout();
      }
    }, 5 * 60 * 1000); // 5 Minuten

    // Cleanup beim Unmount
    return () => clearInterval(interval);
  }, [state.isAuthenticated, state.token]);

  // Context Value: State + Funktionen
  const value: AuthContextType = {
    ...state,
    login,
    logout,
    checkAuth,
  };

  return <AuthContext.Provider value={value}>{children}</AuthContext.Provider>;
}

/**
 * Hook zum Verwenden des Auth Context
 *
 * Usage in Components:
 * ```tsx
 * const { isAuthenticated, user, login, logout } = useAuth();
 * ```
 *
 * @returns AuthContext
 * @throws Error wenn außerhalb von AuthProvider verwendet
 */
export function useAuth(): AuthContextType {
  const context = useContext(AuthContext);

  if (context === undefined) {
    throw new Error("useAuth must be used within an AuthProvider");
  }

  return context;
}
