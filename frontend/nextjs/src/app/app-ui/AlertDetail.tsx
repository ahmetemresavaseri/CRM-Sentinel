"use client";

import { useState, useEffect } from "react";
import { Alert, Transaction, CRMNote } from "@/types/transaction";
import { Client } from "@/types/client";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Icon } from "@iconify/react";
import { dismissAlert, reopenAlert, getClientById, getNotesForTransaction } from "@/lib/api";
import { useAuth } from "@/contexts/AuthContext";

interface AlertDetailProps {
  alert: Alert;
  onBack: () => void;
  onAlertUpdated?: (updatedAlert: Alert) => void;
  onTransactionClick?: (transaction: Transaction) => void;
}

// Helper function to get display name for rule
function getRuleDisplayName(ruleName: string): string {
  const ruleNames: Record<string, string> = {
    large_value_transaction: "Large Value Transaction",
    high_risk_client_transaction: "High-Risk Client Transaction",
    smurfing_detection: "Smurfing Detection",
    pass_through_activity: "Pass-Through Activity",
    unusual_transaction_pattern: "Unusual Transaction Pattern",
  };
  return ruleNames[ruleName] || ruleName;
}

// Helper function to get description for rule
function getRuleDescription(ruleName: string): string {
  const ruleDescriptions: Record<string, string> = {
    large_value_transaction: "Transactions of 40,000 CHF or more require enhanced monitoring and documentation.",
    high_risk_client_transaction: "Transactions from high-risk clients (20,000 CHF+) require additional verification.",
    smurfing_detection: "Multiple small transactions (8+ under 15,000 CHF within 7 days) may indicate structuring to avoid reporting thresholds.",
    pass_through_activity: "Balanced credit and debit activity (30,000 CHF+ each within 7 days, within 15% similarity) may indicate account is being used as a conduit.",
    unusual_transaction_pattern: "Monthly activity (40,000 CHF+) that exceeds 6-month average by 30% or more may indicate unusual behavior.",
  };
  return ruleDescriptions[ruleName] || "AML rule violation detected.";
}

export default function AlertDetail({ alert, onBack, onAlertUpdated, onTransactionClick }: AlertDetailProps) {
  const { user } = useAuth();
  const canWrite = !!user?.write_access;

  const [dismissing, setDismissing] = useState<boolean>(false);
  const [showDismissModal, setShowDismissModal] = useState<boolean>(false);
  const [dismissReason, setDismissReason] = useState<string>("");
  const [dismissError, setDismissError] = useState<string | null>(null);
  const [reopening, setReopening] = useState<boolean>(false);
  const [client, setClient] = useState<Client | null>(null);
  const [loadingClient, setLoadingClient] = useState<boolean>(true);
  const [notesByTransaction, setNotesByTransaction] = useState<Record<string, CRMNote[]>>({});
  const [notesLoading, setNotesLoading] = useState<boolean>(false);
  const [notesError, setNotesError] = useState<string | null>(null);

  // Fetch client data
  useEffect(() => {
    const fetchClient = async () => {
      try {
        setLoadingClient(true);
        const clientData = await getClientById(alert.client_id);
        setClient(clientData);
      } catch (error) {
        console.error("Failed to fetch client:", error);
      } finally {
        setLoadingClient(false);
      }
    };
    fetchClient();
  }, [alert.client_id]);

  // Fetch related CRM notes for each transaction
  useEffect(() => {
    const loadNotes = async () => {
      if (!alert.transactions || alert.transactions.length === 0) {
        setNotesByTransaction({});
        return;
      }
      try {
        setNotesLoading(true);
        setNotesError(null);
        const results = await Promise.all(
          alert.transactions.map(async (txn) => {
            try {
              const notes = await getNotesForTransaction(txn.transaction_id, 0.81);
              return { id: txn.transaction_id, notes };
            } catch {
              return { id: txn.transaction_id, notes: [] as CRMNote[] };
            }
          })
        );
        const mapped: Record<string, CRMNote[]> = {};
        results.forEach(({ id, notes }) => {
          mapped[id] = notes;
        });
        setNotesByTransaction(mapped);
      } catch (err) {
        setNotesError(err instanceof Error ? err.message : "Failed to load related notes");
      } finally {
        setNotesLoading(false);
      }
    };

    loadNotes();
  }, [alert.transactions]);

  // Format dates
  const formattedCreatedAt = new Date(alert.created_at).toLocaleDateString("en-US", {
    year: "numeric",
    month: "long",
    day: "numeric",
    hour: "2-digit",
    minute: "2-digit",
  });

  const formattedClearedAt = alert.cleared_at
    ? new Date(alert.cleared_at).toLocaleDateString("en-US", {
        year: "numeric",
        month: "long",
        day: "numeric",
        hour: "2-digit",
        minute: "2-digit",
      })
    : null;

  const formattedDismissedAt = alert.dismissed_at
    ? new Date(alert.dismissed_at).toLocaleDateString("en-US", {
        year: "numeric",
        month: "long",
        day: "numeric",
        hour: "2-digit",
        minute: "2-digit",
      })
    : null;

  // Calculate progress
  const progress = alert.total_transaction_count > 0
    ? (alert.matched_transaction_count / alert.total_transaction_count) * 100
    : 0;

  // Determine alert status
  const isReopened = alert.is_open && (alert.cleared_by_matching || alert.dismissed_at !== null);

  // Status badge with reopened detection
  // IMPORTANT: Check dismissed_reason first - manual dismissal takes precedence over auto-clear
  const statusBadge = alert.is_open
    ? isReopened
      ? { color: "bg-orange-100 text-orange-700 border-orange-200", label: "Reopened - Manual Review Required", icon: "ph:arrow-counter-clockwise" }
      : { color: "bg-red-100 text-red-700 border-red-200", label: "Open", icon: "ph:warning-circle" }
    : alert.dismissed_reason && alert.dismissed_reason.trim()
    ? { color: "bg-green-100 text-green-700 border-green-200", label: "Manually Dismissed", icon: "ph:x-circle" }
    : alert.cleared_by_matching
    ? { color: "bg-purple-100 text-purple-700 border-purple-200", label: "Auto-cleared", icon: "ph:check-circle" }
    : { color: "bg-green-100 text-green-700 border-green-200", label: "Manually Dismissed", icon: "ph:x-circle" };

  // Handle dismiss alert
  const handleDismiss = async () => {
    if (!canWrite) {
      setDismissError("You don't have permission to dismiss alerts.");
      return;
    }
    if (!dismissReason.trim()) {
      setDismissError("Please provide a reason for dismissing this alert.");
      return;
    }

    try {
      setDismissing(true);
      setDismissError(null);
      const updatedAlert = await dismissAlert(alert.id, dismissReason);
      setShowDismissModal(false);
      if (onAlertUpdated) {
        onAlertUpdated(updatedAlert);
      }
    } catch (err) {
      setDismissError(err instanceof Error ? err.message : "Failed to dismiss alert");
    } finally {
      setDismissing(false);
    }
  };

  // Handle reopen alert
  const handleReopen = async () => {
    if (!canWrite) {
      window.alert("You don't have permission to reopen alerts.");
      return;
    }
    try {
      setReopening(true);
      const updatedAlert = await reopenAlert(alert.id);
      if (onAlertUpdated) {
        onAlertUpdated(updatedAlert);
      }
    } catch (err) {
      console.error("Failed to reopen alert:", err);
      window.alert("Failed to reopen alert. Please try again.");
    } finally {
      setReopening(false);
    }
  };

  return (
    <div className="space-y-6">
      {/* Back button */}
      <button
        onClick={onBack}
        className="flex items-center gap-2 text-sm text-slate-600 hover:text-slate-900 transition-colors"
      >
        <Icon icon="mdi:arrow-left" width={20} />
        Back to Alerts
      </button>

      {/* Alert Header Card */}
      <Card>
        <CardHeader>
          <div className="flex items-start justify-between gap-6">
            <div className="space-y-3 flex-1 min-w-0">
              <div className="flex items-center gap-3">
                <Icon icon="ph:bell-ringing" className="text-blue-600" width={28} />
                <div>
                  <CardTitle className="text-2xl">Alert Details</CardTitle>
                  <CardDescription className="mt-1">ID: {alert.id}</CardDescription>
                </div>
              </div>
              <span className={`px-4 py-2 text-sm font-medium rounded-lg border ${statusBadge.color} inline-flex items-center gap-2`}>
                <Icon icon={statusBadge.icon} width={18} />
                {statusBadge.label}
              </span>
            </div>
            <div className="flex gap-2 flex-shrink-0">
              {alert.is_open ? (
                <button
                  onClick={() => canWrite && setShowDismissModal(true)}
                  disabled={!canWrite}
                  title={canWrite ? undefined : "Requires write access"}
                  className="px-4 py-2 bg-red-600 text-white text-sm rounded-lg hover:bg-red-700 transition-colors flex items-center gap-2 disabled:opacity-50 disabled:cursor-not-allowed"
                >
                  <Icon icon="ph:x-circle" width={18} />
                  Dismiss Alert
                </button>
              ) : (
                <button
                  onClick={handleReopen}
                  disabled={reopening || !canWrite}
                  title={canWrite ? undefined : "Requires write access"}
                  className="px-4 py-2 bg-orange-600 text-white text-sm rounded-lg hover:bg-orange-700 transition-colors flex items-center gap-2 disabled:opacity-50 disabled:cursor-not-allowed"
                >
                  <Icon icon="ph:arrow-counter-clockwise" width={18} />
                  {reopening ? "Reopening..." : "Reopen for Review"}
                </button>
              )}
            </div>
          </div>
        </CardHeader>
        <CardContent>
          <div className="space-y-8">
            {/* Client Information Section */}
            <div className="space-y-3">
              <h3 className="text-sm font-semibold text-slate-700 uppercase tracking-wide flex items-center gap-2">
                <Icon icon="ph:user" width={18} className="text-slate-500" />
                Client Information
              </h3>
              <div className="grid grid-cols-1 md:grid-cols-2 gap-4 pl-6">
                {loadingClient ? (
                  <div className="col-span-2 text-sm text-slate-500">Loading client information...</div>
                ) : client ? (
                  <>
                    <div className="space-y-1">
                      <p className="text-sm font-medium text-slate-500">Client Name</p>
                      <p className="text-lg font-semibold text-slate-900">{client.name || "Unknown"}</p>
                    </div>
                    <div className="space-y-1">
                      <p className="text-sm font-medium text-slate-500">Risk Rating</p>
                      <span className={`inline-flex px-3 py-1 text-sm font-medium rounded-full ${
                        client.client_risk_rating === "High" || client.client_risk_rating === "CRITICAL"
                          ? "bg-red-100 text-red-800 border border-red-200"
                          : client.client_risk_rating === "Medium"
                          ? "bg-amber-100 text-amber-800 border border-amber-200"
                          : "bg-green-100 text-green-800 border border-green-200"
                      }`}>
                        {client.client_risk_rating}
                      </span>
                    </div>
                    <div className="space-y-1">
                      <p className="text-xs text-slate-400">Client ID</p>
                      <p className="text-sm font-mono text-slate-600">{alert.client_id}</p>
                    </div>
                  </>
                ) : (
                  <div className="col-span-2 text-sm text-slate-500">Client information not available</div>
                )}
              </div>
            </div>

            {/* Rule Information Section */}
            <div className="space-y-3">
              <h3 className="text-sm font-semibold text-slate-700 uppercase tracking-wide flex items-center gap-2">
                <Icon icon="ph:warning-diamond" width={18} className="text-slate-500" />
                AML Rule Violation
              </h3>
              <div className="bg-blue-50 border border-blue-200 rounded-lg p-4 space-y-2">
                <p className="text-lg font-bold text-blue-900">{getRuleDisplayName(alert.rule_name)}</p>
                <p className="text-sm text-blue-800">{getRuleDescription(alert.rule_name)}</p>
              </div>
            </div>

            {/* Alert Specifics Section */}
            <div className="space-y-3">
              <h3 className="text-sm font-semibold text-slate-700 uppercase tracking-wide flex items-center gap-2">
                <Icon icon="ph:info" width={18} className="text-slate-500" />
                Alert Specifics
              </h3>
              <div className="grid grid-cols-1 md:grid-cols-2 gap-4 pl-6">
                {/* Direction */}
                {alert.direction && (
                  <div className="space-y-1">
                    <p className="text-sm font-medium text-slate-500">Transaction Direction</p>
                    <p className="text-base text-slate-900">{alert.direction}</p>
                  </div>
                )}

                {/* Evaluation Window */}
                {alert.evaluation_window_start && alert.evaluation_window_end && (
                  <div className="space-y-1 md:col-span-2">
                    <p className="text-sm font-medium text-slate-500">Evaluation Period</p>
                    <p className="text-base text-slate-900">
                      {new Date(alert.evaluation_window_start).toLocaleDateString("en-US", {
                        month: "short",
                        day: "numeric",
                        year: "numeric"
                      })} - {new Date(alert.evaluation_window_end).toLocaleDateString("en-US", {
                        month: "short",
                        day: "numeric",
                        year: "numeric"
                      })}
                    </p>
                  </div>
                )}

                {/* Transaction Count */}
                <div className="space-y-1">
                  <p className="text-sm font-medium text-slate-500">Transactions Involved</p>
                  <p className="text-base text-slate-900">{alert.total_transaction_count}</p>
                </div>
              </div>
            </div>

            {/* Timeline Section */}
            <div className="space-y-3">
              <h3 className="text-sm font-semibold text-slate-700 uppercase tracking-wide flex items-center gap-2">
                <Icon icon="ph:clock" width={18} className="text-slate-500" />
                Timeline
              </h3>
              <div className="grid grid-cols-1 md:grid-cols-2 gap-4 pl-6">
                <div className="space-y-1">
                  <p className="text-sm font-medium text-slate-500">Alert Created</p>
                  <p className="text-base text-slate-900">{formattedCreatedAt}</p>
                </div>

                {formattedClearedAt && (
                  <div className="space-y-1">
                    <p className="text-sm font-medium text-slate-500">Auto-Cleared</p>
                    <p className="text-base text-slate-900">{formattedClearedAt}</p>
                  </div>
                )}

                {formattedDismissedAt && (
                  <div className="space-y-1">
                    <p className="text-sm font-medium text-slate-500">Manually Dismissed</p>
                    <p className="text-base text-slate-900">{formattedDismissedAt}</p>
                  </div>
                )}
              </div>
            </div>

            {/* Dismissal Reason Section */}
            {alert.dismissed_reason && alert.dismissed_reason.trim() && (
              <div className="space-y-3">
                <h3 className="text-sm font-semibold text-slate-700 uppercase tracking-wide flex items-center gap-2">
                  <Icon icon="ph:note" width={18} className="text-slate-500" />
                  Dismissal Justification
                </h3>
                <div className="bg-amber-50 border border-amber-200 rounded-lg p-4">
                  <p className="text-sm text-amber-900">{alert.dismissed_reason}</p>
                </div>
              </div>
            )}
          </div>
        </CardContent>
      </Card>

      {/* Transaction Evidence Progress */}
      <Card>
        <CardHeader>
          <CardTitle>Transaction Documentation</CardTitle>
          <CardDescription>
            Transactions with high-confidence note matches: {alert.matched_transaction_count} of {alert.total_transaction_count}
          </CardDescription>
        </CardHeader>
        <CardContent>
          <div className="space-y-3">
            <div className="w-full bg-slate-200 rounded-full h-4">
              <div
                className={`h-4 rounded-full transition-all flex items-center justify-end pr-2 ${
                  progress >= 100 ? "bg-green-500" : progress >= 50 ? "bg-amber-500" : "bg-red-500"
                }`}
                style={{ width: `${Math.min(progress, 100)}%` }}
              >
                {progress > 10 && (
                  <span className="text-xs font-medium text-white">
                    {Math.round(progress)}%
                  </span>
                )}
              </div>
            </div>
            <div className="flex items-center gap-2 text-sm text-slate-600">
              <Icon
                icon={progress >= 100 ? "ph:check-circle" : progress >= 50 ? "ph:warning" : "ph:x-circle"}
                className={progress >= 100 ? "text-green-600" : progress >= 50 ? "text-amber-600" : "text-red-600"}
                width={18}
              />
              <span>
                {progress >= 100
                  ? "All transactions have supporting notes"
                  : progress >= 50
                  ? "Some transactions have supporting notes"
                  : "Most transactions lack supporting notes"}
              </span>
            </div>
          </div>
        </CardContent>
      </Card>

      {/* Related Transactions */}
      <Card>
        <CardHeader>
          <CardTitle>Related Transactions</CardTitle>
          <CardDescription>
            Transactions that triggered this alert and their related CRM notes if found
          </CardDescription>
        </CardHeader>
        <CardContent>
          {notesError && <p className="text-sm text-red-600 mb-3">Could not load related notes: {notesError}</p>}
          {alert.transactions && alert.transactions.length > 0 ? (
            <div className="space-y-3">
              {alert.transactions.map((transaction: Transaction) => (
                <button
                  type="button"
                  onClick={() => onTransactionClick?.(transaction)}
                  className="w-full text-left p-4 border border-slate-200 rounded-lg hover:border-blue-200 hover:shadow-sm transition-all bg-white"
                >
                  <div className="flex items-center justify-between">
                    <div className="space-y-1">
                      <div className="flex items-center gap-2">
                        <Icon icon="ph:arrow-right" className="text-blue-600" width={16} />
                        <span className="text-sm font-mono text-slate-900">{transaction.transaction_id}</span>
                        <span className="text-xs text-slate-500">
                          {new Date(transaction.date).toLocaleDateString("en-US")}
                        </span>
                      </div>
                      <div className="flex items-center gap-3 text-xs text-slate-600">
                        <span>{transaction.direction}</span>
                        <span>•</span>
                        <span>{transaction.type}</span>
                        <span>•</span>
                        <span>{transaction.counterparty_entity}</span>
                      </div>
                    </div>
                    <div className="text-right">
                      <p className="text-lg font-semibold text-slate-900">
                        {parseFloat(transaction.amount).toLocaleString("de-CH", {
                          minimumFractionDigits: 2,
                          maximumFractionDigits: 2,
                        })}{" "}
                        {transaction.currency}
                      </p>
                    </div>
                  </div>

                  {/* Related CRM Notes */}
                  {(() => {
                    const relatedNotes = notesByTransaction[transaction.transaction_id] || [];
                    const showSection = notesLoading || relatedNotes.length > 0;
                    if (!showSection) return null;
                    return (
                      <div className="mt-4 border-t border-slate-200 pt-3 space-y-2">
                        <div className="flex items-center gap-2 text-sm font-semibold text-slate-700">
                          <Icon icon="ph:note-duotone" width={16} />
                          <span>Related CRM Notes</span>
                          {notesLoading && <span className="text-xs text-slate-500">(loading...)</span>}
                        </div>
                        {notesLoading ? (
                          <p className="text-sm text-slate-500">Loading related notes...</p>
                        ) : (
                          <div className="space-y-2">
                            {relatedNotes.map((note) => (
                              <div key={note.id} className="p-3 border border-slate-200 rounded-lg bg-slate-50">
                                <div className="flex items-center justify-between text-xs text-slate-500 mb-1">
                                  <span>{new Date(note.date).toLocaleDateString("en-US")}</span>
                                  <span className="font-mono text-[11px]">Note ID: {note.id}</span>
                                </div>
                                <p className="text-sm text-slate-800 whitespace-pre-line">{note.text}</p>
                              </div>
                            ))}
                          </div>
                        )}
                      </div>
                    );
                  })()}
                </button>
              ))}
            </div>
          ) : (
            <p className="text-sm text-slate-500">No related transactions found.</p>
          )}
        </CardContent>
      </Card>

      {/* Dismiss Modal */}
      {showDismissModal && (
        <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50">
          <div className="bg-white rounded-lg p-6 max-w-md w-full mx-4 space-y-4">
            <div className="flex items-center gap-3">
              <Icon icon="ph:warning-circle" className="text-red-600" width={24} />
              <h3 className="text-lg font-semibold text-slate-900">Dismiss Alert</h3>
            </div>
            <p className="text-sm text-slate-600">
              Please provide a reason for dismissing this alert. This action will close the alert and record your justification.
            </p>
            <div className="space-y-2">
              <label className="text-sm font-medium text-slate-700">Reason for dismissal</label>
              <textarea
                value={dismissReason}
                onChange={(e) => setDismissReason(e.target.value)}
                placeholder="Enter the reason for dismissing this alert..."
                className="w-full px-3 py-2 border border-slate-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500/20 focus:border-blue-500 transition-all text-sm"
                rows={4}
              />
            </div>
            {dismissError && (
              <p className="text-sm text-red-600">{dismissError}</p>
            )}
            <div className="flex gap-3 justify-end">
              <button
                onClick={() => {
                  setShowDismissModal(false);
                  setDismissReason("");
                  setDismissError(null);
                }}
                disabled={dismissing}
                className="px-4 py-2 border border-slate-200 text-slate-700 rounded-lg hover:bg-slate-50 transition-colors text-sm"
              >
                Cancel
              </button>
              <button
                onClick={handleDismiss}
                disabled={dismissing || !dismissReason.trim()}
                className="px-4 py-2 bg-red-600 text-white rounded-lg hover:bg-red-700 disabled:bg-slate-300 disabled:cursor-not-allowed transition-colors text-sm flex items-center gap-2"
              >
                {dismissing ? (
                  <>
                    <Icon icon="mdi:loading" className="animate-spin" width={16} />
                    Dismissing...
                  </>
                ) : (
                  <>
                    <Icon icon="ph:check" width={16} />
                    Confirm Dismissal
                  </>
                )}
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
