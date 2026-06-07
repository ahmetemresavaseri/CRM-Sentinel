
import { useEffect, useState } from "react";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Icon } from "@iconify/react";
import { getTransactionsOverview, TransactionsOverview, getAlerts } from "@/lib/api";

const toNumber = (value: number | string | null | undefined): number => {
  if (value === null || value === undefined) return 0;
  const num = typeof value === "string" ? parseFloat(value) : value;
  return Number.isFinite(num) ? num : 0;
};

export default function MainInfo() {
  const [overview, setOverview] = useState<TransactionsOverview | null>(null);
  const [openAlertsCount, setOpenAlertsCount] = useState<number>(0);
  const [isLoading, setIsLoading] = useState<boolean>(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    async function fetchData() {
      try {
        setIsLoading(true);
        setError(null);

        const overviewData = await getTransactionsOverview();

        // Normalize numeric fields that may arrive as strings
        setOverview({
          count_txn: toNumber(overviewData.count_txn),
          sum_amount: toNumber(overviewData.sum_amount),
          avg_amount: toNumber(overviewData.avg_amount),
        });

        // Fetch open alerts count
        const alertsData = await getAlerts({ is_open: true });
        const alertsArray = Array.isArray(alertsData) ? alertsData : [];
        setOpenAlertsCount(alertsArray.length);
      } catch (err) {
        setError(err instanceof Error ? err.message : "Failed to load KPIs");
        setOverview(null);
        setOpenAlertsCount(0);
      } finally {
        setIsLoading(false);
      }
    }

    fetchData();
  }, []);

  const formatCurrency = (value: number) =>
    value.toLocaleString("de-CH", {
      style: "currency",
      currency: "CHF",
      maximumFractionDigits: 0,
    });

  const formatCompactNumber = (value: number) =>
    value.toLocaleString("de-CH", {
      maximumFractionDigits: 0,
    });

  const totalValue = overview ? overview.sum_amount : 0;
  const totalTransactions = overview ? overview.count_txn : 0;
  const averageTransaction = overview ? overview.avg_amount : 0;

  return (
    <>
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        <Card>
          <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
            <CardTitle>Total Transaction Value</CardTitle>
            <Icon icon="mynaui:dollar-solid" className="h-7 w-7 text-slate-700" />
          </CardHeader>
          <CardContent>
            <div className="text-slate-900 text-xl font-semibold">
              {isLoading ? "Loading..." : formatCurrency(totalValue)}
            </div>
            <p className="text-slate-500 mt-1">
              {isLoading ? " " : `in ${formatCompactNumber(totalTransactions)} total transactions`}
            </p>
            {error && (
              <p className="text-xs text-red-600 mt-2">
                {error}
              </p>
            )}
          </CardContent>
        </Card>

        <Card>
          <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
            <CardTitle>Average Transaction</CardTitle>
            <Icon icon="tdesign:undertake-transaction" className="h-7 w-7 text-slate-700" />
          </CardHeader>
          <CardContent>
            <div className="text-slate-900 text-xl font-semibold">
              {isLoading ? "Loading..." : formatCurrency(averageTransaction)}
            </div>
            <p className="text-slate-500 mt-1">
              Per transaction
            </p>
          </CardContent>
        </Card>

        <Card>
          <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
            <CardTitle>Open Alerts</CardTitle>
            <Icon icon="ph:warning-circle" className={`h-7 w-7 ${openAlertsCount > 0 ? 'text-red-600' : 'text-green-600'}`} />
          </CardHeader>
          <CardContent>
            <div className={`text-xl font-semibold ${openAlertsCount > 0 ? 'text-red-600' : 'text-green-600'}`}>
              {isLoading ? "Loading..." : openAlertsCount}
            </div>
            <p className="text-slate-500 mt-1">
              {isLoading ? " " : openAlertsCount === 0 ? "All clear!" : `Require${openAlertsCount === 1 ? 's' : ''} review`}
            </p>
          </CardContent>
        </Card>
      </div>
    </>
  );
}
