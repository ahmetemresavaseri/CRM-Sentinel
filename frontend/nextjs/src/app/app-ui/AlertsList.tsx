"use client";

import { useState, useCallback } from "react";
import { Alert } from "@/types/transaction";
import { getAlerts } from "@/lib/api";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Pagination } from "@/components/ui/pagination";
import { PaginationInfo } from "@/components/ui/pagination-info";
import { Icon } from "@iconify/react";
import { usePagination } from "@/hooks/usePagination";

interface AlertsListProps {
  onAlertClick?: (alert: Alert) => void;
}

const ITEMS_PER_PAGE = 15;

// Rule name formatting helper
const getRuleDisplayName = (ruleName: string) => {
  const ruleMap: Record<string, { name: string; color: string }> = {
    large_value_transaction: { name: "Large Value Transaction", color: "bg-indigo-100 text-indigo-700 border-indigo-200" },
    high_risk_client_transaction: { name: "High-Risk Client Transaction", color: "bg-rose-100 text-rose-700 border-rose-200" },
    smurfing_detection: { name: "Smurfing Detection", color: "bg-orange-100 text-orange-700 border-orange-200" },
    pass_through_activity: { name: "Pass-Through Activity", color: "bg-teal-100 text-teal-700 border-teal-200" },
    unusual_transaction_pattern: { name: "Unusual Transaction Pattern", color: "bg-cyan-100 text-cyan-700 border-cyan-200" },
  };
  return ruleMap[ruleName] || { name: ruleName, color: "bg-blue-100 text-blue-700 border-blue-200" };
};

export default function AlertsList({ onAlertClick }: AlertsListProps) {
  const [searchInput, setSearchInput] = useState<string>("");
  const [searchTerm, setSearchTerm] = useState<string>("");
  const [statusFilter, setStatusFilter] = useState<"all" | "open" | "auto_cleared" | "manual">("all");
  const [ruleFilter, setRuleFilter] = useState<"all" | "large_value_transaction" | "high_risk_client_transaction" | "smurfing_detection" | "pass_through_activity" | "unusual_transaction_pattern">("all");

  // Memoize filter and sort functions to prevent re-renders
  const filterFn = useCallback((alert: Alert, term: string) => {
    const termLower = term.toLowerCase();
    return (
      alert.client_id.toLowerCase().includes(termLower) ||
      alert.rule_name.toLowerCase().includes(termLower) ||
      alert.id.toLowerCase().includes(termLower)
    );
  }, []);

  const sortFn = useCallback((a: Alert, b: Alert) => {
    return new Date(b.created_at).getTime() - new Date(a.created_at).getTime();
  }, []);

  // Use the pagination hook
  const {
    items: alerts,
    totalItems,
    currentPage,
    totalPages,
    loading,
    error,
    setCurrentPage,
  } = usePagination({
    fetchFn: getAlerts,
    itemsPerPage: ITEMS_PER_PAGE,
    searchTerm,
    filterFn,
    sortFn,
  });

  // Handle page change
  const handlePageChange = (page: number) => {
    setCurrentPage(page);
    window.scrollTo({ top: 0, behavior: "smooth" });
  };

  // Apply filters
  const filteredAlerts = alerts.filter((alert) => {
    // Status filter (now includes clearance type)
    // IMPORTANT: Manual dismissal takes precedence over auto-clear (same logic as status badge)
    if (statusFilter === "open" && !alert.is_open) return false;

    // For auto_cleared filter: only show alerts that were auto-cleared AND NOT manually dismissed
    if (statusFilter === "auto_cleared") {
      if (alert.is_open) return false;
      if (alert.dismissed_reason && alert.dismissed_reason.trim()) return false; // Manual dismissal takes precedence
      if (!alert.cleared_by_matching) return false;
    }

    // For manual filter: show alerts with dismissed_reason OR (closed but not auto-cleared)
    if (statusFilter === "manual") {
      if (alert.is_open) return false;
      // If has dismissed_reason (non-empty), it's manually dismissed
      if (alert.dismissed_reason && alert.dismissed_reason.trim()) return true;
      // Otherwise, must not be auto-cleared to be considered manual
      if (alert.cleared_by_matching) return false;
    }

    // Rule type filter
    if (ruleFilter !== "all" && alert.rule_name !== ruleFilter) return false;

    return true;
  });

  // Loading state
  if (loading) {
    return (
      <div className="space-y-6">
        <Card>
          <CardHeader>
            <CardTitle>AML Alerts</CardTitle>
            <CardDescription>Loading alerts...</CardDescription>
          </CardHeader>
          <CardContent>
            <div className="flex items-center justify-center py-12">
              <Icon
                icon="mdi:loading"
                className="animate-spin text-blue-600"
                width={32}
              />
            </div>
          </CardContent>
        </Card>
      </div>
    );
  }

  // Error state
  if (error) {
    return (
      <div className="space-y-6">
        <Card>
          <CardHeader>
            <CardTitle>AML Alerts</CardTitle>
            <CardDescription>Error loading alerts</CardDescription>
          </CardHeader>
          <CardContent>
            <div className="flex flex-col items-center justify-center py-12 space-y-4">
              <Icon
                icon="mdi:alert-circle"
                className="text-red-600"
                width={48}
              />
              <p className="text-sm text-slate-600">{error}</p>
              <button
                onClick={() => window.location.reload()}
                className="px-4 py-2 bg-blue-600 text-white rounded-md hover:bg-blue-700 transition-colors"
              >
                Retry
              </button>
            </div>
          </CardContent>
        </Card>
      </div>
    );
  }

  // Always show search bar and filters
  return (
    <div className="space-y-6">
      <div className="flex justify-between items-center">
        <div>
          <h2 className="text-xl font-semibold text-slate-900">AML Alerts</h2>
          <p className="text-sm text-slate-500">Filter by client ID, rule name, or alert ID.</p>
        </div>
        <form className="relative w-64" onSubmit={(e) => { e.preventDefault(); setSearchTerm(searchInput); }}>
          <Icon icon="ph:magnifying-glass" className="absolute left-3 top-1/2 -translate-y-1/2 text-slate-400" />
          <input
            type="text"
            placeholder="Search alerts..."
            className="w-full pl-10 pr-4 py-2 border border-slate-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500/20 focus:border-blue-500 transition-all text-sm"
            value={searchInput}
            onChange={(e) => setSearchInput(e.target.value)}
            onKeyDown={(e) => {
              if (e.key === "Enter") {
                e.preventDefault();
                setSearchTerm(searchInput);
              }
            }}
          />
        </form>
      </div>

      {/* Filter buttons */}
      <div className="flex flex-col gap-4">
        <div className="flex gap-4 items-center">
          <div className="flex gap-2">
            <span className="text-sm text-slate-600 font-medium">Status:</span>
            <button
              onClick={() => setStatusFilter("all")}
              className={`px-3 py-1 text-xs rounded-full transition-colors ${
                statusFilter === "all"
                  ? "bg-blue-600 text-white"
                  : "bg-slate-200 text-slate-600 hover:bg-slate-300"
              }`}
            >
              All
            </button>
            <button
              onClick={() => setStatusFilter("open")}
              className={`px-3 py-1 text-xs rounded-full transition-colors ${
                statusFilter === "open"
                  ? "bg-red-600 text-white"
                  : "bg-slate-200 text-slate-600 hover:bg-slate-300"
              }`}
            >
              Open
            </button>
            <button
              onClick={() => setStatusFilter("auto_cleared")}
              className={`px-3 py-1 text-xs rounded-full transition-colors ${
                statusFilter === "auto_cleared"
                  ? "bg-purple-600 text-white"
                  : "bg-slate-200 text-slate-600 hover:bg-slate-300"
              }`}
            >
              Auto-cleared
            </button>
            <button
              onClick={() => setStatusFilter("manual")}
              className={`px-3 py-1 text-xs rounded-full transition-colors ${
                statusFilter === "manual"
                  ? "bg-amber-600 text-white"
                  : "bg-slate-200 text-slate-600 hover:bg-slate-300"
              }`}
            >
              Manually Dismissed
            </button>
          </div>
        </div>

        <div className="flex gap-2">
          <span className="text-sm text-slate-600 font-medium">Rule Type:</span>
          <button
            onClick={() => setRuleFilter("all")}
            className={`px-3 py-1 text-xs rounded-full transition-colors ${
              ruleFilter === "all"
                ? "bg-blue-600 text-white"
                : "bg-slate-200 text-slate-600 hover:bg-slate-300"
            }`}
          >
            All
          </button>
          <button
            onClick={() => setRuleFilter("large_value_transaction")}
            className={`px-3 py-1 text-xs rounded-full transition-colors ${
              ruleFilter === "large_value_transaction"
                ? "bg-indigo-600 text-white"
                : "bg-slate-200 text-slate-600 hover:bg-slate-300"
            }`}
          >
            Large Value
          </button>
          <button
            onClick={() => setRuleFilter("high_risk_client_transaction")}
            className={`px-3 py-1 text-xs rounded-full transition-colors ${
              ruleFilter === "high_risk_client_transaction"
                ? "bg-rose-600 text-white"
                : "bg-slate-200 text-slate-600 hover:bg-slate-300"
            }`}
          >
            High-Risk Client
          </button>
          <button
            onClick={() => setRuleFilter("smurfing_detection")}
            className={`px-3 py-1 text-xs rounded-full transition-colors ${
              ruleFilter === "smurfing_detection"
                ? "bg-orange-600 text-white"
                : "bg-slate-200 text-slate-600 hover:bg-slate-300"
            }`}
          >
            Smurfing
          </button>
          <button
            onClick={() => setRuleFilter("pass_through_activity")}
            className={`px-3 py-1 text-xs rounded-full transition-colors ${
              ruleFilter === "pass_through_activity"
                ? "bg-teal-600 text-white"
                : "bg-slate-200 text-slate-600 hover:bg-slate-300"
            }`}
          >
            Pass-Through
          </button>
          <button
            onClick={() => setRuleFilter("unusual_transaction_pattern")}
            className={`px-3 py-1 text-xs rounded-full transition-colors ${
              ruleFilter === "unusual_transaction_pattern"
                ? "bg-cyan-600 text-white"
                : "bg-slate-200 text-slate-600 hover:bg-slate-300"
            }`}
          >
            Unusual Pattern
          </button>
        </div>
      </div>

      {/* Pagination info at top */}
      <div className="flex justify-between items-center">
        <PaginationInfo
          currentPage={currentPage}
          itemsPerPage={ITEMS_PER_PAGE}
          totalItems={filteredAlerts.length}
        />
        <Pagination
          currentPage={currentPage}
          totalPages={Math.max(1, Math.ceil(filteredAlerts.length / ITEMS_PER_PAGE))}
          onPageChange={handlePageChange}
        />
      </div>

      <Card>
        <CardHeader>
          <CardTitle>AML Alerts</CardTitle>
          <CardDescription>
            {filteredAlerts.length === 0
              ? "No alerts match your filters"
              : `Viewing page ${currentPage} of ${Math.max(1, Math.ceil(filteredAlerts.length / ITEMS_PER_PAGE))}`}
          </CardDescription>
        </CardHeader>
        <CardContent>
          {filteredAlerts.length === 0 ? (
            <div className="flex flex-col items-center justify-center py-12 space-y-4">
              <Icon
                icon={totalItems === 0 ? "ph:bell-ringing-duotone" : "ph:magnifying-glass"}
                className="text-slate-400"
                width={48}
              />
              <p className="text-sm text-slate-600">
                {totalItems === 0
                  ? "There are no alerts to display."
                  : "No alerts found matching your search or filters."}
              </p>
              {(searchTerm || statusFilter !== "all" || ruleFilter !== "all") && (
                <button
                  onClick={() => {
                    setSearchInput("");
                    setSearchTerm("");
                    setStatusFilter("all");
                    setRuleFilter("all");
                    setCurrentPage(1);
                  }}
                  className="px-4 py-2 bg-blue-600 text-white text-sm rounded-lg hover:bg-blue-700 transition-colors"
                >
                  Clear Filters
                </button>
              )}
            </div>
          ) : (
            <div className="space-y-4">
              {filteredAlerts
                .slice((currentPage - 1) * ITEMS_PER_PAGE, currentPage * ITEMS_PER_PAGE)
                .map((alert: Alert) => {
                // Determine if alert was reopened
                const isReopened = alert.is_open && (alert.cleared_by_matching || alert.dismissed_at !== null);

                // Status badge with reopened detection
                // IMPORTANT: Check dismissed_reason first - manual dismissal takes precedence over auto-clear
                const statusBadge = alert.is_open
                  ? isReopened
                    ? { color: "bg-orange-100 text-orange-700 border-orange-200", label: "Reopened", icon: "ph:arrow-counter-clockwise" }
                    : { color: "bg-red-100 text-red-700 border-red-200", label: "Open", icon: "ph:warning-circle" }
                  : alert.dismissed_reason && alert.dismissed_reason.trim()
                  ? { color: "bg-green-100 text-green-700 border-green-200", label: "Dismissed", icon: "ph:x-circle" }
                  : alert.cleared_by_matching
                  ? { color: "bg-purple-100 text-purple-700 border-purple-200", label: "Auto-cleared", icon: "ph:check-circle" }
                  : { color: "bg-green-100 text-green-700 border-green-200", label: "Dismissed", icon: "ph:x-circle" };

                const progress = alert.total_transaction_count > 0
                  ? (alert.matched_transaction_count / alert.total_transaction_count) * 100
                  : 0;

                const ruleDisplay = getRuleDisplayName(alert.rule_name);

                return (
                  <div
                    key={alert.id}
                    onClick={() => onAlertClick?.(alert)}
                    className="p-4 border border-slate-200 rounded-lg hover:border-blue-400 hover:bg-blue-50/50 cursor-pointer transition-all group"
                  >
                    <div className="flex items-start justify-between gap-4">
                      <div className="flex gap-3 flex-1">
                        <Icon
                          icon="ph:bell-ringing"
                          className="text-slate-400 mt-0.5 group-hover:text-blue-600 transition-colors"
                          width={20}
                        />
                        <div className="flex-1 space-y-2">
                          <div className="flex items-center gap-2 flex-wrap">
                            <span className="text-sm font-mono text-slate-900">{alert.id}</span>
                            <span className={`px-2 py-0.5 text-xs font-medium rounded border ${statusBadge.color} flex items-center gap-1`}>
                              <Icon icon={statusBadge.icon} width={12} />
                              {statusBadge.label}
                            </span>
                            <span className={`px-2 py-0.5 text-xs font-medium rounded border ${ruleDisplay.color}`}>
                              {ruleDisplay.name}
                            </span>
                            <span className="text-xs text-slate-500">
                              Client: {alert.client_id}
                            </span>
                          </div>

                          {/* Progress bar for matched transactions */}
                          {alert.total_transaction_count > 0 && (
                            <div className="space-y-1">
                              <div className="flex justify-between text-xs text-slate-600">
                                <span>Transactions with Documentation</span>
                                <span>{alert.matched_transaction_count} / {alert.total_transaction_count} documented</span>
                              </div>
                              <div className="w-full bg-slate-200 rounded-full h-2">
                                <div
                                  className={`h-2 rounded-full transition-all ${
                                    progress >= 100 ? "bg-green-500" : progress >= 50 ? "bg-amber-500" : "bg-red-500"
                                  }`}
                                  style={{ width: `${Math.min(progress, 100)}%` }}
                                />
                              </div>
                            </div>
                          )}

                          <div className="text-xs text-slate-500">
                            Created: {new Date(alert.created_at).toLocaleDateString("en-US", {
                              year: "numeric",
                              month: "short",
                              day: "numeric",
                              hour: "2-digit",
                              minute: "2-digit",
                            })}
                            {alert.cleared_at && (
                              <span className="ml-3">
                                Cleared: {new Date(alert.cleared_at).toLocaleDateString("en-US", {
                                  year: "numeric",
                                  month: "short",
                                  day: "numeric",
                                  hour: "2-digit",
                                  minute: "2-digit",
                                })}
                              </span>
                            )}
                            {alert.dismissed_at && (
                              <span className="ml-3">
                                Dismissed: {new Date(alert.dismissed_at).toLocaleDateString("en-US", {
                                  year: "numeric",
                                  month: "short",
                                  day: "numeric",
                                  hour: "2-digit",
                                  minute: "2-digit",
                                })}
                              </span>
                            )}
                          </div>
                        </div>
                      </div>
                      <Icon
                        icon="ph:caret-right"
                        className="text-slate-400 group-hover:text-blue-600 transition-colors"
                        width={20}
                      />
                    </div>
                  </div>
                  );
                })}
            </div>
          )}
        </CardContent>
      </Card>

      {/* Pagination at bottom */}
      <div className="flex justify-between items-center">
        <PaginationInfo
          currentPage={currentPage}
          itemsPerPage={ITEMS_PER_PAGE}
          totalItems={filteredAlerts.length}
        />
        <Pagination
          currentPage={currentPage}
          totalPages={Math.max(1, Math.ceil(filteredAlerts.length / ITEMS_PER_PAGE))}
          onPageChange={handlePageChange}
        />
      </div>
    </div>
  );
}
