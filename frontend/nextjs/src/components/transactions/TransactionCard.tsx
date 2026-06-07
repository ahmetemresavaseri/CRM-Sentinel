import { Transaction } from "@/types/transaction";
import { DirectionBadge, TypeBadge } from "./TransactionBadge";
import { Icon } from "@iconify/react";

interface TransactionCardProps {
  transaction: Transaction;
  clientName?: string;
  onClick?: (transaction: Transaction) => void;
}

/**
 * Card component for displaying a single transaction
 * Follows the pattern from RecentAlerts.tsx
 */
export function TransactionCard({ transaction, clientName, onClick }: TransactionCardProps) {
  const handleClick = () => {
    if (onClick) {
      onClick(transaction);
    }
  };

  // Format amount with Swiss locale (matching existing pattern)
  const formattedAmount = parseFloat(transaction.amount).toLocaleString("de-CH", {
    minimumFractionDigits: 2,
    maximumFractionDigits: 2,
  });

  // Format date to readable format
  const formattedDate = new Date(transaction.date).toLocaleDateString("de-CH", {
    year: "numeric",
    month: "short",
    day: "numeric",
  });

  return (
    <div className="border border-slate-200 rounded-lg overflow-hidden hover:border-slate-300 transition-colors">
      <div
        className={`flex items-start justify-between p-4 ${
          onClick ? "cursor-pointer hover:bg-slate-50" : ""
        }`}
        onClick={handleClick}
      >
        <div className="flex-1 space-y-2">
          {/* Header with badges */}
          <div className="flex items-center gap-2 flex-wrap">
            <DirectionBadge direction={transaction.direction} />
            <TypeBadge type={transaction.type} />
            <span className="text-xs text-slate-500">{formattedDate}</span>
          </div>

          {/* Client and counterparty */}
          <div className="flex items-center gap-2 text-sm text-slate-700">
            <span className="font-medium">{clientName || "Client"}</span>
            <Icon icon="mdi:arrow-right" className="text-slate-400" width={16} />
            <span className="font-medium">{transaction.counterparty_entity || "Counterparty"}</span>
          </div>

          {/* Amount */}
          <div className="text-lg font-semibold text-slate-900">
            {formattedAmount} {transaction.currency}
          </div>

          {/* Transaction and Client IDs */}
          <div className="flex items-center gap-4 text-xs text-slate-500">
            <span>TX: {transaction.transaction_id}</span>
            <span>Client: {transaction.client_id}</span>
          </div>
        </div>

        {/* Arrow icon if clickable */}
        {onClick && (
          <Icon
            icon="mdi:chevron-right"
            className="text-slate-400 flex-shrink-0"
            width={24}
          />
        )}
      </div>
    </div>
  );
}
