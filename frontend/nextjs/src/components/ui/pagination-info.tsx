interface PaginationInfoProps {
  currentPage: number;
  itemsPerPage: number;
  totalItems: number;
}

/**
 * Google-style pagination info text
 * Example: "Showing 1-50 of 1,287 results"
 */
export function PaginationInfo({ currentPage, itemsPerPage, totalItems }: PaginationInfoProps) {
  const startItem = (currentPage - 1) * itemsPerPage + 1;
  const endItem = Math.min(currentPage * itemsPerPage, totalItems);

  // Format numbers with commas for readability
  const formatNumber = (num: number) => num.toLocaleString();

  return (
    <p className="text-sm text-slate-600">
      Showing {formatNumber(startItem)}-{formatNumber(endItem)} of {formatNumber(totalItems)} results
    </p>
  );
}
