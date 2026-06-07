"use client";

import { useEffect, useMemo, useState } from "react";
import { Icon } from "@iconify/react";
import { Client } from "@/types/client";
import { Card, CardContent } from "@/components/ui/card";
import { Pagination } from "@/components/ui/pagination";
import { getClients } from "@/lib/api";

interface ClientListProps {
  onClientClick: (client: Client) => void;
}

export default function ClientList({ onClientClick }: ClientListProps) {
    const [searchTerm, setSearchTerm] = useState("");
    const [debouncedSearch, setDebouncedSearch] = useState("");
    const [clients, setClients] = useState<Client[]>([]);
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState<string | null>(null);

    // Pagination state
    const [page, setPage] = useState(1);
    const [pageSize] = useState(12);
    const [total, setTotal] = useState(0);

    // Debounce search term
    useEffect(() => {
        const timer = setTimeout(() => {
            setDebouncedSearch(searchTerm);
            setPage(1); // Reset to first page on search
        }, 500);

        return () => clearTimeout(timer);
    }, [searchTerm]);

    useEffect(() => {
        const fetchClients = async () => {
            try {
                setLoading(true);
                setError(null);
                const response = await getClients(page, pageSize, debouncedSearch);
                setClients(response.items);
                setTotal(response.total);
            } catch (err) {
                console.error("Failed to fetch clients:", err);
                setError("Failed to load clients. Please try again later.");
            } finally {
                setLoading(false);
            }
        };

        fetchClients();
    }, [page, pageSize, debouncedSearch]);

    const formatCurrency = (amount: number) => {
        return new Intl.NumberFormat('de-CH', { style: 'currency', currency: 'CHF', maximumFractionDigits: 0 }).format(amount);
    };

    const totalPages = Math.ceil(total / pageSize);

    return (
        <div className="space-y-6">
            <div className="flex justify-between items-center">
                <div>
                    <h2 className="text-2xl font-bold text-slate-900">Clients</h2>
                    <p className="text-slate-500">View and manage client portfolio.</p>
                </div>
                <div className="relative w-64">
                    <Icon icon="ph:magnifying-glass" className="absolute left-3 top-1/2 -translate-y-1/2 text-slate-400" />
                    <input
                        type="text"
                        placeholder="Search Client ID or Name..."
                        className="w-full pl-10 pr-4 py-2 border border-slate-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500/20 focus:border-blue-500 transition-all font-mono text-sm"
                        value={searchTerm}
                        onChange={(e) => setSearchTerm(e.target.value)}
                    />
                </div>
            </div>

            {loading ? (
                <div className="flex items-center justify-center p-12">
                    <Icon icon="ph:spinner" className="animate-spin text-blue-600" width={32} />
                </div>
            ) : error ? (
                <div className="p-4 bg-red-50 border border-red-200 rounded-lg text-red-700">
                    {error}
                </div>
            ) : clients.length === 0 ? (
                <div className="flex flex-col items-center justify-center py-12 space-y-4 bg-slate-50 rounded-lg border-2 border-dashed border-slate-200">
                    <Icon
                        icon={debouncedSearch ? "ph:magnifying-glass" : "ph:user-circle-duotone"}
                        className="text-slate-400"
                        width={48}
                    />
                    <p className="text-slate-500">
                        {debouncedSearch ? "No clients found matching your search." : "No clients found."}
                    </p>
                    {debouncedSearch && (
                        <button
                            onClick={() => {
                                setSearchTerm("");
                                setDebouncedSearch("");
                                setPage(1);
                            }}
                            className="px-4 py-2 bg-blue-600 text-white text-sm rounded-lg hover:bg-blue-700 transition-colors"
                        >
                            Clear Search
                        </button>
                    )}
                </div>
            ) : (
                <>
                    <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
                        {clients.map((client) => (
                            <div
                                key={client.client_id}
                                onClick={() => onClientClick(client)}
                                className="cursor-pointer"
                            >
                                <Card className="h-full hover:border-slate-300 hover:bg-slate-50 transition-colors border-slate-200 overflow-hidden group">
                                    <CardContent className="p-6">
                                        <div className="flex justify-between items-start mb-4">
                                            <div className="flex items-center gap-3">
                                                <div className="w-10 h-10 rounded-lg bg-white border border-slate-100 flex items-center justify-center text-slate-500 group-hover:text-blue-600 transition-colors">
                                                    <Icon icon="ph:user-circle-duotone" width={24} />
                                                </div>
                                                <div className="min-w-0">
                                                    <h3 className="text-lg font-semibold text-slate-900 truncate max-w-40">
                                                        {client.name || client.client_id}
                                                    </h3>
                                                    <div className="flex items-center gap-2 text-xs text-slate-500">
                                                        <span className="font-mono text-xs text-slate-600">{client.client_id}</span>
                                                        <span className="inline-flex items-center gap-1">
                                                            <Icon icon="ph:flag" /> {client.domicile}
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div className="flex flex-col items-end gap-1">
                                                <div className={`px-2 py-0.5 rounded text-[10px] font-bold uppercase tracking-wide border ${client.client_risk_rating === 'High' ? 'bg-red-50 text-red-700 border-red-100' :
                                                    client.client_risk_rating === 'Medium' ? 'bg-amber-50 text-amber-700 border-amber-100' :
                                                        'bg-emerald-50 text-emerald-700 border-emerald-100'
                                                    }`}>
                                                    Risk: {client.client_risk_rating}
                                                </div>
                                                <div className={`text-[10px] font-medium ${client.status === 'Open' ? 'text-emerald-600' : 'text-slate-400'}`}>
                                                    {client.status}
                                                </div>
                                            </div>
                                        </div>

                                        <div className="space-y-3 pt-2">
                                            <div className="flex justify-between items-baseline">
                                                <span className="text-xs text-slate-500">AUM</span>
                                                <span className="font-semibold text-slate-900">{formatCurrency(client.aum)}</span>
                                            </div>

                                            <div className="flex justify-between items-baseline pt-1">
                                                <span className="text-xs text-slate-500">Monthly Turnover</span>
                                                <span className="text-sm text-slate-700">{formatCurrency(client.expected_monthly_turnover)}</span>
                                            </div>
                                        </div>

                                    </CardContent>
                                </Card>
                            </div>
                        ))}
                    </div>

                    <div className="flex justify-center mt-6">
                        <Pagination
                            currentPage={page}
                            totalPages={totalPages}
                            onPageChange={setPage}
                        />
                    </div>
                </>
            )}
        </div>
    );
}
