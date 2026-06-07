# Authentication System - CRM Sentinel

## Übersicht

Dieses Dokument beschreibt die vollständige Implementierung des Authentication Systems für CRM Sentinel, das die Frontend Next.js App mit dem FastAPI Backend verbindet.

## 📁 Dateistruktur

```
frontend/nextjs/src/
├── lib/
│   ├── api.ts              # API Client für Backend-Kommunikation
│   └── auth.ts             # Authentication Service (Login/Logout/Token Management)
├── contexts/
│   └── AuthContext.tsx     # React Context für globalen Auth State
├── app/
│   ├── page.tsx            # Haupt-Page mit AuthProvider Wrapper
│   └── app-ui/
│       ├── Login.tsx       # Login Component mit Backend Integration
│       └── Dashboard.tsx   # Dashboard mit User Info
```

## 🔧 Implementierte Features

### 1. API Client (`lib/api.ts`)

**Zweck**: Zentrale Verwaltung aller HTTP-Anfragen an das Backend

**Features**:
- ✅ Automatische Authorization Header Injection (Bearer Token)
- ✅ Error Handling für FastAPI Validation Errors (422)
- ✅ Automatischer Logout bei 401 Unauthorized
- ✅ Environment Variable Support (`NEXT_PUBLIC_BACKEND_URL`)
- ✅ Type-safe Interfaces für API Responses

**Wichtige Funktionen**:
```typescript
// Login mit OAuth2 Password Flow
loginUser(username: string, password: string): Promise<TokenResponse>

// Aktuellen User abrufen (benötigt Token)
getCurrentUser(): Promise<User>

// Transaktionen abrufen (benötigt Token)
getTransactions(clientId?: string): Promise<any[]>
getTransaction(id: string): Promise<any>

// Health Check
checkHealth(): Promise<{ status: string }>
```

**Request Format für Login**:
```
POST /users/token
Content-Type: application/x-www-form-urlencoded

grant_type=password&username=johndoe&password=secret
```

**Response Format**:
```json
{
  "access_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
  "token_type": "bearer"
}
```

---

### 2. Authentication Service (`lib/auth.ts`)

**Zweck**: Token Management und Authentication Utilities

**Features**:
- ✅ Login/Logout Funktionen
- ✅ Token Storage in localStorage
- ✅ JWT Token Decoding (Client-side)
- ✅ Token Expiry Checking
- ✅ Username Extraction aus JWT

**Wichtige Funktionen**:
```typescript
// Login (ruft API auf und speichert Token)
login(username: string, password: string): Promise<TokenResponse>

// Logout (entfernt Token aus localStorage)
logout(): void

// Token Management
getToken(): string | null
setToken(token: string): void
isAuthenticated(): boolean

// Token Validation
isTokenExpired(token?: string): boolean | null
getTokenTimeRemaining(token?: string): number | null
getUsernameFromToken(token?: string): string | null
```

**Token Storage**:
- Key: `auth_token`
- Location: `localStorage`
- Format: JWT String

**JWT Structure** (Backend setzt folgende Claims):
```json
{
  "sub": "johndoe",           // Username
  "exp": 1234567890           // Expiry Zeit (Unix Timestamp)
}
```

---

### 3. Authentication Context (`contexts/AuthContext.tsx`)

**Zweck**: Globaler React Context für Authentication State

**Features**:
- ✅ Globaler Auth State (isAuthenticated, user, token, isLoading)
- ✅ Automatisches Token Loading beim App Start
- ✅ Automatisches Token Expiry Checking alle 5 Minuten
- ✅ User Daten caching

**Context State**:
```typescript
interface AuthState {
  isAuthenticated: boolean;    // Ist User eingeloggt?
  user: User | null;           // User Daten vom Backend
  token: string | null;        // JWT Token
  isLoading: boolean;          // Loading State
}
```

**Context Funktionen**:
```typescript
interface AuthContextType {
  ...AuthState;
  login(username: string, password: string): Promise<void>;
  logout(): void;
  checkAuth(): Promise<void>;
}
```

**Verwendung in Components**:
```tsx
import { useAuth } from "@/contexts/AuthContext";

function MyComponent() {
  const { isAuthenticated, user, login, logout } = useAuth();

  // ...
}
```

**Automatische Features**:
- Token wird beim App-Start aus localStorage geladen
- Token Expiry wird alle 5 Minuten geprüft
- Bei abgelaufenem Token erfolgt automatischer Logout
- Bei ungültigem Token (401) erfolgt automatischer Logout

---

### 4. Login Component (`app/app-ui/Login.tsx`)

**Änderungen**:
- ✅ Integration mit `useAuth()` Hook
- ✅ Echte Backend API Calls (ersetzt Mock-Timeout)
- ✅ Error State für Fehlermeldungen
- ✅ UI Feedback bei Login-Fehlern

**Neue Imports**:
```tsx
import { useAuth } from "@/contexts/AuthContext";
```

**Neue States**:
```tsx
const [error, setError] = useState<string | null>(null);
const { login } = useAuth();
```

**Login Flow**:
1. User gibt Username + Password ein
2. Component ruft `login()` aus AuthContext auf
3. AuthContext ruft Backend API auf
4. Bei Erfolg: Token wird gespeichert, User Daten geladen
5. Bei Fehler: Error Message wird angezeigt
6. `onLoginSuccess()` Callback wird aufgerufen

**Error Handling**:
- 401 Unauthorized: "Incorrect username or password"
- 422 Validation Error: Zeigt Validation Details
- Network Error: "Login fehlgeschlagen"

---

### 5. Main Page (`app/page.tsx`)

**Änderungen**:
- ✅ Wrapper mit AuthProvider
- ✅ Authentication Guard (nur eingeloggte User sehen Dashboard)
- ✅ Loading State während Token validiert wird
- ✅ Automatische Login-Redirect

**Neue Struktur**:
```tsx
export default function Home() {
  return (
    <AuthProvider>      {/* NEU: Wrapper für gesamte App */}
      <HomeContent />
    </AuthProvider>
  );
}

function HomeContent() {
  const { isAuthenticated, isLoading, logout } = useAuth();

  // Loading State
  if (isLoading) return <LoadingScreen />;

  // Not Authenticated -> Login Screen
  if (!isAuthenticated) return <Login />;

  // Authenticated -> Dashboard
  return <Dashboard />;
}
```

**Flow**:
1. App startet → `isLoading = true`
2. AuthContext lädt Token aus localStorage
3. Token wird validiert (Backend Call zu `/users/me/`)
4. Bei gültigem Token: Dashboard wird angezeigt
5. Bei ungültigem Token: Login Screen wird angezeigt

---

### 6. Dashboard Component (`app/app-ui/Dashboard.tsx`)

**Änderungen**:
- ✅ Zugriff auf User Daten über `useAuth()`
- ✅ Optional: User Info Display (aktuell auskommentiert)

**Neue Imports**:
```tsx
import { useAuth } from "@/contexts/AuthContext";
```

**Verwendung**:
```tsx
const { user } = useAuth();

// User enthält:
// - username: string
// - email: string | null
// - full_name: string | null
// - disabled: boolean | null
```

---

## 🔐 Security Considerations

### Token Storage
- **Aktuell**: localStorage (einfach, aber anfällig für XSS)
- **Production**: Erwägen Sie httpOnly Cookies für bessere Security

### Token Expiry
- **Backend**: 30 Minuten (siehe `ACCESS_TOKEN_EXPIRE_MINUTES` in `backend/src/routes/users.py`)
- **Frontend**: Automatischer Check alle 5 Minuten
- **Bei Expiry**: Automatischer Logout, User muss sich neu einloggen

### CORS
- Backend ist konfiguriert für: `http://localhost:3000`
- Production: CORS für Production Domain konfigurieren

### HTTPS
- **Development**: HTTP ist OK
- **Production**: ZWINGEND HTTPS verwenden für Token-Übertragung

### Password Hashing
- Backend verwendet **Argon2id** (sehr sicher)
- Siehe `pwdlib[argon2]` in `backend/requirements.txt`

### Secret Key
- ⚠️ **WICHTIG**: Backend SECRET_KEY ist hardcoded in `users.py`
- **Production**: SECRET_KEY MUSS in Environment Variable ausgelagert werden!

---

## 🧪 Test Credentials

Das Backend hat einen Test-User in `fake_users_db`:

```
Username: johndoe
Password: secret
```

**Hinweis**: In Production sollte dies durch eine echte Datenbank ersetzt werden!

---

## 🌐 Environment Variables

### Frontend (`frontend/nextjs/.env.local`)

```env
# Backend URL
NEXT_PUBLIC_BACKEND_URL=http://localhost:8080
```

**Wichtig**:
- `NEXT_PUBLIC_` Prefix ist notwendig für Client-Side Code in Next.js
- Ohne diese Variable wird `http://localhost:8080` als Fallback verwendet

### Backend (aktuell keine .env)

Sollte in Production haben:
```env
SECRET_KEY=<sicherer-random-key>
POSTGRES_URL=postgresql://user:password@host:5432/db
```

---

## 📋 API Endpoints

### Authentication

#### POST `/users/token`
**Beschreibung**: Login mit Username + Password

**Request**:
```
Content-Type: application/x-www-form-urlencoded

grant_type=password&username=johndoe&password=secret
```

**Response (200)**:
```json
{
  "access_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
  "token_type": "bearer"
}
```

**Response (401)**:
```json
{
  "detail": "Incorrect username or password"
}
```

**Response (422)**:
```json
{
  "detail": [
    {
      "loc": ["body", "username"],
      "msg": "field required",
      "type": "value_error.missing"
    }
  ]
}
```

---

#### GET `/users/me/`
**Beschreibung**: Aktuellen User abrufen

**Headers**:
```
Authorization: Bearer <token>
```

**Response (200)**:
```json
{
  "username": "johndoe",
  "email": "johndoe@example.com",
  "full_name": "John Doe",
  "disabled": false
}
```

**Response (401)**:
```json
{
  "detail": "Could not validate credentials"
}
```

---

### Transactions

#### GET `/transactions/`
**Beschreibung**: Alle Transaktionen abrufen

**Headers**:
```
Authorization: Bearer <token>
```

**Query Parameters**:
- `client_id` (optional): Filter nach Client ID

**Response (200)**:
```json
[
  {
    "id": "1",
    "amount": 1000.50,
    // ... weitere Transaction Felder
  }
]
```

---

#### GET `/transactions/{id}`
**Beschreibung**: Einzelne Transaktion abrufen

**Headers**:
```
Authorization: Bearer <token>
```

**Response (200)**:
```json
{
  "id": "1",
  "amount": 1000.50,
  // ... weitere Transaction Felder
}
```

---

## 🔄 Authentication Flow

### Login Flow
```
1. User öffnet App
   ↓
2. App zeigt Login Screen (kein Token in localStorage)
   ↓
3. User gibt Username + Password ein
   ↓
4. Login.tsx ruft useAuth().login() auf
   ↓
5. AuthContext → auth.ts → api.ts
   ↓
6. POST /users/token mit OAuth2 Form Data
   ↓
7. Backend validiert Credentials
   ↓
8. Backend generiert JWT Token (30min Expiry)
   ↓
9. Frontend speichert Token in localStorage
   ↓
10. Frontend ruft GET /users/me/ auf
   ↓
11. User Daten werden in AuthContext gespeichert
   ↓
12. isAuthenticated = true
   ↓
13. App zeigt Dashboard
```

### Page Reload Flow
```
1. User lädt Seite neu (F5)
   ↓
2. AuthContext wird initialisiert
   ↓
3. checkAuth() lädt Token aus localStorage
   ↓
4. Token Expiry wird geprüft
   ↓
5. Wenn nicht abgelaufen: GET /users/me/
   ↓
6. User Daten werden geladen
   ↓
7. isAuthenticated = true
   ↓
8. Dashboard wird angezeigt (ohne erneuten Login!)
```

### Logout Flow
```
1. User klickt "Sign Out"
   ↓
2. handleLogout() ruft authLogout() auf
   ↓
3. Token wird aus localStorage entfernt
   ↓
4. AuthContext State wird zurückgesetzt
   ↓
5. isAuthenticated = false
   ↓
6. App zeigt Login Screen
```

### Auto-Logout (Token Expiry)
```
1. Timer läuft alle 5 Minuten
   ↓
2. isTokenExpired() wird aufgerufen
   ↓
3. JWT exp Claim wird geprüft
   ↓
4. Wenn abgelaufen: logout() wird aufgerufen
   ↓
5. User wird zum Login Screen weitergeleitet
```

---

## 🛠️ Troubleshooting

### Problem: "useAuth must be used within an AuthProvider"
**Lösung**: Stelle sicher, dass alle Components die `useAuth()` verwenden innerhalb von `<AuthProvider>` sind.

### Problem: "CORS Error" im Browser Console
**Lösung**:
- Backend muss laufen auf Port 8080
- Frontend muss laufen auf Port 3000
- Backend CORS ist konfiguriert in `backend/src/main.py`

### Problem: Token wird nicht gespeichert
**Lösung**:
- Prüfe Browser Console auf Fehler
- Prüfe ob localStorage verfügbar ist (nicht im Incognito Mode blockiert)
- Prüfe Network Tab: Wird `/users/token` erfolgreich aufgerufen?

### Problem: "Incorrect username or password"
**Lösung**:
- Stelle sicher, dass Backend läuft
- Verwende Test Credentials: `johndoe` / `secret`
- Prüfe Backend Logs für Details

### Problem: Nach Page Reload logout
**Lösung**:
- Token könnte abgelaufen sein (30min Expiry)
- Backend könnte nicht erreichbar sein
- Token könnte manuell aus localStorage gelöscht worden sein

---

## 📦 Dependencies

### Frontend
- **React**: State Management
- **Next.js**: Framework (App Router)
- **@iconify/react**: Icons
- **TypeScript**: Type Safety

**Keine zusätzlichen Dependencies benötigt!**
- Verwendet native `fetch` API
- Verwendet native `localStorage` API

### Backend
- **FastAPI**: Web Framework
- **pydantic**: Data Validation
- **pyjwt**: JWT Token Generation
- **pwdlib[argon2]**: Password Hashing
- **python-multipart**: OAuth2 Form Data Parsing

---

## 🚀 Nächste Schritte

### Verbesserungen für Production:

1. **Token Refresh**
   - Implementiere Refresh Tokens für längere Sessions
   - Backend Endpoint: `POST /users/token/refresh`

2. **Remember Me**
   - Checkbox im Login für längere Token Expiry
   - Token Expiry: 7 Tage statt 30 Minuten

3. **Password Reset**
   - Endpoint: `POST /users/password/reset`
   - Email Integration

4. **2FA (Two-Factor Authentication)**
   - TOTP Integration (Google Authenticator)

5. **Session Management**
   - Aktive Sessions anzeigen
   - Remote Logout für alle Sessions

6. **Database Integration**
   - Ersetze `fake_users_db` mit PostgreSQL
   - User Registration Endpoint

7. **Security Headers**
   - CSP (Content Security Policy)
   - X-Frame-Options
   - HTTPS Strict Transport Security

8. **Rate Limiting**
   - Schutz vor Brute Force Attacks
   - Max 5 Login Attempts pro Minute

---

## 📝 Code Style

### Kommentare
- **NEU**: Markiert neue/geänderte Code-Teile
- Deutsche Kommentare für bessere Verständlichkeit
- Ausführliche Erklärungen bei komplexen Funktionen

### TypeScript
- Strikte Type Definitions
- Interfaces für alle API Responses
- No `any` (außer bei Transaktionen - noch kein Schema vorhanden)

### Error Handling
- Try-Catch Blöcke bei allen API Calls
- Aussagekräftige Error Messages
- Error State im UI

---

## 📚 Weitere Ressourcen

- [FastAPI OAuth2 Documentation](https://fastapi.tiangolo.com/tutorial/security/oauth2-jwt/)
- [JWT.io - Token Decoder](https://jwt.io/)
- [Next.js Environment Variables](https://nextjs.org/docs/app/building-your-application/configuring/environment-variables)
- [React Context API](https://react.dev/reference/react/createContext)

---

## ✅ Implementierungs-Checkliste

- [x] API Client erstellt (`lib/api.ts`)
- [x] Auth Service erstellt (`lib/auth.ts`)
- [x] AuthContext erstellt (`contexts/AuthContext.tsx`)
- [x] Login Component integriert
- [x] Main Page mit AuthProvider Wrapper
- [x] Dashboard mit User Info
- [x] Error Handling implementiert
- [x] Token Expiry Checking
- [x] Auto-Logout bei ungültigem Token
- [x] Loading States
- [x] TypeScript Types
- [x] Ausführliche Kommentare
- [x] README geschrieben

---

**Version**: 1.0
**Datum**: 2025-12-04
**Autor**: Claude Code
