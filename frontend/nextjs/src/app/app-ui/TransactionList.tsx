"use client";

import { useEffect, useState, useCallback } from "react";
import { Transaction } from "@/types/transaction";
import { getTransactions, getClients } from "@/lib/api";
import { TransactionCard } from "@/components/transactions/TransactionCard";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Pagination } from "@/components/ui/pagination";
import { PaginationInfo } from "@/components/ui/pagination-info";
import { Icon } from "@iconify/react";
import { usePagination } from "@/hooks/usePagination";

interface TransactionListProps {
  onTransactionClick?: (transaction: Transaction) => void;
}

const ITEMS_PER_PAGE = 15;


export default function TransactionList({ onTransactionClick }: TransactionListProps) {
  const [clientNames, setClientNames] = useState<Record<string, string>>({});
  const [clientNamesLoaded, setClientNamesLoaded] = useState<boolean>(false);
  const [searchInput, setSearchInput] = useState<string>("");
  const [searchTerm, setSearchTerm] = useState<string>("");

  // Fetch client names for enrichment
  useEffect(() => {
    async function fetchClients() {
      try {
        const data = await getClients();
        const list = Array.isArray(data)
          ? data
          : Array.isArray((data as any)?.items)
          ? (data as any).items
          : [];
        const map: Record<string, string> = {};
        for (const c of list) {
          if (c.client_id && c.name) {
            map[c.client_id] = c.name;
          }
        }
        setClientNames(map);
      } catch (err) {
        console.warn("Failed to load client names", err);
        setClientNames({});
      } finally {
        setClientNamesLoaded(true);
      }
    }
    fetchClients();
  }, []);

  // Memoize filter and sort functions to prevent re-renders
  // Note: Only filter by client name if client names have been loaded
  const filterFn = useCallback((tx: Transaction, term: string) => {
    const termLower = term.toLowerCase();

    // Always search transaction_id and client_id
    if (tx.client_id.toLowerCase().includes(termLower) ||
        tx.transaction_id.toLowerCase().includes(termLower)) {
      return true;
    }

    // Only search client name if loaded (avoid false positives from empty string)
    if (clientNamesLoaded) {
      const name = clientNames[tx.client_id]?.toLowerCase() || "";
      return name.includes(termLower);
    }

    return false;
  }, [clientNames, clientNamesLoaded]);

  const sortFn = useCallback((a: Transaction, b: Transaction) => {
    return new Date(b.date).getTime() - new Date(a.date).getTime();
  }, []);

  // Use the pagination hook
  const {
    items: transactions,
    totalItems,
    currentPage,
    totalPages,
    loading,
    error,
    setCurrentPage,
  } = usePagination({
    fetchFn: getTransactions,
    itemsPerPage: ITEMS_PER_PAGE,
    searchTerm,
    filterFn,
    sortFn,
  });

  const handleSearchSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    setSearchTerm(searchInput);
  };

  // Handle page change
  const handlePageChange = (page: number) => {
    setCurrentPage(page);
    // Scroll to top of page
    window.scrollTo({ top: 0, behavior: "smooth" });
  };


  // Loading state
  if (loading) {
    return (
      <div className="space-y-6">
        <Card>
          <CardHeader>
            <CardTitle>Transactions</CardTitle>
            <CardDescription>Loading transactions...</CardDescription>
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
            <CardTitle>Transactions</CardTitle>
            <CardDescription>Error loading transactions</CardDescription>
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

  // Always show search bar
  return (
    <div className="space-y-6">
      <div className="flex justify-between items-center">
        <div>
          <h2 className="text-xl font-semibold text-slate-900">Transactions</h2>
          <p className="text-sm text-slate-500">Filter by transaction ID, client ID, or client name.</p>
        </div>
        {/* Client-side search: substring match on txn id, client id, or client name, then paginated locally */}
        <form className="relative w-64" onSubmit={handleSearchSubmit}>
          <Icon icon="ph:magnifying-glass" className="absolute left-3 top-1/2 -translate-y-1/2 text-slate-400" />
          <input
            type="text"
            placeholder="Search transactions..."
            className="w-full pl-10 pr-4 py-2 border border-slate-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500/20 focus:border-blue-500 transition-all text-sm"
            value={searchInput}
            onChange={(e) => setSearchInput(e.target.value)}
            onKeyDown={(e) => e.key === "Enter" && handleSearchSubmit(e)}
          />
        </form>
      </div>

      {/* Pagination info at top */}
      <div className="flex justify-between items-center">
        <PaginationInfo
          currentPage={currentPage}
          itemsPerPage={ITEMS_PER_PAGE}
          totalItems={totalItems}
        />
        <Pagination
          currentPage={currentPage}
          totalPages={Math.max(1, totalPages)}
          onPageChange={handlePageChange}
        />
      </div>

      <Card>
        <CardHeader>
          <CardTitle>Transactions</CardTitle>
          <CardDescription>
            {transactions.length === 0
              ? "No transactions match your search"
              : `Viewing page ${currentPage} of ${Math.max(1, totalPages)}`}
          </CardDescription>
        </CardHeader>
        <CardContent>
          {transactions.length === 0 ? (
            <div className="flex flex-col items-center justify-center py-12 space-y-4">
              <Icon
                icon={totalItems === 0 ? "mdi:file-document-outline" : "ph:magnifying-glass"}
                className="text-slate-400"
                width={48}
              />
              <p className="text-sm text-slate-600">
                {totalItems === 0
                  ? "There are no transactions to display."
                  : "No transactions found matching your search."}
              </p>
              {searchTerm && (
                <button
                  onClick={() => {
                    setSearchInput("");
                    setSearchTerm("");
                  }}
                  className="px-4 py-2 bg-blue-600 text-white text-sm rounded-lg hover:bg-blue-700 transition-colors"
                >
                  Clear Search
                </button>
              )}
            </div>
          ) : (
            <div className="space-y-4">
              {transactions.map((transaction) => (
                <TransactionCard
                  key={transaction.transaction_id}
                  transaction={transaction}
                  clientName={clientNames[transaction.client_id]}
                  onClick={onTransactionClick}
                />
              ))}
            </div>
          )}
        </CardContent>
      </Card>

      {/* Pagination at bottom */}
      <div className="flex justify-between items-center">
        <PaginationInfo
          currentPage={currentPage}
          itemsPerPage={ITEMS_PER_PAGE}
          totalItems={totalItems}
        />
        <Pagination
          currentPage={currentPage}
          totalPages={Math.max(1, totalPages)}
          onPageChange={handlePageChange}
        />
      </div>

    </div >
  );
}
