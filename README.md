# CRM Sentinel

An AML (Anti-Money Laundering) transaction monitoring platform that links unstructured CRM notes to financial transactions using a hybrid rule-based and semantic matching engine.

Built as a multi-service project for the ETH *Fundamentals of Web Engineering* course.

## Architecture

```
┌──────────┐     ┌──────────┐     ┌────────────────────┐
│ Frontend │────▶│ Backend  │────▶│ Matching           │
│ Next.js  │     │ FastAPI  │     │ Microservice       │
│ (3000)   │     │ (8080)   │     │ (5173)             │
└──────────┘     └────┬─────┘     └────────────────────┘
                      │
                      ▼
                 ┌──────────┐
                 │PostgreSQL│
                 │  (5432)  │
                 └──────────┘
```

| Service | Tech | Port | Purpose |
|---------|------|------|---------|
| `frontend/` | Next.js 15 + React + Tailwind | 3000 | Analyst UI for clients, transactions, notes, alerts |
| `backend/` | FastAPI (Python) | 8080 | REST API, AML rule engine, DB access, alert generation |
| `microservice/` | FastAPI + sentence-transformers | 5173 | Stateless transaction ↔ note matching engine |
| `postgres` | PostgreSQL 15 | 5432 | Persistent storage |

## Features

- **AML rule engine** — configurable rules for structuring, round amounts, high-risk jurisdictions, velocity, etc.
- **Hybrid matching** — combines keyword/date-proximity heuristics with `all-MiniLM-L6-v2` semantic embeddings.
- **Bulk upload** — CSV import for transactions and CRM notes.
- **Alert workflow** — auto-clearing rules plus manual review/close in the UI.
- **Auth** — JWT-based login and protected routes.
- **Kubernetes-ready** — Helm charts under `helm/` and a GitLab CI pipeline.

## Quick Start (Docker Compose)

Prerequisites: Docker + Docker Compose.

```bash
docker-compose up --build
```

Wait ~2–3 minutes (the microservice downloads its embedding model on first build), then open:

- Frontend: <http://localhost:3000>
- Backend API docs: <http://localhost:8080/docs>
- Microservice docs: <http://localhost:5173/v1/docs>
- Postgres: `localhost:5432` (db `db_test`, user `user_test`)

Stop everything:

```bash
docker-compose down          # keep volumes
docker-compose down -v       # also wipe the database
```

See [`DOCKER_COMPOSE_GUIDE.md`](DOCKER_COMPOSE_GUIDE.md) and [`QUICK_START.md`](QUICK_START.md) for more.

## Local Development

Each service can be run on its own — useful for hot-reload and debugging.

### Backend

```bash
cd backend
pip install -r requirements.txt
cd src
uvicorn main:app --reload --port 8080
```

### Microservice

```bash
cd microservice
pip install -r requirements.txt
cd src
uvicorn main:app --reload --port 5173
```

### Frontend

```bash
cd frontend/nextjs
npm install
npm run dev
```

## Repository Layout

```
.
├── backend/                  # FastAPI backend, AML rules, DB schema
│   ├── db/                   # DDL.sql, DML.sql
│   └── src/
│       ├── routes/           # /clients, /transactions, /notes, /alerts, /users
│       └── utils/            # alert_engine, aml_rules, currency_converter
├── frontend/nextjs/          # Next.js app (App Router)
├── microservice/             # Stateless matching service (see microservice/README.md)
├── crm-sentinel-analysis/    # Offline evaluation scripts + datasets
├── helm/                     # Kubernetes Helm values
├── docker-compose.yml        # Local orchestration
└── .gitlab-ci.yml            # CI/CD pipeline
```

## Documentation

- [`QUICK_START.md`](QUICK_START.md) — one-command local setup
- [`DOCKER_COMPOSE_GUIDE.md`](DOCKER_COMPOSE_GUIDE.md) — Docker Compose details
- [`microservice/README.md`](microservice/README.md) — full matching engine docs
- [`DATABASE_RESET_GUIDE.md`](DATABASE_RESET_GUIDE.md) — reset / re-seed the DB
- [`K8S_DATABASE_DEPLOYMENT_ANALYSIS.md`](K8S_DATABASE_DEPLOYMENT_ANALYSIS.md) — k8s deployment notes

## License

Coursework project — not licensed for production use.
