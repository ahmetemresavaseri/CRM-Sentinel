import { useState, useEffect } from "react";
import { PaginatedResponse, extractItems, extractTotal } from "@/types/pagination";

/**
 * Configuration for the usePagination hook
 */
interface UsePaginationConfig<T, TFilters> {
  /** Function to fetch data from the API */
  fetchFn: (filters: TFilters & { skip?: number; limit?: number }) => Promise<T[] | PaginatedResponse<T>>;
  /** Number of items per page */
  itemsPerPage: number;
  /** Optional search term for client-side filtering */
  searchTerm?: string;
  /** Optional function to filter items client-side */
  filterFn?: (item: T, searchTerm: string) => boolean;
  /** Optional function to sort items */
  sortFn?: (a: T, b: T) => number;
  /** Additional filters to pass to the API */
  filters?: Partial<TFilters>;
}

/**
 * Result returned by the usePagination hook
 */
interface UsePaginationResult<T> {
  items: T[];
  totalItems: number;
  currentPage: number;
  totalPages: number;
  loading: boolean;
  error: string | null;
  setCurrentPage: (page: number) => void;
}

/**
 * Reusable pagination hook for server-side and client-side pagination
 *
 * When searchTerm is empty: uses server-side pagination
 * When searchTerm is provided: fetches all data and filters client-side
 *
 * @example
 * const { items, totalItems, currentPage, totalPages, loading, error, setCurrentPage } = usePagination({
 *   fetchFn: getTransactions,
 *   itemsPerPage: 50,
 *   searchTerm: searchQuery,
 *   filterFn: (tx, term) => tx.client_id.toLowerCase().includes(term.toLowerCase()),
 *   sortFn: (a, b) => new Date(b.date).getTime() - new Date(a.date).getTime(),
 * });
 */
export function usePagination<T, TFilters = {}>({
  fetchFn,
  itemsPerPage,
  searchTerm = "",
  filterFn,
  sortFn,
  filters = {},
}: UsePaginationConfig<T, TFilters>): UsePaginationResult<T> {
  const [items, setItems] = useState<T[]>([]);
  const [totalItems, setTotalItems] = useState<number>(0);
  const [currentPage, setCurrentPage] = useState<number>(1);
  const [loading, setLoading] = useState<boolean>(true);
  const [error, setError] = useState<string | null>(null);

  // Reset to page 1 when search term changes
  useEffect(() => {
    setCurrentPage(1);
  }, [searchTerm]);

  // Fetch data whenever page or search term changes
  useEffect(() => {
    async function fetchData() {
      try {
        setLoading(true);
        setError(null);

        const term = searchTerm.trim();

        if (term && filterFn) {
          // Client-side filtering mode: fetch all data
          const data = await fetchFn({
            ...filters,
            limit: 100000,
          } as TFilters & { skip?: number; limit?: number });

          let list = extractItems(data);

          // Apply sort if provided
          if (sortFn) {
            list = [...list].sort(sortFn);
          }

          // Filter by search term
          const filtered = list.filter((item) => filterFn(item, term));

          setTotalItems(filtered.length);

          // Paginate filtered results
          const startIndex = (currentPage - 1) * itemsPerPage;
          const endIndex = startIndex + itemsPerPage;
          setItems(filtered.slice(startIndex, endIndex));
        } else {
          // Server-side pagination mode
          const skip = (currentPage - 1) * itemsPerPage;
          const data = await fetchFn({
            ...filters,
            skip,
            limit: itemsPerPage,
          } as TFilters & { skip?: number; limit?: number });

          setItems(extractItems(data));
          setTotalItems(extractTotal(data));
        }
      } catch (err) {
        setError(err instanceof Error ? err.message : "Failed to load data");
        setItems([]);
        setTotalItems(0);
      } finally {
        setLoading(false);
      }
    }

    fetchData();
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [currentPage, searchTerm]);

  const totalPages = Math.ceil(totalItems / itemsPerPage);

  return {
    items,
    totalItems,
    currentPage,
    totalPages,
    loading,
    error,
    setCurrentPage,
  };
}
