"use client";

import { useCallback, useEffect, useMemo, useRef, useState } from "react";
import { Icon } from "@iconify/react";
import { Client } from "@/types/client";
import { Alert } from "@/types/transaction";
import { Card, CardHeader, CardTitle, CardContent } from "@/components/ui/card";
import { getClientById, getTransactionsOverview, TransactionsOverview, getAlerts } from "@/lib/api";
import ClientMapping from "./ClientMapping";

interface ClientDetailProps {
  client: Client;
  onBack: () => void;
  onAlertClick?: (alert: Alert) => void;
}

export default function ClientDetail({ client, onBack, onAlertClick }: ClientDetailProps) {
  const [freshClient, setFreshClient] = useState<Client | null>(client);
  const [loading, setLoading] = useState<boolean>(false);
  const [alerts, setAlerts] = useState<Alert[]>([]);
  const [alertsLoading, setAlertsLoading] = useState<boolean>(true);
  const [alertsExpanded, setAlertsExpanded] = useState<boolean>(false);

  useEffect(() => {
    async function fetchClient() {
      if (!client?.client_id) return;
      try {
        setLoading(true);
        const data = await getClientById(client.client_id);
        if (data) setFreshClient(data);
      } finally {
        setLoading(false);
      }
    }
    fetchClient();
  }, [client?.client_id]);

  // Fetch transaction overview for this client
  useEffect(() => {
    async function fetchOverview() {
      const id = freshClient?.client_id || client?.client_id;
      if (!id) return;
      try {
        const data = await getTransactionsOverview(id);
        setTxnOverview(data);
      } catch (err) {
        setTxnOverview(null);
      }
    }
    fetchOverview();
  }, [freshClient?.client_id, client?.client_id]);

  // Fetch open alerts for this client
  useEffect(() => {
    async function fetchAlerts() {
      const id = freshClient?.client_id || client?.client_id;
      if (!id) return;
      try {
        setAlertsLoading(true);
        const data = await getAlerts({ client_id: id, is_open: true });
        setAlerts(Array.isArray(data) ? data : []);
      } catch (err) {
        console.error("Failed to fetch alerts:", err);
        setAlerts([]);
      } finally {
        setAlertsLoading(false);
      }
    }
    fetchAlerts();
  }, [freshClient?.client_id, client?.client_id]);

  const current = freshClient || client;
  if (!current) return null;

  const formatCurrency = (amount: number) =>
    new Intl.NumberFormat("de-CH", { style: "currency", currency: "CHF", maximumFractionDigits: 0 }).format(amount || 0);

  const formatDate = (dateStr: string) =>
    new Date(dateStr).toLocaleDateString("de-CH", { year: "numeric", month: "long", day: "numeric" });

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

  const counterparties = current.declared_counterparties
    ? current.declared_counterparties.split(";").map((s) => s.trim()).filter(Boolean)
    : [];
  const [counterpartyIndex, setCounterpartyIndex] = useState(0);
  const [autoRotate, setAutoRotate] = useState(true);
  const [fadeIn, setFadeIn] = useState(true);
  const fadeTimers = useRef<{ out: ReturnType<typeof setTimeout> | null; in: ReturnType<typeof setTimeout> | null }>({
    out: null,
    in: null,
  });
  const [txnOverview, setTxnOverview] = useState<TransactionsOverview | null>(null);
  const currentCounterparty = useMemo(() => {
    if (!counterparties.length) return null;
    return counterparties[counterpartyIndex];
  }, [counterparties, counterpartyIndex]);

  const clearFadeTimers = useCallback(() => {
    if (fadeTimers.current.out) clearTimeout(fadeTimers.current.out);
    if (fadeTimers.current.in) clearTimeout(fadeTimers.current.in);
    fadeTimers.current.out = null;
    fadeTimers.current.in = null;
  }, []);

  const transitionCounterparty = useCallback(
    (delta: number, pauseAuto?: boolean) => {
      if (counterparties.length <= 1) return;
      if (pauseAuto) setAutoRotate(false);
      clearFadeTimers();
      setFadeIn(false);
      fadeTimers.current.out = setTimeout(() => {
        setCounterpartyIndex((prev) => (prev + delta + counterparties.length) % counterparties.length);
        fadeTimers.current.in = setTimeout(() => setFadeIn(true), 25);
      }, 140);
    },
    [clearFadeTimers, counterparties.length]
  );

  // Rotate through counterparties every 5 seconds when more than one exists
  useEffect(() => {
    if (!autoRotate) return;
    if (counterparties.length <= 1) return;
    const id = setInterval(() => {
      transitionCounterparty(1);
    }, 3000); // auto-rotate interval (ms) for counterparties
    return () => clearInterval(id);
  }, [counterparties.length, autoRotate, transitionCounterparty]);

  // Reset index when data changes
  useEffect(() => {
    setCounterpartyIndex(0);
    setAutoRotate(true);
    clearFadeTimers();
    setFadeIn(true);
  }, [clearFadeTimers, current.declared_counterparties]);

  useEffect(() => {
    return () => clearFadeTimers();
  }, [clearFadeTimers]);

  return (
    <div className="space-y-5 animate-in fade-in duration-500">
      <button onClick={onBack} className="flex items-center gap-2 text-slate-500 hover:text-slate-900 transition-colors">
        <Icon icon="ph:arrow-left" /> Back to Clients
      </button>

      <div className="bg-white p-4 rounded-xl border border-slate-200 shadow-sm flex flex-col md:flex-row justify-between items-start md:items-center gap-4">
        <div className="flex items-center gap-3">
          <div className="w-12 h-12 rounded-xl bg-slate-800 flex items-center justify-center text-white shadow">
            <Icon icon="ph:bank-duotone" width={24} />
          </div>
          <div>
            <div className="flex items-center gap-3 w-full">
              <div className="flex flex-col flex-1 min-w-0">
                {current.name && (
                  <span className="text-base font-semibold text-slate-900 truncate">{current.name}</span>
                )}
              </div>
              <span
                className={`px-2 py-0.5 rounded-full text-xs font-bold uppercase tracking-wide border ${
                  current.status === "Open" ? "bg-emerald-50 text-emerald-700 border-emerald-100" : "bg-slate-100 text-slate-500 border-slate-200"
                }`}
              >
                {current.status}
              </span>
            </div>
            <div className="flex items-center gap-3 text-slate-500 mt-1 text-sm">
              <span className="flex items-center gap-1">
                <Icon icon="ph:calendar-blank" /> Opened: {formatDate(current.opening_date)}
              </span>
              <span className="text-sm text-slate-500">ID: {current.client_id}</span>
              {loading && <span className="text-xs text-slate-400">(refreshing)</span>}
            </div>
          </div>
        </div>

        <div className="flex flex-col items-end gap-2 bg-slate-50 px-3 py-2 rounded-lg border border-slate-100">
          <div className="flex items-center gap-2">
            <span className="text-sm font-medium text-slate-600">Risk:</span>
            <span
              className={`font-bold flex items-center gap-1 ${
                current.client_risk_rating === "High"
                  ? "text-red-600"
                  : current.client_risk_rating === "Medium"
                  ? "text-amber-600"
                  : "text-emerald-600"
              }`}
            >
              <Icon icon={current.client_risk_rating === "High" ? "ph:warning-diamond-fill" : "ph:shield-check-fill"} />
              {current.client_risk_rating}
            </span>
          </div>
          <div className="flex items-center flex-wrap gap-2 text-xs text-slate-600 justify-end">
            <span className="relative inline-flex items-center gap-1 bg-slate-100 px-2 py-0.5 rounded border border-slate-200 select-none group">
              <Icon icon="ph:house-line" /> {current.domicile}
              <span className="pointer-events-none absolute left-1/2 -translate-x-1/2 top-full mt-1 whitespace-nowrap rounded bg-slate-900 text-white text-[10px] px-2 py-1 shadow-lg opacity-0 group-hover:opacity-100">
                Domicile
              </span>
            </span>
            <span className="relative inline-flex items-center gap-1 bg-slate-100 px-2 py-0.5 rounded border border-slate-200 select-none group">
              <Icon icon="ph:flag" /> {current.nationality}
              <span className="pointer-events-none absolute left-1/2 -translate-x-1/2 top-full mt-1 whitespace-nowrap rounded bg-slate-900 text-white text-[10px] px-2 py-1 shadow-lg opacity-0 group-hover:opacity-100">
                Nationality
              </span>
            </span>
            <span className="relative inline-flex items-center gap-1 bg-slate-100 px-2 py-0.5 rounded border border-slate-200 select-none group">
              <Icon icon="ph:briefcase" /> {current.country_of_business}
              <span className="pointer-events-none absolute left-1/2 -translate-x-1/2 top-full mt-1 whitespace-nowrap rounded bg-slate-900 text-white text-[10px] px-2 py-1 shadow-lg opacity-0 group-hover:opacity-100">
                Country of Business
              </span>
            </span>
          </div>
        </div>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-3">
        {/* Transactions overview */}
        <Card className="border-slate-200 shadow-sm relative overflow-hidden group">
          <div className="absolute top-0 left-0 w-1 h-full bg-blue-600" />
          <CardContent className="p-0">
            <p className="text-xs font-medium text-slate-500 uppercase tracking-widest pb-2">Transaction Overview</p>
            <div className="h-px bg-slate-200 mb-4" />
            <div className="space-y-2 text-sm text-slate-700">
              <div className="flex justify-between">
                <span>Amount of transactions</span>
                <span className="font-semibold text-md">{txnOverview?.count_txn ?? "—"}</span>
              </div>
              <div className="flex justify-between">
                <span>Total transactional value</span>
                <span className="font-semibold text-md">
                  {txnOverview ? formatCurrency(Number(txnOverview.sum_amount)) : "—"}
                </span>
              </div>
              <div className="flex justify-between">
                <span>Average amount</span>
                <span className="font-semibold text-md">
                  {txnOverview ? formatCurrency(Number(txnOverview.avg_amount)) : "—"}
                </span>
              </div>
            </div>
          </CardContent>
        </Card>


        {/* Combined AUM and Turnover */}
        <Card className="border-slate-200 shadow-sm relative overflow-hidden group">
          <div className="absolute top-0 left-0 w-1 h-full bg-indigo-500" />
          <CardContent className="p-0">
            <p className="text-xs font-medium text-slate-500 uppercase tracking-widest pb-2">Financial Snapshot</p>
            <div className="h-px bg-slate-200 mb-4" />
            <div className="space-y-3">
              <div className="flex items-center justify-between">
                <span className="text-sm text-slate-600">Assets Under Management</span>
                <span className="text-sm font-bold text-slate-900">{formatCurrency(current.aum)}</span>
              </div>
              <div className="flex items-center justify-between">
                <span className="text-sm text-slate-600">Exp. Monthly Turnover</span>
                <span className="text-sm font-bold text-slate-900">{formatCurrency(current.expected_monthly_turnover)}</span>
              </div>
            </div>
          </CardContent>
        </Card>
        
        {/* Open Alerts */}
        <Card className="border-slate-200 shadow-sm relative overflow-hidden group">
          <div className="absolute top-0 left-0 w-1 h-full bg-red-600" />
          <CardContent className="p-0">
            <p className="text-xs font-medium text-slate-500 uppercase tracking-widest pb-2">Open Alerts</p>
            <div className="h-px bg-slate-200 mb-4" />
            <div className="space-y-2">
              {alertsLoading ? (
                <div className="flex items-center justify-center py-4">
                  <Icon icon="ph:spinner" className="animate-spin text-red-600" width={24} />
                </div>
              ) : (
                <>
                  <div className="flex items-center gap-3">
                    <div className={`w-12 h-12 rounded-lg flex items-center justify-center ${
                      alerts.length > 0 ? 'bg-red-50 text-red-600' : 'bg-slate-50 text-slate-400'
                    }`}>
                      <Icon icon="ph:warning-circle" width={28} />
                    </div>
                    <div>
                      <p className="text-2xl font-bold text-slate-900">{alerts.length}</p>
                      <p className="text-xs text-slate-500">Active {alerts.length === 1 ? 'Alert' : 'Alerts'}</p>
                    </div>
                  </div>
                  {alerts.length > 0 && (
                    <div className="pt-2 text-xs text-slate-600">
                      <p className="flex items-center gap-1">
                        <Icon icon="ph:info" width={14} />
                        Requires review
                      </p>
                    </div>
                  )}
                </>
              )}
            </div>
          </CardContent>
        </Card>

        {/* Declared counterparties slider */}
        <Card className="border-slate-200 shadow-sm group">
          <CardContent className="p-0">
            <p className="text-xs font-medium text-slate-500 uppercase tracking-widest pb-2">Declared Counterparties</p>
            <div className="h-px bg-slate-200 mb-6" />
            {currentCounterparty ? (
              <div className="flex items-center gap-3 p-2 bg-slate-50 rounded border border-slate-100">
                {counterparties.length > 1 ? (
                  <button
                    type="button"
                    aria-label="Previous counterparty"
                    onClick={() => transitionCounterparty(-1, true)}
                    className="w-8 h-8 flex items-center justify-center rounded hover:bg-slate-200 transition-colors text-slate-600"
                  >
                    <Icon icon="ph:caret-left" width={16} height={16} />
                  </button>
                ) : (
                  <span className="w-8" aria-hidden="true" />
                )}
                <div
                  className={`flex items-center gap-3 flex-1 min-w-0 justify-center transition-opacity duration-180 ease-in-out ${
                    fadeIn ? "opacity-100" : "opacity-0"
                  }`}
                >
                  <div className="w-7 h-7 rounded-full bg-white flex items-center justify-center text-slate-400 border border-slate-200 font-bold text-xs shadow-sm">
                    {currentCounterparty.substring(0, 2).toUpperCase()}
                  </div>
                  <div className="flex-1 min-w-0">
                    <p className="font-semibold text-slate-900 text-sm truncate">{currentCounterparty}</p>
                    {counterparties.length > 1 && (
                      <p className="text-xs text-slate-500">
                        Showing {counterpartyIndex + 1} of {counterparties.length}
                      </p>
                    )}
                  </div>
                </div>
                {counterparties.length > 1 ? (
                  <button
                    type="button"
                    aria-label="Next counterparty"
                    onClick={() => transitionCounterparty(1, true)}
                    className="w-8 h-8 flex items-center justify-center rounded hover:bg-slate-200 transition-colors text-slate-600"
                  >
                    <Icon icon="ph:caret-right" width={16} height={16} />
                  </button>
                ) : (
                  <span className="w-8" aria-hidden="true" />
                )}
              </div>
            ) : (
              <p className="text-sm text-slate-500">No counterparties declared.</p>
            )}
          </CardContent>
        </Card>
      </div>

      {/* Full-width mapping below the summary grid */}
      <ClientMapping clientId={current.client_id} />

      {/* Open Alerts Section - Collapsible */}
      {alerts.length > 0 && (
        <Card className="border-slate-200 shadow-sm">
          <CardHeader
            className="cursor-pointer hover:bg-slate-50 transition-colors"
            onClick={() => setAlertsExpanded(!alertsExpanded)}
          >
            <div className="flex items-center justify-between">
              <CardTitle className="flex items-center gap-2">
                <Icon icon="ph:warning-circle" className="text-red-600" width={24} />
                Open Alerts for this Client ({alerts.length})
              </CardTitle>
              <Icon
                icon={alertsExpanded ? "ph:caret-up" : "ph:caret-down"}
                className="text-slate-600 transition-transform"
                width={24}
              />
            </div>
          </CardHeader>
          {alertsExpanded && (
            <CardContent>
              <div className="space-y-4">
                {alerts.map((alert) => {
                  // Determine if alert was reopened
                  const isReopened = alert.is_open && (alert.cleared_by_matching || alert.dismissed_at !== null);

                  // Status badge with reopened detection
                  const statusBadge = isReopened
                    ? { color: "bg-orange-100 text-orange-700 border-orange-200", label: "Reopened", icon: "ph:arrow-counter-clockwise" }
                    : { color: "bg-red-100 text-red-700 border-red-200", label: "Open", icon: "ph:warning-circle" };

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
            </CardContent>
          )}
        </Card>
      )}
    </div>
  );
}
