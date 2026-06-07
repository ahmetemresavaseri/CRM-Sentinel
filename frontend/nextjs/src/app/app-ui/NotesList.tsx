"use client";

import { useState, useCallback } from "react";
import { CRMNote } from "@/types/transaction";
import { getNotes } from "@/lib/api";
import { NoteCard } from "@/components/notes/NoteCard";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Pagination } from "@/components/ui/pagination";
import { PaginationInfo } from "@/components/ui/pagination-info";
import { Icon } from "@iconify/react";
import { usePagination } from "@/hooks/usePagination";

interface NotesListProps {
  onNoteClick?: (note: CRMNote) => void;
}

const ITEMS_PER_PAGE = 15;


export default function NotesList({ onNoteClick }: NotesListProps) {
  const [searchInput, setSearchInput] = useState<string>("");
  const [searchTerm, setSearchTerm] = useState<string>("");

  // Memoize filter and sort functions to prevent re-renders
  const filterFn = useCallback((note: CRMNote, term: string) => {
    const termLower = term.toLowerCase();
    const name = note.client_name?.toLowerCase() || "";
    const noteId = note.id.toLowerCase();
    return noteId.includes(termLower) || note.client_id.toLowerCase().includes(termLower) || name.includes(termLower);
  }, []);

  const sortFn = useCallback((a: CRMNote, b: CRMNote) => {
    return new Date(b.date).getTime() - new Date(a.date).getTime();
  }, []);

  // Use the pagination hook
  const {
    items: notes,
    totalItems,
    currentPage,
    totalPages,
    loading,
    error,
    setCurrentPage,
  } = usePagination({
    fetchFn: getNotes,
    itemsPerPage: ITEMS_PER_PAGE,
    searchTerm,
    filterFn,
    sortFn,
  });

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
            <CardTitle>CRM Notes</CardTitle>
            <CardDescription>Loading notes...</CardDescription>
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
            <CardTitle>CRM Notes</CardTitle>
            <CardDescription>Error loading notes</CardDescription>
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
          <h2 className="text-xl font-semibold text-slate-900">CRM Notes</h2>
          <p className="text-sm text-slate-500">Filter by note ID, client ID or client name.</p>
        </div>
        <form className="relative w-64" onSubmit={(e) => { e.preventDefault(); setSearchTerm(searchInput); }}>
          <Icon icon="ph:magnifying-glass" className="absolute left-3 top-1/2 -translate-y-1/2 text-slate-400" />
          <input
            type="text"
            placeholder="Search by Note ID, Client ID or Name..."
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
          <CardTitle>CRM Notes</CardTitle>
          <CardDescription>
            {notes.length === 0
              ? "No notes match your search"
              : `Viewing page ${currentPage} of ${Math.max(1, totalPages)}`}
          </CardDescription>
        </CardHeader>
        <CardContent>
          {notes.length === 0 ? (
            <div className="flex flex-col items-center justify-center py-12 space-y-4">
              <Icon
                icon={totalItems === 0 ? "ph:note-duotone" : "ph:magnifying-glass"}
                className="text-slate-400"
                width={48}
              />
              <p className="text-sm text-slate-600">
                {totalItems === 0
                  ? "There are no CRM notes to display."
                  : "No notes found matching your search."}
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
              {notes.map((note: CRMNote) => (
                <NoteCard
                  key={note.id}
                  note={note}
                  onClick={onNoteClick}
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
