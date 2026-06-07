import { TransactionDirection, TransactionType } from "@/types/transaction";

interface DirectionBadgeProps {
  direction: TransactionDirection;
}

/**
 * Badge component for transaction direction (Credit/Debit)
 * Credit = green (incoming), Debit = red (outgoing)
 */
export function DirectionBadge({ direction }: DirectionBadgeProps) {
  const isCredit = direction === "Credit";

  return (
    <span
      className={`inline-flex items-center rounded-md px-2 py-0.5 text-xs font-medium ${
        isCredit
          ? "bg-emerald-100 text-emerald-700"
          : "bg-red-100 text-red-700"
      }`}
    >
      {direction}
    </span>
  );
}

interface TypeBadgeProps {
  type: TransactionType;
}

/**
 * Badge component for transaction type
 * Different colors for different transaction types
 */
export function TypeBadge({ type }: TypeBadgeProps) {
  // Color mapping for transaction types
  const colorMap: Record<TransactionType, string> = {
    "Wire Transfer": "bg-blue-100 text-blue-700",
    "Cash": "bg-amber-100 text-amber-700",
    "Cheque": "bg-purple-100 text-purple-700",
    "Security": "bg-slate-100 text-slate-700",
  };

  return (
    <span
      className={`inline-flex items-center rounded-md px-2 py-0.5 text-xs font-medium ${colorMap[type]}`}
    >
      {type}
    </span>
  );
}
