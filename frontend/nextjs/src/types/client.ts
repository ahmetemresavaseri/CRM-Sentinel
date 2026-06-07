export interface Client {
  client_id: string;
  name: string | null;
  client_risk_rating: "Low" | "Medium" | "High" | string;
  opening_date: string;
  status: "Open" | "Closed" | "In Approval" | string;
  aum: number;
  domicile: string;
  nationality: string;
  country_of_business: string;
  expected_monthly_turnover: number;
  declared_counterparties: string;
}
