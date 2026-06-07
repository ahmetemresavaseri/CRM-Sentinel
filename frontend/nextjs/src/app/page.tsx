"use client";

import React, { useEffect, useMemo, useState } from "react";
import { Icon } from "@iconify/react";

// Import AuthProvider and useAuth Hook
import { AuthProvider, useAuth } from "@/contexts/AuthContext";
import { Transaction, CRMNote, Alert } from "@/types/transaction";
import { Client } from "@/types/client";

import Dashboard from "./app-ui/Dashboard";
import TransactionDetail from "./app-ui/TransactionDetail";
import TransactionList from "./app-ui/TransactionList";
import NotesList from "./app-ui/NotesList";
import NotesDetail from "./app-ui/NotesDetail";
import ClientList from "./app-ui/ClientList";
import ClientDetail from "./app-ui/ClientDetail";
import Login from "./app-ui/Login";
import BulkUpload from "@/components/bulk-upload/BulkUpload";
import AlertsList from "./app-ui/AlertsList";
import AlertDetail from "./app-ui/AlertDetail";
import UserInfo from "./app-ui/UserInfo";

type View = "login" | "dashboard" | "transactions" | "clients" | "notes" | "network" | "bulk-upload" | "alerts" | "profile";

type PersistedUiState = {
  currentView: View;
  selectedTransaction: Transaction | null;
  selectedNote: CRMNote | null;
  selectedClient: Client | null;
  selectedAlert: Alert | null;
};

const STORAGE_KEY = "crm_ui_state";

const defaultUiState: PersistedUiState = {
  currentView: "dashboard",
  selectedTransaction: null,
  selectedNote: null,
  selectedClient: null,
  selectedAlert: null,
};

const readPersistedUiState = (): PersistedUiState => {
  if (typeof window === "undefined") return defaultUiState;
  const raw = localStorage.getItem(STORAGE_KEY);
  if (!raw) return defaultUiState;

  try {
    const parsed = JSON.parse(raw);
    return { ...defaultUiState, ...parsed };
  } catch (error) {
    console.warn("Failed to parse UI state from storage", error);
    return defaultUiState;
  }
};

/**
 * Inner component that has access to AuthContext
 * This component must be inside AuthProvider
 */
function HomeContent() {
  const initialUiState = useMemo(readPersistedUiState, []);

  const [currentView, setCurrentView] = useState<View>(initialUiState.currentView);
  const [selectedTransaction, setSelectedTransaction] = useState<Transaction | null>(initialUiState.selectedTransaction);
  const [selectedNote, setSelectedNote] = useState<CRMNote | null>(initialUiState.selectedNote);
  const [selectedClient, setSelectedClient] = useState<Client | null>(initialUiState.selectedClient);
  const [selectedAlert, setSelectedAlert] = useState<Alert | null>(initialUiState.selectedAlert);

  // Access Auth State via useAuth Hook
  const { isAuthenticated, logout: authLogout, isLoading } = useAuth();

  useEffect(() => {
    if (typeof window === "undefined") return;
    if (isLoading) return;

    if (!isAuthenticated) {
      localStorage.removeItem(STORAGE_KEY);
      return;
    }

    const stateToPersist: PersistedUiState = {
      currentView,
      selectedTransaction,
      selectedNote,
      selectedClient,
      selectedAlert,
    };

    localStorage.setItem(STORAGE_KEY, JSON.stringify(stateToPersist));
  }, [currentView, selectedTransaction, selectedNote, selectedClient, selectedAlert, isAuthenticated, isLoading]);

  const handleTransactionClick = (transaction: Transaction) => {
    setSelectedTransaction(transaction);
    setSelectedNote(null);
  };

  const handleBackToTransactionList = () => {
    setSelectedTransaction(null);
  };

  const handleNoteClick = (note: CRMNote) => {
    setSelectedNote(note);
    setSelectedTransaction(null);
  };

  const handleBackToNotesList = () => {
    setSelectedNote(null);
  };

  const handleClientClick = (client: Client) => {
    setSelectedClient(client);
  };

  const handleBackToClientsList = () => {
    setSelectedClient(null);
  };

  const handleAlertClick = (alert: Alert) => {
    setSelectedAlert(alert);
  };

  const handleBackToAlertsList = () => {
    setSelectedAlert(null);
  };

  const handleAlertUpdated = (updatedAlert: Alert) => {
    setSelectedAlert(updatedAlert);
  };

  // Logout function with AuthContext integration
  const handleLogout = () => {
    authLogout(); // Remove token from localStorage
    if (typeof window !== "undefined") {
      localStorage.removeItem(STORAGE_KEY);
    }
    setSelectedTransaction(null);
    setSelectedNote(null);
    setSelectedClient(null);
    setSelectedAlert(null);
    // After logout, login screen is automatically displayed (see below)
  };

  // Show loading state while AuthContext initializes
  if (isLoading) {
    return (
      <div className="min-h-screen bg-slate-50 flex items-center justify-center">
        <div className="text-center">
          <Icon icon="eos-icons:loading" className="animate-spin text-blue-600 mx-auto" width={48} height={48} />
          <p className="mt-4 text-slate-600">Loading...</p>
        </div>
      </div>
    );
  }

  // If not authenticated, show login screen
  if (!isAuthenticated) {
    return (
      <Login
        onLoginSuccess={() => {
          setCurrentView("dashboard");
          setSelectedTransaction(null);
          setSelectedNote(null);
          setSelectedClient(null);
          setSelectedAlert(null);
        }}
      />
    );
  }

  // User is authenticated - render layout with navigation bar always visible
  return (
    <div className="min-h-screen bg-slate-50">
      {/* Header - always visible */}
      <header className="bg-white border-b border-slate-200">
        <div className="px-8 py-4 flex items-center justify-between">
          <div className="flex items-center gap-2">
            <Icon icon="stash:shield-duotone" className="text-blue-700" width={36} height={36} />
            <h1 className="text-slate-900 font-bold tracking-wide text-xl">CRM Sentinel</h1>
          </div>
          <button
            onClick={handleLogout}
            className="flex items-center gap-2 text-slate-500 hover:text-red-600 transition-colors px-3 py-1.5 rounded-lg hover:bg-red-50"
          >
            <Icon icon="ph:sign-out-duotone" width={20} height={20} />
            <span className="text-sm font-medium">Sign Out</span>
          </button>
        </div>
      </header>

      {/* Navigation bar - always visible */}
      <nav className="bg-white border-b border-slate-200">
        <div className="px-8 py-2 flex gap-6 overflow-x-auto">
          <button
            onClick={() => {
              setCurrentView("dashboard");
              setSelectedTransaction(null);
              setSelectedNote(null);
              setSelectedClient(null);
              setSelectedAlert(null);
            }}
            className={`flex-1 flex items-center justify-center gap-2 px-4 py-2 rounded-md transition-colors ${currentView === "dashboard" && !selectedTransaction && !selectedNote && !selectedClient && !selectedAlert
              ? "bg-blue-50 text-blue-700"
              : "text-slate-600 hover:bg-slate-50"
              }`}
          >
            <Icon
              icon="humbleicons:dashboard"
              className={currentView === "dashboard" && !selectedTransaction && !selectedNote && !selectedClient && !selectedAlert ? "text-blue-700" : "text-slate-500"}
              width={24}
              height={24}
            />
            Dashboard
          </button>

          <button
            onClick={() => {
              setCurrentView("alerts");
              setSelectedTransaction(null);
              setSelectedNote(null);
              setSelectedClient(null);
              setSelectedAlert(null);
            }}
            className={`flex-1 flex items-center justify-center gap-2 px-4 py-2 rounded-md transition-colors ${currentView === "alerts" || selectedAlert
              ? "bg-blue-50 text-blue-700"
              : "text-slate-600 hover:bg-slate-50"
              }`}
          >
            <Icon
              icon="humbleicons:exclamation"
              className={currentView === "alerts" || selectedAlert ? "text-blue-700" : "text-slate-500"}
              width={24}
              height={24}
            />
            Alerts
          </button>

          <button
            onClick={() => {
              setCurrentView("clients");
              setSelectedTransaction(null);
              setSelectedNote(null);
              setSelectedClient(null);
              setSelectedAlert(null);
            }}
            className={`flex-1 flex items-center justify-center gap-2 px-4 py-2 rounded-md transition-colors ${(currentView === "clients" || selectedClient) && !selectedAlert
              ? "bg-blue-50 text-blue-700"
              : "text-slate-600 hover:bg-slate-50"
              }`}
          >
            <Icon
              icon="ph:users-three-duotone"
              className={(currentView === "clients" || selectedClient) && !selectedAlert ? "text-blue-700" : "text-slate-500"}
              width={24}
              height={24}
            />
            Clients
          </button>

          <button
            onClick={() => {
              setCurrentView("transactions");
              setSelectedTransaction(null);
              setSelectedNote(null);
              setSelectedClient(null);
              setSelectedAlert(null);
            }}
            className={`flex-1 flex items-center justify-center gap-2 px-4 py-2 rounded-md transition-colors ${(currentView === "transactions" || selectedTransaction) && !selectedNote
              ? "bg-blue-50 text-blue-700"
              : "text-slate-600 hover:bg-slate-50"
              }`}
          >
            <Icon
              icon="bitcoin-icons:transactions-filled"
              className={(currentView === "transactions" || selectedTransaction) && !selectedNote ? "text-blue-700" : "text-slate-500"}
              width={30}
              height={30}
            />
            Transactions
          </button>

          <button
            onClick={() => {
              setCurrentView("notes");
              setSelectedTransaction(null);
              setSelectedNote(null);
              setSelectedClient(null);
              setSelectedAlert(null);
            }}
            className={`flex-1 flex items-center justify-center gap-2 px-4 py-2 rounded-md transition-colors ${(currentView === "notes" || selectedNote) && !selectedTransaction
              ? "bg-blue-50 text-blue-700"
              : "text-slate-600 hover:bg-slate-50"
              }`}
          >
            <Icon
              icon="ph:note-duotone"
              className={(currentView === "notes" || selectedNote) && !selectedTransaction ? "text-blue-700" : "text-slate-500"}
              width={24}
              height={24}
            />
            Notes
          </button>

          <button
            onClick={() => {
              setCurrentView("bulk-upload");
              setSelectedTransaction(null);
              setSelectedNote(null);
              setSelectedClient(null);
              setSelectedAlert(null);
            }}
            className={`flex-1 flex items-center justify-center gap-2 px-4 py-2 rounded-md transition-colors ${currentView === "bulk-upload"
              ? "bg-blue-50 text-blue-700"
              : "text-slate-600 hover:bg-slate-50"
              }`}
          >
            <Icon
              icon="ph:cloud-arrow-up-duotone"
              className={currentView === "bulk-upload" ? "text-blue-700" : "text-slate-500"}
              width={24}
              height={24}
            />
            Bulk Upload
          </button>

          <button
            onClick={() => {
              setCurrentView("profile");
              setSelectedTransaction(null);
              setSelectedNote(null);
              setSelectedClient(null);
              setSelectedAlert(null);
            }}
            className={`flex-1 flex items-center justify-center gap-2 px-4 py-2 rounded-md transition-colors ${currentView === "profile"
              ? "bg-blue-50 text-blue-700"
              : "text-slate-600 hover:bg-slate-50"
              }`}
          >
            <Icon
              icon="ph:user"
              className={currentView === "profile" ? "text-blue-700" : "text-slate-500"}
              width={24}
              height={24}
            />
            Profile
          </button>

        </div>
      </nav>

      {/* Main content area */}
      <main className="p-8">
        {selectedTransaction ? (
          <TransactionDetail transaction={selectedTransaction} onBack={handleBackToTransactionList} onNoteClick={handleNoteClick} />
        ) : selectedNote ? (
          <NotesDetail note={selectedNote} onBack={handleBackToNotesList} onTransactionClick={handleTransactionClick} />
        ) : selectedAlert ? (
          <AlertDetail
            alert={selectedAlert}
            onBack={handleBackToAlertsList}
            onAlertUpdated={handleAlertUpdated}
            onTransactionClick={handleTransactionClick}
          />
        ) : selectedClient ? (
          <ClientDetail client={selectedClient} onBack={handleBackToClientsList} onAlertClick={handleAlertClick} />
        ) : (
          <>
            {currentView === "dashboard" && (
              <Dashboard
                onNoteClick={handleNoteClick}
                onTransactionClick={handleTransactionClick}
                onAlertClick={handleAlertClick}
              />
            )}
            {currentView === "alerts" && <AlertsList onAlertClick={handleAlertClick} />}
            {currentView === "transactions" && <TransactionList onTransactionClick={handleTransactionClick} />}
            {currentView === "clients" && <ClientList onClientClick={handleClientClick} />}
            {currentView === "notes" && <NotesList onNoteClick={handleNoteClick} />}
            {currentView === "bulk-upload" && <BulkUpload />}
            {currentView === "profile" && <UserInfo />}
          </>
        )}
      </main>
    </div>
  );
}

/**
 * Main component with AuthProvider wrapper
 * AuthProvider must wrap the entire app
 */
export default function Home() {
  return (
    <AuthProvider>
      <HomeContent />
    </AuthProvider>
  );
}
