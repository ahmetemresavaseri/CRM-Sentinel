"use client";

import { useState } from "react";
import { Icon } from "@iconify/react";
import { Card, CardContent } from "@/components/ui/card";

type UploadType = "transactions" | "notes" | "clients";

interface BulkUploadResult {
  inserted: number;
  skipped: number;
  inserted_ids: string[];
  skipped_items: Array<{
    index: number;
    reason: string;
    detail?: string;
  }>;
  alerts_created?: number;
  alerts_updated?: number;
  alerts_cleared?: number;
}

export default function BulkUpload() {
  const [uploadType, setUploadType] = useState<UploadType>("transactions");
  const [file, setFile] = useState<File | null>(null);
  const [uploading, setUploading] = useState(false);
  const [processingStage, setProcessingStage] = useState<string>("");
  const [result, setResult] = useState<BulkUploadResult | null>(null);
  const [error, setError] = useState<string | null>(null);

  const handleFileChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const selectedFile = e.target.files?.[0];
    if (selectedFile) {
      if (!selectedFile.name.endsWith(".csv")) {
        setError("Please select a CSV file.");
        setFile(null);
        return;
      }
      setFile(selectedFile);
      setError(null);
      setResult(null);
    }
  };

  const handleDragOver = (e: React.DragEvent<HTMLDivElement>) => {
    e.preventDefault();
    e.stopPropagation();
  };

  const handleDrop = (e: React.DragEvent<HTMLDivElement>) => {
    e.preventDefault();
    e.stopPropagation();

    const droppedFile = e.dataTransfer.files?.[0];
    if (droppedFile) {
      if (!droppedFile.name.endsWith(".csv")) {
        setError("Please select a CSV file.");
        setFile(null);
        return;
      }
      setFile(droppedFile);
      setError(null);
      setResult(null);
    }
  };

  const parseCSV = (text: string): any[] => {
    const lines = text.split("\n").filter((line) => line.trim());
    if (lines.length < 2) {
      throw new Error("CSV file must contain at least a header row and a data row.");
    }

    const headers = lines[0].split(",").map((h) => h.trim());
    const data: any[] = [];

    for (let i = 1; i < lines.length; i++) {
      const values = lines[i].split(",").map((v) => v.trim());
      const row: any = {};

      headers.forEach((header, index) => {
        const value = values[index];
        if (value && value !== "") {
          row[header] = value;
        }
      });

      data.push(row);
    }

    return data;
  };

  const mapTransactionCSVToBackend = (csvData: any[]): any[] => {
    return csvData.map((row) => ({
      transaction_id: row.Transaction_ID || row.transaction_id,
      client_id: row.Client_ID || row.client_id,
      date: row.Date || row.date,
      amount: row["Amount_(CHF)"] || row.Amount || row.amount,
      currency: row.Original_currency || row.currency,
      direction: row.Direction || row.direction,
      type: row.Type || row.type,
      counterparty_bank: row.Counterparty_Bank || row.counterparty_bank,
      counterparty_entity: row.Counterparty_Entity || row.counterparty_entity,
    }));
  };

  const mapNotesCSVToBackend = (csvData: any[]): any[] => {
    return csvData.map((row) => ({
      id: row.id || row.ID || row.Note_ID,
      client_id: row.client_id || row.Client_ID,
      date: row.date || row.Date,
      text: row.text || row.Text || row.Note_Text,
    }));
  };

  const mapClientsCSVToBackend = (csvData: any[]): any[] => {
    return csvData.map((row) => ({
      client_id: row.Client_ID || row.client_id,
      name: row.Name || row.name,
      client_risk_rating: row.Client_Risk_Rating || row.client_risk_rating,
      opening_date: row.Opening_Date || row.opening_date,
      status: row.Status || row.status,
      aum: row.AUM || row.aum,
      domicile: row.Domicile || row.domicile,
      nationality: row.Nationality || row.nationality,
      country_of_business: row.Country_of_business || row.country_of_business,
      expected_monthly_turnover: row.Expected_Monthly_Turnover || row.expected_monthly_turnover,
      declared_counterparties: row.Declared_Counterparties || row.declared_counterparties,
    }));
  };

  const handleUpload = async () => {
    if (!file) {
      setError("Please select a file.");
      return;
    }

    setUploading(true);
    setError(null);
    setResult(null);
    setProcessingStage("");

    try {
      setProcessingStage("Parsing CSV file...");
      const text = await file.text();
      const csvData = parseCSV(text);

      // Map CSV data to backend format
      setProcessingStage("Validating data...");
      const data =
        uploadType === "transactions"
          ? mapTransactionCSVToBackend(csvData)
          : uploadType === "notes"
            ? mapNotesCSVToBackend(csvData)
            : mapClientsCSVToBackend(csvData);

      const RAW_API_BASE_URL = process.env.NEXT_PUBLIC_BACKEND_URL || "https://be.group-p5.webdev-25.ivia.isginf.ch";
      const API_BASE_URL = RAW_API_BASE_URL.replace(/\/+$/, ""); // normalize trailing slash
      const endpoint =
        uploadType === "transactions"
          ? "/transactions/bulk"
          : uploadType === "notes"
            ? "/notes/bulk"
            : "/clients/bulk";

      setProcessingStage(`Uploading ${uploadType}...`);
      const token = localStorage.getItem("auth_token");
      const response = await fetch(`${API_BASE_URL}${endpoint}`, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${token}`,
        },
        body: JSON.stringify(data),
      });

      if (!response.ok) {
        const errorData = await response.json();
        throw new Error(
          errorData.detail || `HTTP Error ${response.status}: ${response.statusText}`
        );
      }

      if (uploadType === "transactions") {
        setProcessingStage("Calculating transaction-note matchings...");
      } else if (uploadType === "notes") {
        setProcessingStage("Checking for alert auto-clearing...");
      }

      const resultData: BulkUploadResult = await response.json();

      if (uploadType === "transactions" && resultData.inserted > 0) {
        setProcessingStage("Evaluating AML rules and generating alerts...");
        // Give a brief delay to show the final processing stage
        await new Promise(resolve => setTimeout(resolve, 500));
      }

      setResult(resultData);
      setProcessingStage("");
    } catch (err) {
      setError(err instanceof Error ? err.message : "An unexpected error occurred");
      setProcessingStage("");
    } finally {
      setUploading(false);
    }
  };

  const downloadTemplate = () => {
    let csvContent = "";

    if (uploadType === "transactions") {
      csvContent =
        "Transaction_ID,Date,Client_ID,Amount_(CHF),Original_currency,Direction,Type,Counterparty_Bank,Counterparty_Entity\n" +
        "TXN001,2025-01-15,CL000001,10000.50,CHF,incoming,transfer,UBS,Company AG\n" +
        "TXN002,2025-01-16,CL000002,25000.00,EUR,outgoing,payment,Credit Suisse,Supplier GmbH\n";
    } else if (uploadType === "notes") {
      csvContent =
        "Client_ID,Date,Text\n" +
        "CL000001,2025-01-15,Meeting with client to discuss portfolio\n" +
        "CL000002,2025-01-16,Follow-up call regarding investment strategy\n";
    } else {
      csvContent =
        "Client_ID,Name,Client_Risk_Rating,Opening_Date,Status,AUM,Domicile,Nationality,Country_of_business,Expected_Monthly_Turnover,Declared_Counterparties\n" +
        "CL000001,John Doe,Low,2020-01-15,Open,5000000,CH,CH,CH,50000,Alpha AG;Beta Ltd\n" +
        "CL000002,Jane Smith,Medium,2019-03-20,Open,12000000,DE,DE,DE,120000,Gamma Corp;Delta Partners\n";
    }

    const blob = new Blob([csvContent], { type: "text/csv" });
    const url = window.URL.createObjectURL(blob);
    const a = document.createElement("a");
    a.href = url;
    a.download = `${uploadType}_template.csv`;
    a.click();
    window.URL.revokeObjectURL(url);
  };

  return (
    <div className="space-y-6">
      <div>
        <h2 className="text-2xl font-bold text-slate-900">Bulk Upload</h2>
        <p className="text-slate-500">Upload transactions or notes via CSV file.</p>
      </div>

      <Card>
        <CardContent className="p-6 space-y-6">
          <div className="space-y-3">
            <label className="block text-sm font-medium text-slate-700">
              Select upload type
            </label>
            <div className="grid grid-cols-3 gap-3">
              <button
                onClick={() => {
                  setUploadType("clients");
                  setFile(null);
                  setResult(null);
                  setError(null);
                }}
                className={`px-4 py-3 rounded-lg border-2 transition-all ${uploadType === "clients"
                    ? "border-blue-500 bg-blue-50 text-blue-700"
                    : "border-slate-200 hover:border-slate-300"
                  }`}
              >
                <div className="flex items-center justify-center gap-2">
                  <Icon icon="ph:users-three" width={20} />
                  <span className="font-medium">Clients</span>
                </div>
              </button>
              <button
                onClick={() => {
                  setUploadType("transactions");
                  setFile(null);
                  setResult(null);
                  setError(null);
                }}
                className={`px-4 py-3 rounded-lg border-2 transition-all ${uploadType === "transactions"
                    ? "border-blue-500 bg-blue-50 text-blue-700"
                    : "border-slate-200 hover:border-slate-300"
                  }`}
              >
                <div className="flex items-center justify-center gap-2">
                  <Icon icon="ph:arrows-left-right" width={20} />
                  <span className="font-medium">Transactions</span>
                </div>
              </button>
              <button
                onClick={() => {
                  setUploadType("notes");
                  setFile(null);
                  setResult(null);
                  setError(null);
                }}
                className={`px-4 py-3 rounded-lg border-2 transition-all ${uploadType === "notes"
                    ? "border-blue-500 bg-blue-50 text-blue-700"
                    : "border-slate-200 hover:border-slate-300"
                  }`}
              >
                <div className="flex items-center justify-center gap-2">
                  <Icon icon="ph:note" width={20} />
                  <span className="font-medium">Notes</span>
                </div>
              </button>
            </div>
          </div>

          <div className="border-t border-slate-200 pt-6 space-y-4">
            <div className="flex items-center justify-between">
              <label className="block text-sm font-medium text-slate-700">
                Upload CSV file
              </label>
              <button
                onClick={downloadTemplate}
                className="text-sm text-blue-600 hover:text-blue-700 flex items-center gap-1"
              >
                <Icon icon="ph:download-simple" />
                Download template
              </button>
            </div>

            <div className="relative">
              <input
                type="file"
                accept=".csv"
                onChange={handleFileChange}
                className="hidden"
                id="csv-upload"
              />
              <div
                onDragOver={handleDragOver}
                onDrop={handleDrop}
                onClick={() => document.getElementById("csv-upload")?.click()}
                className="flex items-center justify-center gap-3 p-8 border-2 border-dashed border-slate-300 rounded-lg cursor-pointer hover:border-blue-500 hover:bg-blue-50/50 transition-all"
              >
                <Icon icon="ph:upload-simple" width={32} className="text-slate-400" />
                <div className="text-center">
                  {file ? (
                    <div>
                      <p className="text-sm font-medium text-slate-900">{file.name}</p>
                      <p className="text-xs text-slate-500">
                        {(file.size / 1024).toFixed(2)} KB
                      </p>
                    </div>
                  ) : (
                    <div>
                      <p className="text-sm font-medium text-slate-900">
                        Click here to select a CSV file
                      </p>
                      <p className="text-xs text-slate-500">or drag and drop the file here</p>
                    </div>
                  )}
                </div>
              </div>
            </div>

            {error && (
              <div className="p-4 bg-red-50 border border-red-200 rounded-lg flex items-start gap-3">
                <Icon icon="ph:warning-circle" className="text-red-600 mt-0.5" width={20} />
                <div className="flex-1">
                  <p className="text-sm font-medium text-red-900">Error</p>
                  <p className="text-sm text-red-700">{error}</p>
                </div>
              </div>
            )}

            {result && (
              <div className="p-4 bg-green-50 border border-green-200 rounded-lg space-y-3">
                <div className="flex items-start gap-3">
                  <Icon icon="ph:check-circle" className="text-green-600 mt-0.5" width={20} />
                  <div className="flex-1">
                    <p className="text-sm font-medium text-green-900">Upload successful</p>
                    <div className="mt-2 space-y-1 text-sm text-green-700">
                      <p>Inserted: {result.inserted}</p>
                      <p>Skipped: {result.skipped}</p>
                    </div>
                  </div>
                </div>

                {/* Show pipeline processing results */}
                {uploadType === "transactions" && result.inserted > 0 && (
                  <div className="mt-3 pt-3 border-t border-green-200">
                    <p className="text-sm font-medium text-green-900 mb-2">
                      Pipeline Processing:
                    </p>
                    <div className="space-y-1 text-sm text-green-700">
                      <div className="flex items-center gap-2">
                        <Icon icon="ph:check" width={16} />
                        <span>Transaction-note matchings calculated</span>
                      </div>
                      {typeof result.alerts_created === "number" && (
                        <div className="flex items-center gap-2">
                          <Icon icon="ph:check" width={16} />
                          <span>AML rules evaluated ({result.alerts_created} alerts created{result.alerts_updated ? `, ${result.alerts_updated} updated` : ""})</span>
                        </div>
                      )}
                    </div>
                  </div>
                )}

                {uploadType === "notes" && result.inserted > 0 && (
                  <div className="mt-3 pt-3 border-t border-green-200">
                    <p className="text-sm font-medium text-green-900 mb-2">
                      Pipeline Processing:
                    </p>
                    <div className="space-y-1 text-sm text-green-700">
                      {typeof result.alerts_cleared === "number" && (
                        <div className="flex items-center gap-2">
                          <Icon icon="ph:check" width={16} />
                          <span>Auto-clear check completed ({result.alerts_cleared} alerts cleared)</span>
                        </div>
                      )}
                    </div>
                  </div>
                )}

                {result.skipped > 0 && result.skipped_items.length > 0 && (
                  <div className="mt-3 pt-3 border-t border-green-200">
                    <p className="text-sm font-medium text-green-900 mb-2">
                      Skipped items:
                    </p>
                    <div className="space-y-2 max-h-40 overflow-y-auto">
                      {result.skipped_items.map((item, idx) => (
                        <div
                          key={idx}
                          className="text-xs bg-white/50 p-2 rounded border border-green-200"
                        >
                          <p className="font-medium">Row {item.index + 2}</p>
                          <p className="text-green-700">Reason: {item.reason}</p>
                          {item.detail && (
                            <p className="text-green-600 mt-1 truncate">{item.detail}</p>
                          )}
                        </div>
                      ))}
                    </div>
                  </div>
                )}
              </div>
            )}

            <button
              onClick={handleUpload}
              disabled={!file || uploading}
              className="w-full px-4 py-3 bg-blue-600 text-white rounded-lg hover:bg-blue-700 disabled:bg-slate-300 disabled:cursor-not-allowed transition-colors flex flex-col items-center justify-center gap-2"
            >
              {uploading ? (
                <>
                  <div className="flex items-center gap-2">
                    <Icon icon="ph:spinner" className="animate-spin" width={20} />
                    <span>Processing...</span>
                  </div>
                  {processingStage && (
                    <span className="text-xs text-blue-100">{processingStage}</span>
                  )}
                </>
              ) : (
                <div className="flex items-center gap-2">
                  <Icon icon="ph:cloud-arrow-up" width={20} />
                  <span>Upload</span>
                </div>
              )}
            </button>
          </div>
        </CardContent>
      </Card>

      {/* Pipeline processing info */}
      {(uploadType === "transactions" || uploadType === "notes") && (
        <div className="bg-purple-50 border border-purple-200 rounded-lg p-4">
          <div className="flex gap-3">
            <Icon icon="ph:flow-arrow" className="text-purple-600 mt-0.5" width={20} />
            <div className="flex-1 space-y-2 text-sm text-purple-900">
              <p className="font-medium">Automated Processing Pipeline:</p>
              {uploadType === "transactions" ? (
                <ul className="list-disc list-inside space-y-1 text-purple-700">
                  <li>Transactions are validated and inserted into the database</li>
                  <li>Transaction-to-CRM-note matchings are calculated automatically</li>
                  <li>AML rules are evaluated and alerts are created/updated if violations are detected</li>
                  <li>All processing happens during the upload - no manual steps required</li>
                </ul>
              ) : (
                <ul className="list-disc list-inside space-y-1 text-purple-700">
                  <li>Notes are validated and inserted into the database</li>
                  <li>Existing alerts are checked for auto-clearing conditions</li>
                  <li>Alerts are automatically cleared if supporting notes are found</li>
                  <li>All processing happens during the upload - no manual steps required</li>
                </ul>
              )}
            </div>
          </div>
        </div>
      )}

      <div className="bg-blue-50 border border-blue-200 rounded-lg p-4">
        <div className="flex gap-3">
          <Icon icon="ph:info" className="text-blue-600 mt-0.5" width={20} />
          <div className="flex-1 space-y-2 text-sm text-blue-900">
            <p className="font-medium">CSV Format Notes:</p>
            {uploadType === "clients" ? (
              <ul className="list-disc list-inside space-y-1 text-blue-700">
                <li>
                  Required fields: <code className="px-1 bg-blue-100 rounded">Client_ID</code>
                </li>
                <li>
                  Optional fields: <code className="px-1 bg-blue-100 rounded">Name</code>,{" "}
                  <code className="px-1 bg-blue-100 rounded">Client_Risk_Rating</code>,{" "}
                  <code className="px-1 bg-blue-100 rounded">Opening_Date</code>,{" "}
                  <code className="px-1 bg-blue-100 rounded">Status</code>,{" "}
                  <code className="px-1 bg-blue-100 rounded">AUM</code>,{" "}
                  <code className="px-1 bg-blue-100 rounded">Domicile</code>,{" "}
                  <code className="px-1 bg-blue-100 rounded">Nationality</code>,{" "}
                  <code className="px-1 bg-blue-100 rounded">Country_of_business</code>,{" "}
                  <code className="px-1 bg-blue-100 rounded">Expected_Monthly_Turnover</code>,{" "}
                  <code className="px-1 bg-blue-100 rounded">Declared_Counterparties</code>
                </li>
                <li>Date Format: YYYY-MM-DD (e.g. 2020-01-15)</li>
                <li>Declared_Counterparties: Semicolon-separated (e.g. "Alpha AG;Beta Ltd")</li>
              </ul>
            ) : uploadType === "transactions" ? (
              <ul className="list-disc list-inside space-y-1 text-blue-700">
                <li>
                  Required fields: <code className="px-1 bg-blue-100 rounded">Client_ID</code>,{" "}
                  <code className="px-1 bg-blue-100 rounded">Date</code>,{" "}
                  <code className="px-1 bg-blue-100 rounded">Amount_(CHF)</code>
                </li>
                <li>
                  Optional fields: <code className="px-1 bg-blue-100 rounded">Transaction_ID</code>,{" "}
                  <code className="px-1 bg-blue-100 rounded">Original_currency</code>,{" "}
                  <code className="px-1 bg-blue-100 rounded">Direction</code>,{" "}
                  <code className="px-1 bg-blue-100 rounded">Type</code>,{" "}
                  <code className="px-1 bg-blue-100 rounded">Counterparty_Bank</code>,{" "}
                  <code className="px-1 bg-blue-100 rounded">Counterparty_Entity</code>
                </li>
                <li>Date Format: YYYY-MM-DD (e.g. 2025-01-15)</li>
                <li>Amount: Decimal number with dot separator (e.g. 10000.50)</li>
              </ul>
            ) : (
              <ul className="list-disc list-inside space-y-1 text-blue-700">
                <li>
                  Required fields: <code className="px-1 bg-blue-100 rounded">Client_ID</code>,{" "}
                  <code className="px-1 bg-blue-100 rounded">Date</code>
                </li>
                <li>
                  Optional fields: <code className="px-1 bg-blue-100 rounded">Text</code>
                </li>
                <li>Date Format: YYYY-MM-DD (e.g. 2025-01-15)</li>
              </ul>
            )}
          </div>
        </div>
      </div>
    </div>
  );
}
