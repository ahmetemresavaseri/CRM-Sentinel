"use client";

import { useState } from "react";
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from "@/components/ui/card";
import { useAuth } from "@/contexts/AuthContext";
import { Icon } from "@iconify/react";
import { evaluateAlerts, autoClearAlerts, clearAllAlerts } from "@/lib/api";

export default function UserInfo() {
  const { user, isLoading } = useAuth();
  const [evaluating, setEvaluating] = useState<boolean>(false);
  const [autoClearing, setAutoClearing] = useState<boolean>(false);
  const [clearingAll, setClearingAll] = useState<boolean>(false);
  const [showClearAllModal, setShowClearAllModal] = useState<boolean>(false);
  const [evaluateResult, setEvaluateResult] = useState<string | null>(null);
  const [autoClearResult, setAutoClearResult] = useState<string | null>(null);
  const [clearAllResult, setClearAllResult] = useState<string | null>(null);
  const [evaluateError, setEvaluateError] = useState<string | null>(null);
  const [autoClearError, setAutoClearError] = useState<string | null>(null);
  const [clearAllError, setClearAllError] = useState<string | null>(null);

  const handleEvaluateAlerts = async () => {
    try {
      setEvaluating(true);
      setEvaluateError(null);
      setEvaluateResult(null);
      const result = await evaluateAlerts();
      setEvaluateResult(
        `Alert evaluation complete! Created: ${result.created}, Updated: ${result.updated}, Skipped: ${result.skipped}`
      );
    } catch (err) {
      setEvaluateError(err instanceof Error ? err.message : "Failed to evaluate alerts");
    } finally {
      setEvaluating(false);
    }
  };

  const handleAutoClearAlerts = async () => {
    try {
      setAutoClearing(true);
      setAutoClearError(null);
      setAutoClearResult(null);
      const result = await autoClearAlerts();
      setAutoClearResult(result.message || `Auto-cleared ${result.cleared_count} alert(s)`);
    } catch (err) {
      setAutoClearError(err instanceof Error ? err.message : "Failed to auto-clear alerts");
    } finally {
      setAutoClearing(false);
    }
  };

  const handleClearAllAlerts = async () => {
    try {
      setClearingAll(true);
      setClearAllError(null);
      setClearAllResult(null);
      const result = await clearAllAlerts();
      setClearAllResult(result.message || `Deleted ${result.deleted_count} alert(s)`);
      setShowClearAllModal(false);
    } catch (err) {
      setClearAllError(err instanceof Error ? err.message : "Failed to clear all alerts");
    } finally {
      setClearingAll(false);
    }
  };

  if (isLoading) {
    return (
      <Card>
        <CardHeader>
          <CardTitle>User Profile</CardTitle>
          <CardDescription>Loading your profile...</CardDescription>
        </CardHeader>
        <CardContent>
          <div className="text-sm text-slate-500">Please wait while we load your information.</div>
        </CardContent>
      </Card>
    );
  }

  if (!user) {
    return (
      <Card>
        <CardHeader>
          <CardTitle>User Profile</CardTitle>
          <CardDescription>No user data available</CardDescription>
        </CardHeader>
        <CardContent>
          <div className="text-sm text-slate-500">You are not logged in.</div>
        </CardContent>
      </Card>
    );
  }

  return (
    <div className="space-y-6">
      <Card>
        <CardHeader>
          <div className="flex items-start justify-between gap-2">
            <div>
              <CardTitle className="text-2xl">User Profile</CardTitle>
              <CardDescription className="mt-1">Your account details</CardDescription>
            </div>
            <span className={`px-3 py-1.5 text-xs font-medium rounded-full border inline-flex items-center gap-2 ${user.write_access ? "bg-green-100 text-green-700 border-green-200" : "bg-slate-100 text-slate-700 border-slate-200"}`}>
              <Icon icon={user.write_access ? "ph:check-circle" : "ph:lock"} width={16} />
              {user.write_access ? "Write Access" : "Read-Only"}
            </span>
          </div>
        </CardHeader>
        <CardContent>
          <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
            <div className="space-y-1">
              <p className="text-sm font-medium text-slate-500">Full Name</p>
              <p className="text-lg font-semibold text-slate-900">{user.full_name || "—"}</p>
            </div>
            <div className="space-y-1">
              <p className="text-sm font-medium text-slate-500">Username</p>
              <p className="text-lg font-semibold text-slate-900">{user.username}</p>
            </div>
            <div className="space-y-1">
              <p className="text-sm font-medium text-slate-500">Email</p>
              <p className="text-lg font-semibold text-slate-900">{user.email || "—"}</p>
            </div>
            <div className="space-y-1">
              <p className="text-sm font-medium text-slate-500">Access</p>
              <div className="flex items-center gap-2">
                <Icon icon={user.write_access ? "ph:pencil" : "ph:eye"} width={18} className={user.write_access ? "text-green-600" : "text-slate-500"} />
                <span className="text-slate-900">{user.write_access ? "Can update (write)" : "Read-only access"}</span>
              </div>
            </div>
          </div>
        </CardContent>
      </Card>

      {user.write_access && (
        <Card>
          <CardHeader>
            <CardTitle className="flex items-center gap-2">
              <Icon icon="ph:gear" width={24} className="text-blue-600" />
              System Actions
            </CardTitle>
            <CardDescription>
              Manually trigger alert evaluation and auto-clearing (useful for testing and demos)
            </CardDescription>
          </CardHeader>
          <CardContent>
            <div className="space-y-4">
              {/* Evaluate Alerts */}
              <div className="border border-slate-200 rounded-lg p-4 space-y-3">
                <div className="flex items-start justify-between gap-4">
                  <div className="flex-1">
                    <h4 className="text-sm font-semibold text-slate-900 flex items-center gap-2">
                      <Icon icon="ph:warning-circle" width={18} className="text-orange-600" />
                      Evaluate AML Alerts
                    </h4>
                    <p className="text-sm text-slate-600 mt-1">
                      Runs all 5 AML rules on unmatched transactions and creates/updates alerts.
                      Normally triggered automatically after transaction uploads.
                    </p>
                  </div>
                  <button
                    onClick={handleEvaluateAlerts}
                    disabled={evaluating}
                    className="px-4 py-2 bg-orange-600 text-white text-sm rounded-lg hover:bg-orange-700 transition-colors flex items-center gap-2 disabled:opacity-50 disabled:cursor-not-allowed shrink-0"
                  >
                    {evaluating ? (
                      <>
                        <Icon icon="mdi:loading" className="animate-spin" width={16} />
                        Evaluating...
                      </>
                    ) : (
                      <>
                        <Icon icon="ph:play" width={16} />
                        Run Evaluation
                      </>
                    )}
                  </button>
                </div>
                {evaluateResult && (
                  <div className="bg-green-50 border border-green-200 rounded-lg p-3 flex items-start gap-2">
                    <Icon icon="ph:check-circle" className="text-green-600 shrink-0 mt-0.5" width={18} />
                    <p className="text-sm text-green-800">{evaluateResult}</p>
                  </div>
                )}
                {evaluateError && (
                  <div className="bg-red-50 border border-red-200 rounded-lg p-3 flex items-start gap-2">
                    <Icon icon="ph:x-circle" className="text-red-600 shrink-0 mt-0.5" width={18} />
                    <p className="text-sm text-red-800">{evaluateError}</p>
                  </div>
                )}
              </div>

              {/* Auto-Clear Alerts */}
              <div className="border border-slate-200 rounded-lg p-4 space-y-3">
                <div className="flex items-start justify-between gap-4">
                  <div className="flex-1">
                    <h4 className="text-sm font-semibold text-slate-900 flex items-center gap-2">
                      <Icon icon="ph:check-circle" width={18} className="text-purple-600" />
                      Auto-Clear Matched Alerts
                    </h4>
                    <p className="text-sm text-slate-600 mt-1">
                      Checks all open alerts and auto-clears those where all transactions now have CRM note matches.
                      Useful after bulk note uploads or matching operations.
                    </p>
                  </div>
                  <button
                    onClick={handleAutoClearAlerts}
                    disabled={autoClearing}
                    className="px-4 py-2 bg-purple-600 text-white text-sm rounded-lg hover:bg-purple-700 transition-colors flex items-center gap-2 disabled:opacity-50 disabled:cursor-not-allowed shrink-0"
                  >
                    {autoClearing ? (
                      <>
                        <Icon icon="mdi:loading" className="animate-spin" width={16} />
                        Clearing...
                      </>
                    ) : (
                      <>
                        <Icon icon="ph:play" width={16} />
                        Run Auto-Clear
                      </>
                    )}
                  </button>
                </div>
                {autoClearResult && (
                  <div className="bg-green-50 border border-green-200 rounded-lg p-3 flex items-start gap-2">
                    <Icon icon="ph:check-circle" className="text-green-600 shrink-0 mt-0.5" width={18} />
                    <p className="text-sm text-green-800">{autoClearResult}</p>
                  </div>
                )}
                {autoClearError && (
                  <div className="bg-red-50 border border-red-200 rounded-lg p-3 flex items-start gap-2">
                    <Icon icon="ph:x-circle" className="text-red-600 shrink-0 mt-0.5" width={18} />
                    <p className="text-sm text-red-800">{autoClearError}</p>
                  </div>
                )}
              </div>

              {/* Clear All Alerts - Destructive Action */}
              <div className="border-2 border-red-300 bg-red-50 rounded-lg p-4 space-y-3">
                <div className="flex items-start justify-between gap-4">
                  <div className="flex-1">
                    <h4 className="text-sm font-semibold text-red-900 flex items-center gap-2">
                      <Icon icon="ph:trash" width={18} className="text-red-600" />
                      Clear All Alerts (Destructive)
                    </h4>
                    <p className="text-sm text-red-700 mt-1">
                      Deletes ALL alerts from the database. Use this to reset the alert system and start fresh.
                      After clearing, run "Evaluate AML Alerts" to generate new alerts.
                    </p>
                  </div>
                  <button
                    onClick={() => setShowClearAllModal(true)}
                    disabled={clearingAll}
                    className="px-4 py-2 bg-red-600 text-white text-sm rounded-lg hover:bg-red-700 transition-colors flex items-center gap-2 disabled:opacity-50 disabled:cursor-not-allowed shrink-0"
                  >
                    <Icon icon="ph:trash" width={16} />
                    Clear All
                  </button>
                </div>
                {clearAllResult && (
                  <div className="bg-green-50 border border-green-200 rounded-lg p-3 flex items-start gap-2">
                    <Icon icon="ph:check-circle" className="text-green-600 shrink-0 mt-0.5" width={18} />
                    <p className="text-sm text-green-800">{clearAllResult}</p>
                  </div>
                )}
                {clearAllError && (
                  <div className="bg-red-100 border border-red-300 rounded-lg p-3 flex items-start gap-2">
                    <Icon icon="ph:x-circle" className="text-red-700 shrink-0 mt-0.5" width={18} />
                    <p className="text-sm text-red-800">{clearAllError}</p>
                  </div>
                )}
              </div>
            </div>
          </CardContent>
        </Card>
      )}

      {/* Clear All Alerts Confirmation Modal */}
      {showClearAllModal && (
        <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50">
          <div className="bg-white rounded-lg p-6 max-w-md w-full mx-4 space-y-4">
            <div className="flex items-center gap-3">
              <Icon icon="ph:warning-circle" className="text-red-600" width={24} />
              <h3 className="text-lg font-semibold text-slate-900">Clear All Alerts?</h3>
            </div>
            <p className="text-sm text-slate-600">
              This will permanently delete ALL alerts from the database. This action cannot be undone.
            </p>
            <p className="text-sm text-slate-600">
              This is useful for testing/demos when you want to reset the alert system and start fresh with new data.
            </p>
            <div className="flex gap-3 justify-end">
              <button
                onClick={() => {
                  setShowClearAllModal(false);
                  setClearAllError(null);
                }}
                disabled={clearingAll}
                className="px-4 py-2 border border-slate-200 text-slate-700 rounded-lg hover:bg-slate-50 transition-colors text-sm"
              >
                Cancel
              </button>
              <button
                onClick={handleClearAllAlerts}
                disabled={clearingAll}
                className="px-4 py-2 bg-red-600 text-white rounded-lg hover:bg-red-700 disabled:bg-slate-300 disabled:cursor-not-allowed transition-colors text-sm flex items-center gap-2"
              >
                {clearingAll ? (
                  <>
                    <Icon icon="mdi:loading" className="animate-spin" width={16} />
                    Deleting...
                  </>
                ) : (
                  <>
                    <Icon icon="ph:trash" width={16} />
                    Yes, Delete All Alerts
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
