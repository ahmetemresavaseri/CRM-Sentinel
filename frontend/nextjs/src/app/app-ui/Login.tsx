import React, { useState } from "react";
import { Icon } from "@iconify/react";
// NEU: Import des useAuth Hook aus AuthContext für Login-Funktion
import { useAuth } from "@/contexts/AuthContext";

interface LoginProps {
    onLoginSuccess: () => void;
}

export default function Login({ onLoginSuccess }: LoginProps) {
    const [username, setUsername] = useState("");
    const [password, setPassword] = useState("");
    const [isLoading, setIsLoading] = useState(false);
    // NEU: State für Fehlermeldungen vom Backend
    const [error, setError] = useState<string | null>(null);

    // NEU: useAuth Hook für Zugriff auf Login-Funktion
    const { login } = useAuth();

    // NEU: Echte Login-Funktion mit Backend API Call
    const handleSubmit = async (e: React.FormEvent) => {
        e.preventDefault();
        setIsLoading(true);
        setError(null); // Vorherige Fehler zurücksetzen

        try {
            // Backend API Call über AuthContext
            // Dieser Call sendet POST /users/token mit username + password
            await login(username, password);

            // Login erfolgreich -> Callback aufrufen
            onLoginSuccess();
        } catch (err: any) {
            // Login fehlgeschlagen
            console.error("Login failed:", err);

            // Fehlermeldung vom Backend anzeigen
            // Bei 401 (Unauthorized) ist es meistens falsches Passwort/Username
            if (err.message && (err.message.includes("401") || err.message.toLowerCase().includes("unauthorized") || err.message.toLowerCase().includes("incorrect"))) {
                setError("Incorrect username or password.");
            } else {
                setError(err instanceof Error ? err.message : "Login failed. Please try again.");
            }
        } finally {
            setIsLoading(false);
        }
    };

    return (
        <div className="min-h-screen bg-slate-50 flex items-center justify-center p-4">
            <div className="max-w-md w-full bg-white rounded-2xl shadow-xl overflow-hidden border border-slate-100">
                <div className="p-8">
                    <div className="flex flex-col items-center mb-8">
                        <div className="w-16 h-16 bg-blue-50 rounded-full flex items-center justify-center mb-4">
                            <Icon icon="stash:shield-duotone" className="text-blue-600" width={40} height={40} />
                        </div>
                        <h2 className="text-2xl font-bold text-slate-900">Welcome Back</h2>
                        <p className="text-slate-500 mt-2">Sign in to CRM Sentinel</p>
                    </div>

                    <form onSubmit={handleSubmit} className="space-y-6">
                        {/* NEU: Fehleranzeige wenn Login fehlschlägt */}
                        {error && (
                            <div className="bg-red-50 border border-red-200 rounded-lg p-3 flex items-start gap-2">
                                <Icon icon="ph:warning-duotone" className="text-red-600 shrink-0 mt-0.5" width={20} height={20} />
                                <p className="text-sm text-red-800">{error}</p>
                            </div>
                        )}

                        <div>
                            <label className="block text-sm font-medium text-slate-700 mb-2">
                                Username
                            </label>
                            <div className="relative">
                                <div className="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                                    <Icon icon="ph:user-duotone" className="text-slate-400" width={20} height={20} />
                                </div>
                                <input
                                    type="text"
                                    value={username}
                                    onChange={(e) => setUsername(e.target.value)}
                                    className="block w-full pl-10 pr-3 py-2.5 border border-slate-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition-colors bg-slate-50 focus:bg-white"
                                    placeholder="Enter your username"
                                    required
                                />
                            </div>
                        </div>

                        <div>
                            <label className="block text-sm font-medium text-slate-700 mb-2">
                                Password
                            </label>
                            <div className="relative">
                                <div className="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                                    <Icon icon="ph:lock-key-duotone" className="text-slate-400" width={20} height={20} />
                                </div>
                                <input
                                    type="password"
                                    value={password}
                                    onChange={(e) => setPassword(e.target.value)}
                                    className="block w-full pl-10 pr-3 py-2.5 border border-slate-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition-colors bg-slate-50 focus:bg-white"
                                    placeholder="Enter your password"
                                    required
                                />
                            </div>
                        </div>

                        <div className="flex flex-col gap-4">
                            <button
                                type="submit"
                                disabled={isLoading}
                                className="w-full flex justify-center items-center py-3 px-4 border border-transparent rounded-lg shadow-sm text-sm font-medium text-white bg-blue-600 hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500 transition-all disabled:opacity-70 disabled:cursor-not-allowed"
                            >
                                Sign In
                            </button>

                            {isLoading && (
                                <div className="flex items-center justify-center text-slate-500 text-sm">
                                    <Icon icon="eos-icons:loading" className="animate-spin mr-2" width={20} height={20} />
                                    <span>Signing in...</span>
                                </div>
                            )}
                        </div>
                    </form>
                </div>
                <div className="px-8 py-4 bg-slate-50 border-t border-slate-100 flex justify-center">
                    <p className="text-xs text-slate-500">
                        Protected by CRM Sentinel Security
                    </p>
                </div>
            </div>
        </div>
    );
}