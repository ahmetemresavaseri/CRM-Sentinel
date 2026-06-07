
"use client";

import { useEffect, useLayoutEffect, useMemo, useRef, useState } from "react";
import { getClientById, getNotesForTransaction, getTransactions } from "@/lib/api";
import { Transaction, CRMNote } from "@/types/transaction";
import { extractItems } from "@/types/pagination";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Icon } from "@iconify/react";

interface ClientMappingProps {
  clientId: string;
}

type NoteWithId = CRMNote & { id: string };

interface Edge {
  from: string;
  to: string;
  confidence?: number;
}

export default function ClientMapping({ clientId }: ClientMappingProps) {

  const CONFIDENCE_THRESHOLD = 0.81; // threshold for matched notes

  const [transactions, setTransactions] = useState<Transaction[]>([]);
  const [notes, setNotes] = useState<Record<string, NoteWithId>>({});
  const [edges, setEdges] = useState<Edge[]>([]);
  const [unmappedTransactions, setUnmappedTransactions] = useState<Transaction[]>([]);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [clientName, setClientName] = useState<string | undefined>(undefined);
  const [loaded, setLoaded] = useState(false);
  const BATCH_SIZE = 5;
  const [viewMode, setViewMode] = useState<"mapping" | "unmapped">("mapping");

  const containerRef = useRef<HTMLDivElement | null>(null);
  const txnColumnRef = useRef<HTMLDivElement | null>(null);
  const noteColumnRef = useRef<HTMLDivElement | null>(null);
  const txnRefs = useRef<Record<string, HTMLDivElement | null>>({});
  const noteRefs = useRef<Record<string, HTMLDivElement | null>>({});
  const [lines, setLines] = useState<{ from: string; to: string; x1: number; y1: number; x2: number; y2: number }[]>([]);
  const [hoveredLine, setHoveredLine] = useState<string | null>(null);
  const [hoveredTxnId, setHoveredTxnId] = useState<string | null>(null);
  const [hoveredNoteId, setHoveredNoteId] = useState<string | null>(null);
  const [notesHeight, setNotesHeight] = useState<number | undefined>(undefined);
  const clearHover = () => {
    setHoveredLine(null);
    setHoveredTxnId(null);
    setHoveredNoteId(null);
  };

  // Fetch client name for label
  useEffect(() => {
    async function fetchClientName() {
      try {
        const client = await getClientById(clientId);
        if (client?.name) setClientName(client.name);
      } catch (err) {
        // ignore
      }
    }
    fetchClientName();
  }, [clientId]);

  // Fetch transactions and matched notes for this client in batches
  const loadMapping = async () => {
    try {
      setLoading(true);
      setError(null);
      setLoaded(false);
      setTransactions([]);
      setUnmappedTransactions([]);
      setNotes({});
      setEdges([]);

      const txns = await getTransactions({ clientId });
      const txList: Transaction[] = extractItems(txns);

      const noteMap: Record<string, NoteWithId> = {};
      const newEdges: Edge[] = [];
      const matchedTx: Transaction[] = [];
      const unmatchedTx: Transaction[] = [];

      for (let i = 0; i < txList.length; i += BATCH_SIZE) {
        const batch = txList.slice(i, i + BATCH_SIZE);
        const results = await Promise.all(
          batch.map(async (txn: Transaction) => {
            try {
              const matchedNotes = await getNotesForTransaction(txn.transaction_id, CONFIDENCE_THRESHOLD);
              return { txn, matchedNotes };
            } catch (err) {
              return { txn, matchedNotes: [] as CRMNote[] };
            }
          })
        );

        results.forEach(({ txn, matchedNotes }) => {
          if (matchedNotes.length > 0) {
            matchedNotes.forEach((note: CRMNote) => {
              const score = (note as any).confidence_score ? Number((note as any).confidence_score) : undefined;
              noteMap[note.id] = note as NoteWithId;
              newEdges.push({ from: txn.transaction_id, to: note.id, confidence: score });
            });
            matchedTx.push(txn);
          } else {
            unmatchedTx.push(txn);
          }
        });
      }

      setTransactions(matchedTx);
      setUnmappedTransactions(unmatchedTx);
      setNotes(noteMap);
      setEdges(newEdges);
      setLoaded(true);
    } catch (err) {
      setError(err instanceof Error ? err.message : "Failed to load mapping");
      setTransactions([]);
      setNotes({});
      setEdges([]);
    } finally {
      setLoading(false);
    }
  };

  // Compute line positions based on card refs
  const updateLines = () => {
    const containerRect = containerRef.current?.getBoundingClientRect();
    if (!containerRect) return;

    if (noteColumnRef.current) {
      const rect = noteColumnRef.current.getBoundingClientRect();
      setNotesHeight(rect.height);
    }

    const newLines: typeof lines = [];

    edges.forEach((edge) => {
      const fromEl = txnRefs.current[edge.from];
      const toEl = noteRefs.current[edge.to];
      if (!fromEl || !toEl) return;

      const fromRect = fromEl.getBoundingClientRect();
      const toRect = toEl.getBoundingClientRect();

      const x1 = fromRect.right - containerRect.left - 2;
      const y1 = fromRect.top + fromRect.height / 2 - containerRect.top;
      const x2 = toRect.left - containerRect.left;
      const y2 = toRect.top + toRect.height / 2 - containerRect.top;

      newLines.push({ from: edge.from, to: edge.to, x1, y1, x2, y2 });
    });

    setLines(newLines);
  };

  useLayoutEffect(() => {
    updateLines();
  }, [transactions, notes, edges]);

  useEffect(() => {
    const handle = () => updateLines();
    window.addEventListener("resize", handle);
    return () => window.removeEventListener("resize", handle);
  }, []);

  const noteList = useMemo(() => Object.values(notes), [notes]);

  const anyHoverActive = hoveredLine || hoveredTxnId || hoveredNoteId;

  const txnHighlighted = (txnId: string) => {
    if (hoveredTxnId === txnId) return true;
    if (hoveredLine && hoveredLine.startsWith(`${txnId}-`)) return true;
    if (hoveredNoteId && edges.some((e) => e.from === txnId && e.to === hoveredNoteId)) return true;
    return false;
  };

  const noteHighlighted = (noteId: string) => {
    if (hoveredNoteId === noteId) return true;
    if (hoveredLine && hoveredLine.endsWith(`-${noteId}`)) return true;
    if (hoveredTxnId && edges.some((e) => e.to === noteId && e.from === hoveredTxnId)) return true;
    return false;
  };

  return (
    <div className="relative bg-white border border-slate-200 rounded-xl p-4 overflow-hidden w-full">
      <div className="flex items-center justify-between mb-4">
        <div>
          <CardTitle className="text-lg pb-2">Client Mapping</CardTitle>
          <p className="text-sm text-slate-500">
            Shows all transactions for {clientName || clientId} that have related CRM notes
          </p>
          <p className="text-sm text-slate-500">
            The thicker the line, the more confident our algorithm is, that the CRM note is related to that transaction
          </p>
        </div>
        <div className="flex items-center gap-2">
          <button
            onClick={() => {
              setViewMode("mapping");
              if (!loaded) loadMapping();
            }}
            disabled={loading}
            className={`px-3 py-1.5 text-sm font-medium rounded-md border ${
              viewMode === "mapping" && loaded
                ? "border-blue-500 bg-blue-50 text-blue-700"
                : "border-slate-200 bg-slate-50 text-slate-700 hover:bg-slate-100"
            } disabled:opacity-60`}
          >
            {loading ? "Loading..." : loaded ? "Show Mapping" : "Load Mapping"}
          </button>
          <button
            onClick={() => setViewMode("unmapped")}
            disabled={loading || !loaded}
            className={`px-3 py-1.5 text-sm font-medium rounded-md border ${
              viewMode === "unmapped"
                ? "border-blue-500 bg-blue-50 text-blue-700"
                : "border-slate-200 bg-slate-50 text-slate-700 hover:bg-slate-100"
            } disabled:opacity-60`}
          >
            Show Unmapped Transactions
          </button>
        </div>
      </div>

      {error && <p className="text-red-600 text-sm mb-3">{error}</p>}
      {!loaded && !loading && !error && (
        <div className="flex items-center justify-center py-8">
          <p className="text-sm text-slate-600 text-center px-4">
            Click "Load Mapping” to load matched transactions and CRM notes.
          </p>
        </div>
      )}
      {loading && (
        <div className="flex items-center justify-center py-8">
          <Icon icon="mdi:loading" className="animate-spin text-blue-600" width={24} />
        </div>
      )}
      {!loading && loaded && viewMode === "mapping" && (
        <div ref={containerRef} className="relative mt-2">
          <div className="grid grid-cols-2 gap-6">
            {/* Transactions */}
            <div className="space-y-3" ref={txnColumnRef} style={notesHeight ? { minHeight: notesHeight } : undefined}>
              <Card className="border-slate-200 shadow-sm">
                <CardHeader>
                  <CardTitle className="text-sm text-slate-700">Transactions</CardTitle>
                </CardHeader>
                <CardContent className="space-y-2">
                  {transactions.length === 0 ? (
                    <p className="text-sm text-slate-500">No transactions for this client.</p>
                  ) : (
                    transactions.map((txn) => (
                      <div
                        key={txn.transaction_id}
                        ref={(el: HTMLDivElement | null) => {
                          txnRefs.current[txn.transaction_id] = el;
                        }}
                        onMouseEnter={() => setHoveredTxnId(txn.transaction_id)}
                        onMouseLeave={() => {
                          if (hoveredTxnId === txn.transaction_id) clearHover();
                        }}
                        className={`border rounded-lg p-3 bg-slate-50 transition-shadow ${
                          txnHighlighted(txn.transaction_id)
                            ? "border-blue-300 shadow-sm"
                            : "border-slate-200"
                        }`}
                      >
                        <div className="flex items-center justify-between text-sm text-slate-700">
                          <span>{new Date(txn.date).toLocaleDateString("de-CH")}</span>
                          <span className="font-semibold">
                            {parseFloat(txn.amount).toLocaleString("de-CH", { minimumFractionDigits: 2 })} {txn.currency}
                          </span>
                        </div>
                        <div className="text-xs text-slate-500 mt-1">
                          {txn.counterparty_entity || "Counterparty"} {txn.counterparty_bank ? `• ${txn.counterparty_bank}` : ""}
                        </div>
                        <div className="text-[11px] text-slate-400 mt-1">TX: {txn.transaction_id}</div>
                      </div>
                    ))
                  )}
                </CardContent>
              </Card>
            </div>

            {/* Notes */}
            <div className="space-y-3" ref={noteColumnRef}>
              <Card className="border-slate-200 shadow-sm">
                <CardHeader>
                  <CardTitle className="text-sm text-slate-700">CRM Notes</CardTitle>
                </CardHeader>
                <CardContent className="space-y-2">
                  {noteList.length === 0 ? (
                    <p className="text-sm text-slate-500">No matched CRM notes.</p>
                  ) : (
                    noteList.map((note) => (
                      <div
                        key={note.id}
                        ref={(el: HTMLDivElement | null) => {
                          noteRefs.current[note.id] = el;
                        }}
                        onMouseEnter={() => setHoveredNoteId(note.id)}
                        onMouseLeave={() => {
                          if (hoveredNoteId === note.id) clearHover();
                        }}
                        className={`border rounded-lg p-3 bg-slate-50 transition-shadow ${
                          noteHighlighted(note.id)
                            ? "border-blue-300 shadow-sm"
                            : "border-slate-200"
                        }`}
                      >
                        <div className="flex items-center justify-between text-sm text-slate-700">
                          <span>{new Date(note.date).toLocaleDateString("de-CH")}</span>
                          <span className="text-xs text-slate-500">Note ID: {note.id}</span>
                        </div>
                        <div className="text-sm text-slate-800 mt-1 line-clamp-3">{note.text}</div>
                      </div>
                    ))
                  )}
                </CardContent>
              </Card>
            </div>
          </div>

          {/* SVG overlay for edges */}
          <svg className="pointer-events-none absolute inset-0 w-full h-full">
            {lines.map((line) => {
              // Calculate control points for S-curve
              const dx = line.x2 - line.x1;
              const midX = line.x1 + dx / 2;

              const edge = edges.find((e) => e.from === line.from && e.to === line.to);
              const score = edge?.confidence ?? CONFIDENCE_THRESHOLD;
              const clamped = Math.max(CONFIDENCE_THRESHOLD, Math.min(1, score));
              const t = (clamped - CONFIDENCE_THRESHOLD) / (1 - CONFIDENCE_THRESHOLD);
              const strokeWidth = 2 + t * (15 - 2);

              const lineKey = `${line.from}-${line.to}`;
              const isActive = hoveredLine === lineKey || hoveredTxnId === line.from || hoveredNoteId === line.to;
              const isDimmed = anyHoverActive && !isActive;
              const opacity = isDimmed ? 0.15 : isActive ? 1 : 0.5;

              // Create a cubic Bézier curve path
              const path = `M ${line.x1} ${line.y1} C ${midX} ${line.y1}, ${midX} ${line.y2}, ${line.x2} ${line.y2}`;

              return (
                <path
                  key={lineKey}
                  d={path}
                  stroke={`rgba(59,130,246,${opacity})`}
                  strokeWidth={strokeWidth}
                  strokeLinecap="butt"
                  fill="none"
                  className="pointer-events-auto"
                  pointerEvents="stroke"
                  onMouseEnter={() => {
                    setHoveredLine(lineKey);
                    setHoveredTxnId(line.from);
                    setHoveredNoteId(line.to);
                  }}
                  onMouseLeave={clearHover}
                  style={{ cursor: "pointer", transition: "stroke 0.2s ease" }}
                />
              );
            })}
          </svg>
        </div>
      )}

      {!loading && loaded && viewMode === "unmapped" && (
        <div className="mt-4">
          <Card className="border-slate-200 shadow-sm">
            <CardHeader>
              <CardTitle className="text-sm text-slate-700">Unmapped Transactions</CardTitle>
            </CardHeader>
            <CardContent>
              {unmappedTransactions.length === 0 ? (
                <p className="text-sm text-slate-500">All transactions have matched notes.</p>
              ) : (
                <div className="overflow-x-auto">
                  <table className="min-w-full text-sm text-slate-700">
                    <thead>
                      <tr className="text-left text-xs text-slate-500 border-b">
                        <th className="py-2 pr-4">Date</th>
                        <th className="py-2 pr-4">Amount</th>
                        <th className="py-2 pr-4">Counterparty</th>
                        <th className="py-2 pr-4">Transaction ID</th>
                      </tr>
                    </thead>
                    <tbody>
                      {unmappedTransactions.map((txn) => (
                        <tr key={txn.transaction_id} className="border-b last:border-none">
                          <td className="py-2 pr-4">{new Date(txn.date).toLocaleDateString("de-CH")}</td>
                          <td className="py-2 pr-4">
                            {parseFloat(txn.amount).toLocaleString("de-CH", { minimumFractionDigits: 2 })} {txn.currency}
                          </td>
                          <td className="py-2 pr-4">
                            {txn.counterparty_entity || "Counterparty"} {txn.counterparty_bank ? `• ${txn.counterparty_bank}` : ""}
                          </td>
                          <td className="py-2 pr-4 text-slate-500 font-mono text-xs">{txn.transaction_id}</td>
                        </tr>
                      ))}
                    </tbody>
                  </table>
                </div>
              )}
            </CardContent>
          </Card>
        </div>
      )}
    </div>
  );
}
