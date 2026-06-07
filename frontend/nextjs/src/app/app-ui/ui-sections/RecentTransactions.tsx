"use client";

import { useEffect, useState } from "react";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Icon } from "@iconify/react";
import { Transaction } from "@/types/transaction";
import { getTransactions, getClients } from "@/lib/api";

interface RecentTransactionsProps {
  onTransactionClick?: (transaction: Transaction) => void;
}

export default function RecentTransactions({ onTransactionClick }: RecentTransactionsProps) {
  const [transactions, setTransactions] = useState<Transaction[]>([]);
  const [clientNames, setClientNames] = useState<Record<string, string>>({});
  const [loading, setLoading] = useState<boolean>(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    async function fetchData() {
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

        // Fetch transactions
        const data = await getTransactions();
        // Handle both array and paginated response formats
        const txnArray = Array.isArray(data)
          ? data
          : Array.isArray((data as any)?.items)
          ? (data as any).items
          : [];

        // Get the 3 most recent transactions
        const sortedTxns = txnArray
          .sort((a: Transaction, b: Transaction) => new Date(b.date).getTime() - new Date(a.date).getTime())
          .slice(0, 3);
        setTransactions(sortedTxns);
      } catch (err) {
        console.error("Failed to fetch transactions:", err);
        setError("Failed to load recent transactions");
      } finally {
        setLoading(false);
      }
    }

    fetchData();
  }, []);

  const formatCurrency = (amount: string) => {
    const num = parseFloat(amount);
    return new Intl.NumberFormat("de-CH", {
      style: "currency",
      currency: "CHF",
      maximumFractionDigits: 0,
    }).format(num);
  };

  return (
    <Card className="mt-8">
      <CardHeader>
        <CardTitle>Recent Transactions</CardTitle>
        <p className="text-sm text-slate-500">Latest transactions from all clients</p>
      </CardHeader>
      <CardContent>
        {loading ? (
          <div className="flex items-center justify-center py-8">
            <Icon icon="mdi:loading" className="animate-spin text-blue-600" width={24} />
          </div>
        ) : error ? (
          <p className="text-sm text-red-600">{error}</p>
        ) : transactions.length === 0 ? (
          <p className="text-slate-500">No transactions found</p>
        ) : (
          <div className="space-y-4">
            {transactions.map((txn) => (
              <div
                key={txn.transaction_id}
                className="border border-slate-200 rounded-lg overflow-hidden hover:border-slate-300 transition-colors"
              >
                <div
                  className="flex items-start gap-4 p-4 cursor-pointer hover:bg-slate-50"
                  onClick={() => onTransactionClick?.(txn)}
                >
                  {/* Transaction icon */}
                  <div className="shrink-0">
                    <Icon
                      icon="bitcoin-icons:transactions-filled"
                      className="text-orange-400"
                      width={32}
                    />
                  </div>

                  {/* Content */}
                  <div className="flex-1 space-y-2 min-w-0">
                    {/* Header with client name and date */}
                    <div className="flex items-center gap-3 flex-wrap">
                      <span className="inline-flex items-center rounded-md bg-slate-100 px-2 py-0.5 text-sm font-medium text-slate-700">
                        {clientNames[txn.client_id] || txn.client_id}
                      </span>
                      <span className="text-xs text-slate-500">
                        {new Date(txn.date).toLocaleDateString("de-CH", {
                          year: "numeric",
                          month: "short",
                          day: "numeric",
                        })}
                      </span>
                    </div>

                    {/* Transaction details */}
                    <p className="text-sm text-slate-700 leading-relaxed">
                      {formatCurrency(txn.amount)} • {txn.currency} • {txn.direction} • {txn.type}
                    </p>

                    {/* Transaction ID and counterparty */}
                    <div className="text-xs text-slate-500">
                      Transaction ID: {txn.transaction_id} • Counterparty: {txn.counterparty_entity}
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
            ))}
          </div>
        )}
      </CardContent>
    </Card>
  );
}
