"use client";

import { useEffect, useState } from "react";
import { CRMNote, Transaction } from "@/types/transaction";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Icon } from "@iconify/react";
import { getTransactionsForNote } from "@/lib/api";
import { TransactionCard } from "@/components/transactions/TransactionCard";

interface NotesDetailProps {
  note: CRMNote;
  onBack: () => void;
  onTransactionClick?: (transaction: Transaction) => void;
}

const TRANSACTION_CONFIDENCE_THRESHOLD = 0.81;

export default function NotesDetail({ note, onBack, onTransactionClick }: NotesDetailProps) {
  const [transactions, setTransactions] = useState<Transaction[]>([]);
  const [loadingTransactions, setLoadingTransactions] = useState<boolean>(true);
  const [transactionsError, setTransactionsError] = useState<string | null>(null);

  // Fetch linked transactions on component mount
  useEffect(() => {
    async function fetchTransactions() {
      try {
        setLoadingTransactions(true);
        setTransactionsError(null);
        const data = await getTransactionsForNote(note.id, TRANSACTION_CONFIDENCE_THRESHOLD);
        setTransactions(data);
      } catch (err) {
        setTransactionsError(err instanceof Error ? err.message : "Failed to load transactions");
      } finally {
        setLoadingTransactions(false);
      }
    }
    fetchTransactions();
  }, [note.id]);

  // Format date to readable format
  const formattedDate = new Date(note.date).toLocaleDateString("de-CH", {
    year: "numeric",
    month: "long",
    day: "numeric",
  });

  return (
    <div className="space-y-6">
      {/* Back button */}
      <button
        onClick={onBack}
        className="flex items-center gap-2 text-sm text-slate-600 hover:text-slate-900 transition-colors"
      >
        <Icon icon="mdi:arrow-left" width={20} />
        Back to Notes
      </button>

      {/* Note Details Card */}
      <Card>
        <CardHeader>
            <div className="flex items-start justify-between gap-4 flex-1">
              <div className="space-y-2">
                <CardTitle>CRM Note Details</CardTitle>
                <CardDescription>Note ID: {note.id}</CardDescription>
              </div>
              <Icon
                icon="ph:note-duotone"
                className="text-blue-600 shrink-0"
                width={36}
              />
            </div>
        </CardHeader>
        <CardContent>
          <div className="space-y-6">
            {/* Client */}
            <div className="space-y-1">
              <p className="text-sm font-medium text-slate-500">Client</p>
              <p className="text-lg text-slate-900">{note.client_name || note.client_id}</p>
              {note.client_name && (
                <p className="text-sm text-slate-500">ID: {note.client_id}</p>
              )}
            </div>

            {/* Note ID */}
            <div className="space-y-1">
              <p className="text-sm font-medium text-slate-500">Note ID</p>
              <p className="text-lg text-slate-900">{note.id}</p>
            </div>

            {/* Date */}
            <div className="space-y-1">
              <p className="text-sm font-medium text-slate-500">Date</p>
              <p className="text-lg text-slate-900">{formattedDate}</p>
            </div>

            {/* Note Content */}
            <div className="space-y-2">
              <p className="text-sm font-medium text-slate-500">Note Content</p>
              <div className="bg-slate-50 rounded-lg p-4 border border-slate-200">
                <p className="text-sm text-slate-900 leading-relaxed whitespace-pre-wrap">
                  {note.text}
                </p>
              </div>
            </div>
          </div>
        </CardContent>
      </Card>

      {/* Linked Transactions Section */}
      <Card>
        <CardHeader>
          <CardTitle>Linked Transactions</CardTitle>
          <CardDescription>
            {loadingTransactions
              ? "Loading matched transactions..."
              : transactionsError
              ? "Error loading transactions"
              : transactions.length === 0
              ? "No transactions matched to this note"
              : `${transactions.length} transaction${transactions.length === 1 ? "" : "s"} matched to this note`}
          </CardDescription>
        </CardHeader>
        <CardContent>
          {/* Loading State */}
          {loadingTransactions && (
            <div className="flex flex-col items-center justify-center py-12 space-y-4">
              <Icon
                icon="line-md:loading-loop"
                className="text-blue-600"
                width={48}
              />
              <p className="text-sm text-slate-600">Loading transactions...</p>
            </div>
          )}

          {/* Error State */}
          {transactionsError && !loadingTransactions && (
            <div className="flex flex-col items-center justify-center py-12 space-y-4">
              <Icon
                icon="material-symbols:error-outline"
                className="text-red-500"
                width={48}
              />
              <p className="text-sm text-red-600">{transactionsError}</p>
            </div>
          )}

          {/* Empty State */}
          {!loadingTransactions && !transactionsError && transactions.length === 0 && (
            <div className="flex flex-col items-center justify-center py-12 space-y-4">
              <Icon
                icon="bitcoin-icons:transactions-filled"
                className="text-slate-400"
                width={48}
              />
              <p className="text-sm text-slate-600">
                No transactions matched to this note.
              </p>
              <p className="text-xs text-slate-500">
                Transactions are matched using AI with a confidence threshold of {Math.round(TRANSACTION_CONFIDENCE_THRESHOLD * 100)}%.
              </p>
            </div>
          )}

          {/* Transaction List */}
          {!loadingTransactions && !transactionsError && transactions.length > 0 && (
            <div className="space-y-3">
              {transactions.map((txn) => (
                <TransactionCard
                  key={txn.transaction_id}
                  transaction={txn}
                  clientName={txn.client_name}
                  onClick={onTransactionClick}
                />
              ))}
            </div>
          )}
        </CardContent>
      </Card>
    </div>
  );
}
