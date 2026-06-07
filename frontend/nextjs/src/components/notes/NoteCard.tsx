import { CRMNote } from "@/types/transaction";
import { Icon } from "@iconify/react";

interface NoteCardProps {
  note: CRMNote;
  onClick?: (note: CRMNote) => void;
}

/**
 * Card component for displaying a single CRM note
 * Shows truncated text preview with client info and date
 */
export function NoteCard({ note, onClick }: NoteCardProps) {
  const handleClick = () => {
    if (onClick) {
      onClick(note);
    }
  };

  // Format date to readable format
  const formattedDate = new Date(note.date).toLocaleDateString("de-CH", {
    year: "numeric",
    month: "short",
    day: "numeric",
  });

  // Truncate text for preview (max 150 characters)
  const truncatedText = note.text.length > 150
    ? note.text.substring(0, 150) + "..."
    : note.text;

  return (
    <div className="border border-slate-200 rounded-lg overflow-hidden hover:border-slate-300 transition-colors">
      <div
        className={`flex items-start gap-4 p-4 ${
          onClick ? "cursor-pointer hover:bg-slate-50" : ""
        }`}
        onClick={handleClick}
      >
        {/* Note icon */}
        <div className="shrink-0">
          <Icon
            icon="ph:note-duotone"
            className="text-blue-600"
            width={32}
          />
        </div>

        {/* Content */}
        <div className="flex-1 space-y-2 min-w-0">
          {/* Header with client and date */}
          <div className="flex items-center gap-3 flex-wrap">
            <span className="inline-flex items-center rounded-md bg-slate-100 px-2 py-0.5 text-sm font-medium text-slate-700">
              {note.client_name || note.client_id}
            </span>
            <span className="text-xs text-slate-500">{formattedDate}</span>
          </div>

          {/* Note text preview */}
          <p className="text-sm text-slate-700 leading-relaxed">
            {truncatedText}
          </p>

          {/* Note ID */}
          <div className="text-xs text-slate-500">
            Note ID: {note.id} • Client ID: {note.client_id}
          </div>
        </div>

        {/* Arrow icon if clickable */}
        {onClick && (
          <Icon
            icon="mdi:chevron-right"
            className="text-slate-400 shrink-0"
            width={24}
          />
        )}
      </div>
    </div>
  );
}
