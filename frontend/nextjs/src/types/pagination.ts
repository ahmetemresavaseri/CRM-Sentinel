/**
 * Generic pagination response from backend
 * Used by all paginated endpoints (transactions, notes, alerts)
 */
export interface PaginatedResponse<T> {
  items: T[];
  total: number;
  page: number;
  size: number;
}

/**
 * Type guard to check if a response is paginated
 */
export function isPaginatedResponse<T>(data: any): data is PaginatedResponse<T> {
  return (
    data &&
    typeof data === 'object' &&
    'items' in data &&
    Array.isArray(data.items) &&
    'total' in data &&
    typeof data.total === 'number'
  );
}

/**
 * Extract items from either array or paginated response
 */
export function extractItems<T>(data: T[] | PaginatedResponse<T>): T[] {
  if (isPaginatedResponse(data)) {
    return data.items;
  }
  return data;
}

/**
 * Extract total count from either array or paginated response
 */
export function extractTotal<T>(data: T[] | PaginatedResponse<T>): number {
  if (isPaginatedResponse(data)) {
    return data.total;
  }
  return data.length;
}
