"use client";

import { useEffect, useState } from "react";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Icon } from "@iconify/react";
import { Alert } from "@/types/transaction";
import { getAlerts, getClients } from "@/lib/api";

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

interface RecentAlertsProps {
  onAlertClick?: (alert: Alert) => void;
}

export default function RecentAlerts({ onAlertClick }: RecentAlertsProps) {
  const [alerts, setAlerts] = useState<Alert[]>([]);
  const [clientNames, setClientNames] = useState<Record<string, string>>({});
  const [loading, setLoading] = useState<boolean>(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    async function fetchAlerts() {
      try {
        setLoading(true);
        setError(null);

        // Fetch clients for names
        const clientsData = await getClients();
        const clientsList = Array.isArray(clientsData)
          ? clientsData
          : Array.isArray((clientsData as any)?.items)
          ? (clientsData as any).items
          : [];
        const namesMap: Record<string, string> = {};
        for (const c of clientsList) {
          if (c.client_id && c.name) {
            namesMap[c.client_id] = c.name;
          }
        }
        setClientNames(namesMap);

        // Fetch alerts
        const data = await getAlerts({ is_open: true });
        const alertsArray = Array.isArray(data) ? data : [];
        // Get the 3 most recent open alerts
        const sortedAlerts = alertsArray
          .sort((a, b) => new Date(b.created_at).getTime() - new Date(a.created_at).getTime())
          .slice(0, 3);
        setAlerts(sortedAlerts);
      } catch (err) {
        console.error("Failed to fetch alerts:", err);
        setError("Failed to load recent alerts");
      } finally {
        setLoading(false);
      }
    }

    fetchAlerts();
  }, []);

  return (
    <Card className="mt-8">
      <CardHeader>
        <CardTitle>Recent Open Alerts</CardTitle>
        <p className="text-sm text-slate-500">Latest AML alerts requiring review</p>
      </CardHeader>
      <CardContent>
        {loading ? (
          <div className="flex items-center justify-center py-8">
            <Icon icon="mdi:loading" className="animate-spin text-blue-600" width={24} />
          </div>
        ) : error ? (
          <p className="text-sm text-red-600">{error}</p>
        ) : alerts.length === 0 ? (
          <p className="text-slate-500">No open alerts - all clear!</p>
        ) : (
          <div className="space-y-4">
            {alerts.map((alert) => {
              const isReopened = alert.is_open && (alert.cleared_by_matching || alert.dismissed_at !== null);
              const statusBadge = isReopened
                ? { color: "bg-orange-100 text-orange-700 border-orange-200", label: "Reopened", icon: "ph:arrow-counter-clockwise" }
                : { color: "bg-red-100 text-red-700 border-red-200", label: "Open", icon: "ph:warning-circle" };
              const ruleDisplay = getRuleDisplayName(alert.rule_name);
              const progress = alert.total_transaction_count > 0
                ? (alert.matched_transaction_count / alert.total_transaction_count) * 100
                : 0;

              return (
                <div
                  key={alert.id}
                  className="border border-slate-200 rounded-lg overflow-hidden hover:border-slate-300 transition-colors"
                >
                  <div
                    className="flex items-start gap-4 p-4 cursor-pointer hover:bg-slate-50"
                    onClick={() => onAlertClick?.(alert)}
                  >
                    {/* Alert icon */}
                    <div className="shrink-0">
                      <Icon
                        icon="ph:warning-circle"
                        className="text-red-600"
                        width={32}
                      />
                    </div>

                    {/* Content */}
                    <div className="flex-1 space-y-2 min-w-0">
                      {/* Header with client name and date */}
                      <div className="flex items-center gap-3 flex-wrap">
                        <span className="inline-flex items-center rounded-md bg-slate-100 px-2 py-0.5 text-sm font-medium text-slate-700">
                          {clientNames[alert.client_id] || alert.client_id}
                        </span>
                        <span className="text-xs text-slate-500">
                          {new Date(alert.created_at).toLocaleDateString("de-CH", {
                            year: "numeric",
                            month: "short",
                            day: "numeric",
                          })}
                        </span>
                      </div>

                      {/* Alert details with badges */}
                      <div className="flex items-center gap-2 flex-wrap">
                        <span className={`px-2 py-0.5 text-xs font-medium rounded border ${statusBadge.color} flex items-center gap-1`}>
                          <Icon icon={statusBadge.icon} width={10} />
                          {statusBadge.label}
                        </span>
                        <span className={`px-2 py-0.5 text-xs font-medium rounded border ${ruleDisplay.color}`}>
                          {ruleDisplay.name}
                        </span>
                      </div>

                      {/* Progress bar */}
                      {alert.total_transaction_count > 0 && (
                        <div className="space-y-1">
                          <div className="text-xs text-slate-500">
                            {alert.matched_transaction_count} / {alert.total_transaction_count} transactions documented
                          </div>
                          <div className="w-full bg-slate-200 rounded-full h-1.5">
                            <div
                              className={`h-1.5 rounded-full transition-all ${
                                progress >= 100 ? "bg-green-500" : progress >= 50 ? "bg-amber-500" : "bg-red-500"
                              }`}
                              style={{ width: `${Math.min(progress, 100)}%` }}
                            />
                          </div>
                        </div>
                      )}

                      {/* Alert ID */}
                      <div className="text-xs text-slate-500">
                        Alert ID: {alert.id}
                      </div>
                    </div>

                    {/* Arrow icon */}
                    <Icon
                      icon="mdi:chevron-right"
                      className="text-slate-400 shrink-0"
                      width={24}
                    />
                  </div>
                </div>
              );
            })}
          </div>
        )}
      </CardContent>
    </Card>
  );
}
