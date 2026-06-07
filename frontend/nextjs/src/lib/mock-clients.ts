import { Client } from "@/types/client";

const COUNTRIES = ["DE", "US", "CH", "UK", "FR", "IT", "SG", "HK", "JP"];
const STATUSES: Client["status"][] = ["Open", "Open", "Open", "Open", "Closed", "In Approval"];
const RISKS: Client["client_risk_rating"][] = ["Low", "Low", "Medium", "Medium", "High"];

// Helper to generate a random subset of counterparties
const COUNTERPARTIES_POOL = [
    "Omega Holdings", "United Limited", "Premier AG", "Beta Limited",
    "Alpha AG", "Gamma Corp", "Delta Partners", "Epsilon Investments",
    "Global Trade Ltd", "International Assets", "Prime Capital", "Elite Funds"
];

const getRandomCounterparties = (): string[] => {
    const count = Math.floor(Math.random() * 5) + 1; // 1 to 5 counterparties
    const shuffled = [...COUNTERPARTIES_POOL].sort(() => 0.5 - Math.random());
    return shuffled.slice(0, count);
};

export const generateMockClients = (count: number = 20): Client[] => {
    return Array.from({ length: count }).map((_, i) => {
        // Generate dates between 2010 and 2024
        const start = new Date(2010, 0, 1);
        const end = new Date();
        const date = new Date(start.getTime() + Math.random() * (end.getTime() - start.getTime()));
        const dateString = date.toISOString().split('T')[0];

        const idNum = (i + 1).toString().padStart(6, '0');

        return {
            client_id: `CL${idNum}`,
            client_risk_rating: RISKS[Math.floor(Math.random() * RISKS.length)],
            opening_date: dateString,
            status: STATUSES[Math.floor(Math.random() * STATUSES.length)],
            aum: Math.floor(10000 + Math.random() * 9990000) + Math.random() * 100, // 10k to 10M
            domicile: COUNTRIES[Math.floor(Math.random() * COUNTRIES.length)],
            nationality: COUNTRIES[Math.floor(Math.random() * COUNTRIES.length)],
            country_of_business: COUNTRIES[Math.floor(Math.random() * COUNTRIES.length)],
            expected_monthly_turnover: Math.floor(1000 + Math.random() * 500000), // 1k to 500k
            declared_counterparties: getRandomCounterparties().join("; "),
            name: null,
        };
    });
};

export const MOCK_CLIENTS = generateMockClients(50);

export const getClientById = (id: string): Client | undefined => {
    return MOCK_CLIENTS.find(c => c.client_id === id);
};
