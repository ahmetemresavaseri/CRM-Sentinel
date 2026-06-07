/**
 * Dashboard Component
 *
 * Shows the main view of the app with:
 * - MainInfo: Overview and statistics
 * - RecentAlerts: Recent warnings
 * - RecentTransactions: Recent transactions
 * - RecentNotes: Recent notes
 */

"use client";

import { useAuth } from "@/contexts/AuthContext";
import { CRMNote, Transaction, Alert } from "@/types/transaction";

import MainInfo from "./ui-sections/MainInfo";
import RecentAlerts from "./ui-sections/RecentAlerts";
import RecentTransactions from "./ui-sections/RecentTransactions";
import RecentNotes from "./ui-sections/RecentNotes";

interface DashboardProps {
  onNoteClick?: (note: CRMNote) => void;
  onTransactionClick?: (transaction: Transaction) => void;
  onAlertClick?: (alert: Alert) => void;
}

export default function Dashboard({ onNoteClick, onTransactionClick, onAlertClick }: DashboardProps) {
  const { user } = useAuth();

  return (
    <>
      <MainInfo />
      <RecentAlerts onAlertClick={onAlertClick} />
      <RecentTransactions onTransactionClick={onTransactionClick} />
      <RecentNotes onNoteClick={onNoteClick} />
    </>
  );
}
