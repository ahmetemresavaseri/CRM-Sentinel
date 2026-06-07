"use client";

import { useEffect, useState } from "react";
import { Transaction, CRMNote } from "@/types/transaction";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { DirectionBadge, TypeBadge } from "@/components/transactions/TransactionBadge";
import { Icon } from "@iconify/react";
import { getNotesForTransaction } from "@/lib/api";

interface TransactionDetailProps {
  transaction: Transaction;
  onBack: () => void;
  onNoteClick?: (note: CRMNote) => void;
}

const NOTE_CONFIDENCE_THRESHOLD = 0.81;

export default function TransactionDetail({ transaction, onBack, onNoteClick }: TransactionDetailProps) {
  const [notes, setNotes] = useState<CRMNote[]>([]);
  const [loadingNotes, setLoadingNotes] = useState<boolean>(true);
  const [notesError, setNotesError] = useState<string | null>(null);

  // Format amount with Swiss locale
  const formattedAmount = parseFloat(transaction.amount).toLocaleString("de-CH", {
    minimumFractionDigits: 2,
    maximumFractionDigits: 2,
  });

  // Format date to readable format
  const formattedDate = new Date(transaction.date).toLocaleDateString("de-CH", {
    year: "numeric",
    month: "long",
    day: "numeric",
  });

  useEffect(() => {
    async function fetchNotes() {
      try {
        setLoadingNotes(true);
        setNotesError(null);
        const data = await getNotesForTransaction(transaction.transaction_id, NOTE_CONFIDENCE_THRESHOLD);
        setNotes(data);
      } catch (err) {
        setNotesError(err instanceof Error ? err.message : "Failed to load notes");
      } finally {
        setLoadingNotes(false);
      }
    }
    fetchNotes();
  }, [transaction.transaction_id]);

  return (
    <div className="space-y-6">
      {/* Back button */}
      <button
        onClick={onBack}
        className="flex items-center gap-2 text-sm text-slate-600 hover:text-slate-900 transition-colors"
      >
        <Icon icon="mdi:arrow-left" width={20} />
        Back to Transactions
      </button>

      {/* Transaction Details Card */}
      <Card>
        <CardHeader>
          <div className="flex items-start justify-between">
            <div className="space-y-2">
              <CardTitle>Transaction Details</CardTitle>
              <CardDescription>ID: {transaction.transaction_id}</CardDescription>
            </div>
          </div>
        </CardHeader>
        <CardContent>
          <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
            {/* Amount */}
            <div className="space-y-1">
              <p className="text-sm font-medium text-slate-500">Amount</p>
              <p className="text-2xl font-semibold text-slate-900">
                {formattedAmount} {transaction.currency}
              </p>
            </div>

            {/* Date */}
            <div className="space-y-1">
              <p className="text-sm font-medium text-slate-500">Date</p>
              <p className="text-lg text-slate-900">{formattedDate}</p>
            </div>

            {/* Client */}
            <div className="space-y-1">
              <p className="text-sm font-medium text-slate-500">Client</p>
              <p className="text-lg text-slate-900">{transaction.client_name || transaction.client_id}</p>
              {transaction.client_name && (
                <p className="text-sm text-slate-500">ID: {transaction.client_id}</p>
              )}
            </div>

            {/* Direction */}
            <div className="space-y-1">
              <p className="text-sm font-medium text-slate-500">Direction</p>
              <p className="text-lg text-slate-900">{transaction.direction}</p>
            </div>

            {/* Type */}
            <div className="space-y-1">
              <p className="text-sm font-medium text-slate-500">Type</p>
              <p className="text-lg text-slate-900">{transaction.type}</p>
            </div>

            {/* Currency */}
            <div className="space-y-1">
              <p className="text-sm font-medium text-slate-500">Currency</p>
              <p className="text-lg text-slate-900">{transaction.currency}</p>
            </div>

            {/* Counterparty Entity */}
            <div className="space-y-1">
              <p className="text-sm font-medium text-slate-500">Counterparty Entity</p>
              <p className="text-lg text-slate-900">{transaction.counterparty_entity}</p>
            </div>

            {/* Counterparty Bank */}
            <div className="space-y-1">
              <p className="text-sm font-medium text-slate-500">Counterparty Bank</p>
              <p className="text-lg text-slate-900">{transaction.counterparty_bank}</p>
            </div>
          </div>
        </CardContent>
      </Card>

      {/* Linked CRM Notes Section */}
      <Card>
        <CardHeader>
          <CardTitle>Linked CRM Notes</CardTitle>
          {/* <CardDescription>Notes matched to this transaction (confidence ≥ {NOTE_CONFIDENCE_THRESHOLD})</CardDescription> */}
        </CardHeader>
        <CardContent>
          {loadingNotes ? (
            <div className="flex items-center justify-center py-8">
              <Icon icon="mdi:loading" className="animate-spin text-blue-600" width={24} />
            </div>
          ) : notesError ? (
            <p className="text-sm text-red-600">{notesError}</p>
          ) : notes.length === 0 ? (
            <p className="text-sm text-slate-500">No matched CRM notes above the confidence threshold.</p>
          ) : (
            <div className="space-y-3">
              {notes.map((note) => (
                <div
                  key={note.id}
                  onClick={() => onNoteClick?.(note)}
                  className="p-4 border border-slate-200 rounded-lg hover:border-slate-300 hover:bg-slate-50 transition-colors cursor-pointer"
                >
                  <div className="flex items-center justify-between mb-2">
                    <div className="flex items-center gap-2 text-xs text-slate-500">
                      <Icon icon="ph:note-duotone" className="h-4 w-4 text-blue-600" />
                      <span>{new Date(note.date).toLocaleDateString("de-CH")}</span>
                      <span>•</span>
                      <span className="font-medium text-slate-700">{note.client_name || note.client_id}</span>
                    </div>
                    <span className="text-xs text-slate-500">ID: {note.id}</span>
                  </div>
                  <p className="text-sm text-slate-800 leading-relaxed line-clamp-3">{note.text}</p>
                </div>
              ))}
            </div>
          )}
        </CardContent>
      </Card>
    </div>
  );
}
