"use client";

import { useEffect, useState } from "react";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Icon } from "@iconify/react";
import { CRMNote } from "@/types/transaction";
import { getRecentNotes } from "@/lib/api";
import { NoteCard } from "@/components/notes/NoteCard";

interface RecentNotesProps {
  onNoteClick?: (note: CRMNote) => void;
}

export default function RecentNotes({ onNoteClick }: RecentNotesProps) {
  const [notes, setNotes] = useState<CRMNote[]>([]);
  const [loading, setLoading] = useState<boolean>(true);

  // Fetch recent notes on component mount
  useEffect(() => {
    async function fetchRecentNotes() {
      try {
        setLoading(true);
        const data = await getRecentNotes();
        // Limit to 3 most recent
        setNotes(data.slice(0, 3));
      } catch (err) {
        console.error("Failed to load recent notes:", err);
        setNotes([]);
      } finally {
        setLoading(false);
      }
    }

    fetchRecentNotes();
  }, []);

  return (
    <>
      <Card className="mt-8">
        <CardHeader>
          <CardTitle>Recent CRM Notes</CardTitle>
          <CardDescription>Latest notes from your team</CardDescription>
        </CardHeader>

        <CardContent>
          {loading ? (
            <div className="flex items-center justify-center py-8">
              <Icon
                icon="mdi:loading"
                className="animate-spin text-blue-600"
                width={24}
              />
            </div>
          ) : notes.length === 0 ? (
            <p className="text-slate-500">No CRM notes yet</p>
          ) : (
            <div className="space-y-4">
              {notes.map((note) => (
                <NoteCard key={note.id} note={note} onClick={onNoteClick} />
              ))}
            </div>
          )}
        </CardContent>
      </Card>
    </>
  );
}
