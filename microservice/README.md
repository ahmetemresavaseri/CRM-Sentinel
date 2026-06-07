# CRM Sentinel – Matching Microservice
### Complete Implementation Guide & Documentation

---

## Table of Contents

1. [Overview](#1-overview)
2. [System Architecture](#2-system-architecture)
3. [CRM Data Model](#3-crm-data-model)
4. [Course Requirements](#4-course-requirements)
5. [Implemented Features](#5-implemented-features)
6. [Scoring Methods](#6-scoring-methods)
7. [API Endpoints](#7-api-endpoints)
8. [Local Development Setup](#8-local-development-setup)
9. [Testing Guide](#9-testing-guide)
10. [Project Structure](#10-project-structure)
11. [Deployment](#11-deployment)

---

## 1. Overview

The Matching Microservice is an independent, stateless FastAPI service that determines how well CRM notes match financial transactions. It performs semantic matching using two complementary approaches:

1. **Rule-based matching** (Phase 1) - Fast keyword and metadata analysis
2. **Semantic embeddings** (Phase 2) - Deep learning-based understanding of meaning

The microservice is:
- **Data-agnostic**: No database connections, pure processing
- **Stateless**: Each request is independent
- **Independently deployable**: Runs in its own container/pod
- **Production-ready**: Includes health checks, versioning, and comprehensive API docs

**Base URL (Production):**
```
https://api.<repository>.fwe25.ivia.ch/v1/
```

**Base URL (Local Development):**
```
http://localhost:5173/v1/
```

---

## 2. System Architecture

This microservice is one of four components in the CRM Sentinel system:

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
                 └──────────┘
```

**Responsibilities:**
- **Frontend**: User interface for transaction review
- **Backend**: Orchestration, database access, business logic, **pre-filtering**
- **PostgreSQL**: Persistent data storage
- **Matching Microservice** (THIS): Pure semantic matching engine

**Data Flow:**
1. Backend filters transactions and CRM notes by `client_id` and date window (±5 days)
2. Backend sends **pre-filtered** data to this microservice
3. Microservice computes match scores using text analysis only
4. Backend stores scores and applies AML rules
5. Frontend displays matches to users

**Important:** This microservice does NOT access the database. All filtering happens in the backend before calling this service.

---

## 3. CRM Data Model

### Minimal CRM Note Schema

The real system operates with **minimal CRM metadata**. Each CRM note contains **only**:

- `client_id` (INT) - Client identifier
- `date` (DATE) - Date the note was created
- `content` (TEXT) - **Unstructured free text only**

### Critical Implications

**No Structured Fields Available:**
- ❌ No `note_id` (backend uses database IDs, not sent to microservice)
- ❌ No `client_name` field
- ❌ No `counterparty` field
- ❌ No `transaction_id` references
- ❌ No `note_type` or `author` fields
- ❌ No `amount` field
- ❌ No `direction` indicator

**All Information Must Be Inferred From Free Text:**

The `content` field is the **only source** of semantic information. This means:

1. **Counterparty detection**: Must search for entity names within free text
2. **Amount detection**: Must extract numbers from text and match to transaction amounts
3. **Direction inference**: Must identify keywords like "payment", "received", "expense", "income"
4. **Transaction type**: Must infer from words like "wire transfer", "card payment", etc.

**Examples of Real CRM Notes:**
```
"Client mentioned a planned investment transfer later this week."
"Discussed upcoming property purchase financing needs."
"Client expects incoming wire from overseas account."
"Large expense for quarterly tax payment due next Monday."
```

Notice: No structured data, no explicit transaction IDs, no formatted amounts.

### Pre-Filtering by Backend

Before calling this microservice, the backend:
1. Filters notes by `client_id` (only notes for the transaction's client)
2. Filters notes by date window (typically ±3-5 days from transaction date)
3. Sends only the filtered subset to this microservice

This microservice performs **only semantic/text-based matching** on the pre-filtered data.

---

## 4. Course Requirements

✅ **All mandatory requirements satisfied:**

- ✅ Implemented with FastAPI
- ✅ Versioned API under `/v1/`
- ✅ OpenAPI documentation at `/v1/docs` and `/v1/redoc`
- ✅ Runs on port 5173
- ✅ Stateless and reusable
- ✅ Complete typed schemas (Pydantic models)
- ✅ Example requests and responses in documentation
- ✅ Project description and functional overview
- ✅ Health check endpoint for Kubernetes liveness probes
- ✅ Independently deployable via Docker + Helm

---

## 5. Implemented Features

### Phase 1: Rule-Based Matching ✅
- **Keyword overlap analysis** using Jaccard similarity from free text
- **Date proximity scoring** with linear decay over 7 days
- **Amount detection** by extracting numbers from note text
- **Direction inference** by detecting keywords ("payment", "received", "expense", "income")
- **Counterparty detection** by searching for entity names in text
- **Weighted scoring** combining all text-based signals
- **Human-readable explanations** for each match

**Key Point:** All detection happens through **text analysis only** - no structured fields available.

### Phase 2: Semantic Embeddings ✅
- **Sentence transformer model** (`all-MiniLM-L6-v2`, 80MB)
- **Semantic similarity** via cosine distance on embeddings
- **Contextual understanding** of synonyms and related concepts from free text
- **Enhanced scoring** combining semantics with date proximity
- **Performance optimized** for CPU-only execution
- **Graceful fallback** to rule-based if embeddings unavailable

### Additional Features ✅
- **Method selection**: Choose scoring method via API
- **A/B testing endpoint**: Compare methods side-by-side (for testing/debugging only)
- **Agreement metrics**: Quantify how methods align
- **Interactive documentation**: Swagger UI with "Try it out"
- **CORS support**: Configurable cross-origin requests
- **Auto-reload**: Development mode with hot reloading

---

## 6. Scoring Methods

The microservice supports multiple scoring methods, selectable via the `scoring_method` field in the request config.

### Simple Method (Rule-Based)

**How it works:**
1. Extracts keywords from transaction description and note free text
2. Computes Jaccard similarity (keyword overlap)
3. Scores date proximity (closer = higher score)
4. Searches note text for numbers matching transaction amount
5. Searches note text for direction keywords ("payment", "received", "expense", "income")
6. Searches note text for counterparty entity name mentions
7. Combines all text-based signals with weighted average

**Weights:**
- Keyword overlap: 35%
- Date proximity: 30%
- Amount mention in text: 10%
- Direction keywords in text: 10%
- Counterparty name in text: 10%

**Best for:**
- Exact keyword matches (e.g., "wire transfer" appears in both)
- When counterparty names appear verbatim in note text
- When amounts are explicitly mentioned in note text
- Fast processing without ML overhead

**Limitations:**
- Misses synonyms ("investment" vs "capital allocation")
- Requires explicit keyword overlap
- Cannot understand paraphrased content

**Example scores:**
- High (0.7+): Note explicitly mentions transaction details
- Medium (0.4-0.7): Some keyword overlap + close dates
- Low (<0.4): Few common keywords or distant dates

---

### Semantic Method (Embedding-Based)

**How it works:**
1. Converts transaction to natural language description
2. Converts note free text to embedding vector (384 dimensions)
3. Computes cosine similarity between embeddings
4. Still performs text-based amount/direction/counterparty detection
5. Combines semantic similarity with date proximity and text signals
6. Generates explanations with similarity scores

**Weights:**
- Semantic similarity (from free text): 60%
- Date proximity: 25%
- Amount mention in text: 5%
- Direction keywords in text: 5%
- Counterparty name in text: 5%

**Best for:**
- Understanding synonyms from free text ("investment" ≈ "capital allocation")
- Conceptual relationships ("property" ≈ "real estate")
- Paraphrased descriptions without exact keywords
- Natural language CRM notes

**Advantages over Simple Method:**
- Understands meaning, not just keywords
- Handles paraphrasing and synonyms
- Better for real-world unstructured CRM notes
- More robust to varied writing styles

**Example improvement:**
```
Transaction: "Wire transfer to Real Estate Holdings Inc"
Note: "Client wants to acquire property downtown"

Simple method:  0.21 (weak - no keyword overlap in free text)
Semantic method: 0.68 (strong - understands meaning from free text)
```

---

### Auto Method (Default)

**How it works:**
1. Tries semantic method first
2. Falls back to simple method if embeddings unavailable
3. Always returns results

**Best for:**
- Production use (graceful degradation)
- When you're not sure which method to use
- Maximizing quality while maintaining reliability

---

### Comparison Mode

**How it works:**
1. Runs BOTH methods independently
2. Returns results from both
3. Calculates agreement metrics:
   - `top_match_agrees`: Do both pick the same top note?
   - `agreement_score`: Jaccard similarity of top-k note sets (0-1)

**Best for:**
- **Quality evaluation and debugging**
- **A/B testing during development**
- **Demonstrating Phase 2 improvements**
- **NOT for production use by backend**

**Important:** The `/v1/match/compare` endpoint is an **optional analysis tool** intended for:
- Development and testing
- Quality assurance
- Performance evaluation
- Demonstrating improvements to stakeholders

The production backend should use `/v1/match` or `/v1/match/batch` with a single scoring method.

---

## 7. API Endpoints

### Health Check
```
GET /health
```

Unversioned endpoint for Kubernetes liveness probes.

**Response:**
```json
{
  "status": "ok"
}
```

---

### Single Transaction Matching
```
POST /v1/match
```

Match one transaction against multiple CRM notes.

**Request Body:**
```json
{
  "transaction": {
    "transaction_id": "TR00000001",
    "client_id": 1,
    "date": "2025-08-26",
    "amount_chf": 5065.35,
    "original_currency": "GBP",
    "direction": "debit",
    "type": "wire_transfer",
    "counterparty_bank": "GGOCJP03",
    "counterparty_entity": "International Investments"
  },
  "notes": [
    {
      "note_index": 0,
      "client_id": 1,
      "date": "2025-08-20",
      "content": "Client mentioned a planned investment transfer later this week."
    },
    {
      "note_index": 1,
      "client_id": 1,
      "date": "2025-08-26",
      "content": "Discussed large wire payment to International Investments for portfolio allocation."
    }
  ],
  "config": {
    "return_top_k": 5,
    "use_llm_refinement": false,
    "scoring_method": "auto"
  }
}
```

**Note Schema:** Each note contains only `note_index`, `client_id`, `date`, and `content` (free text).

**Response:**
```json
{
  "matches": [
    {
      "note_index": 1,
      "score": 0.82,
      "explanation": "Strong semantic match - very high similarity (0.85) - same day."
    },
    {
      "note_index": 0,
      "score": 0.45,
      "explanation": "Moderate semantic match - high similarity (0.62) - within a week."
    }
  ]
}
```

**Config Options:**
- `return_top_k`: Max number of matches to return (default: 5)
- `use_llm_refinement`: **Not yet implemented** - reserved for future LLM-based explanation enhancement
- `scoring_method`: `"auto"` (default), `"semantic"`, `"simple"`, or `"both"` (not recommended for production)

---

### Batch Transaction Matching
```
POST /v1/match/batch
```

Match multiple transactions against a shared set of notes.

**Request Body:**
```json
{
  "transactions": [
    {
      "transaction_id": "TR00000001",
      "client_id": 1,
      "date": "2025-08-26",
      "amount_chf": 5065.35,
      "original_currency": "GBP",
      "direction": "debit",
      "type": "wire_transfer",
      "counterparty_bank": "GGOCJP03",
      "counterparty_entity": "International Investments"
    }
  ],
  "notes": [
    {
      "note_index": 0,
      "client_id": 1,
      "date": "2025-08-20",
      "content": "Client mentioned upcoming investment activity."
    }
  ],
  "config": {
    "return_top_k": 3,
    "scoring_method": "semantic"
  }
}
```

**Response:**
```json
{
  "results": {
    "TR00000001": [
      {"note_index": 0, "score": 0.68, "explanation": "Moderate semantic match - high similarity (0.71) - within a week."}
    ]
  }
}
```

---

### Method Comparison (Testing/Debugging Only)
```
POST /v1/match/compare
```

**Purpose:** Compare simple and semantic methods side-by-side for quality evaluation.

**Production Use:** ❌ **NOT recommended for production backend**

**Intended for:**
- Development testing
- Quality assurance
- Performance benchmarking
- Demonstrating improvements

**Request Body:** Same as `/v1/match` (config.scoring_method is ignored)

**Response:**
```json
{
  "simple_method": {
    "matches": [
      {"note_index": 0, "score": 0.35, "explanation": "Weak match - 3 day(s) apart - mentions: transfer."}
    ]
  },
  "semantic_method": {
    "matches": [
      {"note_index": 1, "score": 0.78, "explanation": "Strong semantic match - high similarity (0.82) - same day."}
    ]
  },
  "comparison": {
    "simple_method_available": true,
    "semantic_method_available": true,
    "top_match_agrees": false,
    "agreement_score": 0.0
  }
}
```

---

## 8. Local Development Setup

### Prerequisites

- Python 3.11+ (3.13 recommended)
- pip package manager
- 1GB+ free disk space (for ML models)
- 2GB+ free RAM (for model in memory)

### Step 1: Install Dependencies

Navigate to the microservice directory:
```bash
cd microservice
```

Install Python packages:
```bash
pip install -r requirements.txt
```

**Dependencies installed:**
- `fastapi` - Web framework
- `fastapi-versioning` - API versioning
- `uvicorn` - ASGI server
- `pydantic` - Data validation
- `sentence-transformers` - Semantic embeddings
- `torch` - ML framework (CPU version)
- `numpy` - Numerical computing

**First-time setup notes:**
- First install takes ~2-3 minutes (downloads ~200MB)
- `sentence-transformers` will download the model on first run (~80MB)
- Total disk usage: ~300MB

### Step 2: Start the Server

From the `microservice/src` directory:
```bash
cd src
uvicorn main:app --reload --port 5173 --host 0.0.0.0
```

**Expected output:**
```
INFO:     Will watch for changes in these directories: ['/path/to/microservice/src']
INFO:     Uvicorn running on http://0.0.0.0:5173 (Press CTRL+C to quit)
INFO:     Started reloader process [12345] using WatchFiles
INFO:     Preloading embedding model...
INFO:     Loading embedding model: all-MiniLM-L6-v2
INFO:     Model loaded successfully: all-MiniLM-L6-v2
INFO:     Started server process [12346]
INFO:     Waiting for application startup.
INFO:     Application startup complete.
```

**Server is ready when you see:** `Application startup complete.`

**What the flags mean:**
- `--reload`: Auto-restart on code changes (dev mode only)
- `--port 5173`: Listen on port 5173
- `--host 0.0.0.0`: Accept connections from any network interface

### Step 3: Verify Installation

Check health endpoint:
```bash
curl http://localhost:5173/health
```

Expected response:
```json
{"status": "ok"}
```

### Step 4: Open Interactive Documentation

Open your browser and navigate to:
```
http://localhost:5173/v1/docs
```

You should see the Swagger UI with all endpoints listed.

Alternative documentation UI:
```
http://localhost:5173/v1/redoc
```

---

## 9. Testing Guide

### Using the Interactive Documentation (/v1/docs)

**Best way to test the API interactively!**

#### Step 1: Open Swagger UI
Navigate to `http://localhost:5173/v1/docs`

#### Step 2: Test Simple Method

1. Find the `POST /v1/match` endpoint
2. Click "Try it out"
3. Paste this request body:

```json
{
  "transaction": {
    "transaction_id": "TR00000001",
    "client_id": 1,
    "date": "2025-08-26",
    "amount_chf": 5000.00,
    "original_currency": "CHF",
    "direction": "debit",
    "type": "wire_transfer",
    "counterparty_bank": "GGOCJP03",
    "counterparty_entity": "Investment Fund LLC"
  },
  "notes": [
    {
      "note_index": 0,
      "client_id": 1,
      "date": "2025-08-25",
      "content": "Client wants to allocate capital to portfolio."
    },
    {
      "note_index": 1,
      "client_id": 1,
      "date": "2025-08-26",
      "content": "Wire transfer to Investment Fund LLC for 5000 CHF processed today."
    }
  ],
  "config": {
    "return_top_k": 5,
    "scoring_method": "simple"
  }
}
```

4. Click "Execute"
5. Check the response - note_index 1 should have high score (explicit mention in free text)

#### Step 3: Test Semantic Method

1. Same endpoint, click "Try it out" again
2. Change `"scoring_method": "simple"` to `"scoring_method": "semantic"`
3. Click "Execute"
4. Compare scores - semantic should give higher confidence for note_index 0 (understands "allocate capital" ≈ "investment transfer")

#### Step 4: Compare Methods Side-by-Side

1. Find the `POST /v1/match/compare` endpoint
2. Click "Try it out"
3. Paste the same request body (scoring_method is ignored)
4. Click "Execute"
5. View both results and comparison metrics

**What to look for:**
- `top_match_agrees`: Do both methods pick the same top note?
- `agreement_score`: How much do the top-k results overlap? (1.0 = perfect agreement)
- Score differences: Semantic usually gives higher scores for paraphrased content in free text

#### Step 5: Test with Challenging Example

Try this example where semantic matching excels (free text with no keyword overlap):

```json
{
  "transaction": {
    "transaction_id": "TR00000002",
    "client_id": 1,
    "date": "2025-09-15",
    "amount_chf": 12500.00,
    "original_currency": "USD",
    "direction": "debit",
    "type": "wire_transfer",
    "counterparty_bank": "N/A",
    "counterparty_entity": "Real Estate Holdings Inc"
  },
  "notes": [
    {
      "note_index": 0,
      "client_id": 1,
      "date": "2025-09-14",
      "content": "Client inquired about property acquisition financing options."
    },
    {
      "note_index": 1,
      "client_id": 1,
      "date": "2025-09-15",
      "content": "Discussed quarterly dividend distribution timeline."
    }
  ],
  "config": {
    "return_top_k": 5
  }
}
```

**Use the `/v1/match/compare` endpoint for this test!**

Expected result:
- Simple method: Low scores (~0.2-0.3), struggles without keyword overlap in free text
- Semantic method: Higher scores (~0.5-0.6), understands "real estate" ≈ "property acquisition" from free text

---

### Using cURL (Command Line Testing)

#### Test Health Check
```bash
curl http://localhost:5173/health
```

#### Test Simple Method
```bash
curl -X POST http://localhost:5173/v1/match \
  -H "Content-Type: application/json" \
  -d '{
    "transaction": {
      "transaction_id": "TR001",
      "client_id": 1,
      "date": "2025-08-26",
      "amount_chf": 5000.00,
      "original_currency": "CHF",
      "direction": "debit",
      "type": "wire_transfer",
      "counterparty_bank": "N/A",
      "counterparty_entity": "Test Entity"
    },
    "notes": [
      {
        "note_index": 0,
        "client_id": 1,
        "date": "2025-08-25",
        "content": "Client mentioned wire transfer of 5000 CHF to Test Entity."
      }
    ],
    "config": {
      "scoring_method": "simple"
    }
  }'
```

#### Test Semantic Method
```bash
curl -X POST http://localhost:5173/v1/match \
  -H "Content-Type: application/json" \
  -d '{
    "transaction": {...},
    "notes": [{...}],
    "config": {
      "scoring_method": "semantic"
    }
  }'
```

---

### Using Python Requests

```python
import requests

# Base URL
base_url = "http://localhost:5173/v1"

# Request payload
payload = {
    "transaction": {
        "transaction_id": "TR001",
        "client_id": 1,
        "date": "2025-08-26",
        "amount_chf": 5000.00,
        "original_currency": "CHF",
        "direction": "debit",
        "type": "wire_transfer",
        "counterparty_bank": "N/A",
        "counterparty_entity": "Investment LLC"
    },
    "notes": [
        {
            "note_index": 0,
            "client_id": 1,
            "date": "2025-08-25",
            "content": "Client wants to invest capital in fund."
        }
    ],
    "config": {
        "scoring_method": "semantic"
    }
}

# Send request
response = requests.post(f"{base_url}/match", json=payload)
print(response.json())
```

---

### Performance Benchmarks

**Simple Method:**
- First request: ~50ms
- Subsequent: ~10-20ms
- No model loading overhead

**Semantic Method:**
- First request: ~2-3 seconds (model loading)
- Subsequent: ~50-100ms per transaction
- Scales linearly with number of notes

**Hardware tested on:**
- MacBook Air M2 (8GB RAM)
- CPU-only execution (no GPU)

---

## 10. Project Structure

```
microservice/
│
├── README.md                    # This file
├── requirements.txt             # Python dependencies
├── Dockerfile                   # Docker container definition
│
└── src/                         # Source code
    ├── main.py                  # FastAPI app + versioning
    │
    ├── models/
    │   ├── __init__.py
    │   └── schemas.py           # Pydantic models (request/response)
    │
    ├── routes/
    │   ├── __init__.py
    │   ├── dummy.py             # Test endpoint (can be removed)
    │   └── match.py             # Main matching endpoints
    │
    └── logic/
        ├── __init__.py
        ├── scoring.py           # Scoring functions (simple + semantic)
        ├── embeddings.py        # Sentence transformer model handling
        └── pipeline.py          # Orchestration logic
```

### Key Files

**main.py**
- FastAPI app initialization
- CORS middleware configuration
- API versioning setup
- Health check endpoint

**models/schemas.py**
- `Transaction`: Financial transaction schema
- `CRMNote`: CRM note schema (note_index, client_id, date, content only)
- `MatchConfig`: Configuration options
- `MatchResult`: Single match result
- `MatchResponse`: Match endpoint response
- `MatchComparisonResponse`: Comparison endpoint response

**routes/match.py**
- `POST /v1/match` - Single transaction matching
- `POST /v1/match/batch` - Batch matching
- `POST /v1/match/compare` - Method comparison (testing only)

**logic/scoring.py**
- `compute_simple_match_score()` - Rule-based scoring from free text
- `compute_semantic_match_score()` - Embedding-based scoring
- `generate_explanation()` - Human-readable explanations
- Helper functions for text-based amount/direction/counterparty detection

**logic/embeddings.py**
- `get_embedding_model()` - Lazy model loading (singleton)
- `embed_text()` - Convert free text to vector
- `compute_cosine_similarity()` - Similarity between vectors
- `create_transaction_embedding_text()` - Format transaction for embedding
- `create_note_embedding_text()` - Format note free text for embedding

**logic/pipeline.py**
- `match_transaction_to_notes()` - Main orchestration
- `match_transaction_to_notes_simple()` - Simple method
- `match_transaction_to_notes_semantic()` - Semantic method
- `match_transaction_to_notes_both()` - Comparison mode (testing only)
- `match_batch_transactions_to_notes()` - Batch processing

---

## 11. Deployment

This section covers Docker containerization and Kubernetes deployment for production.

---

### Docker Deployment

#### Build Docker Image

Build the production image with pre-downloaded ML model:

```bash
cd microservice
docker build --target production -t crm-microservice:latest .
```

**Build details:**
- Base image: `python:3.13-slim`
- Multi-stage build for optimization
- Pre-downloads sentence-transformers model (~80MB) at build time
- Final image size: ~800MB (includes PyTorch)
- Build time: ~2-3 minutes (first time)

**Build optimizations included:**
- `.dockerignore` excludes unnecessary files
- `--no-cache-dir` reduces image size
- Sentence-transformers model cached in image (no first-request delay)

#### Run Docker Container Locally

Run the container for local testing:

```bash
docker run -d \
  -p 5173:5173 \
  --name crm-microservice \
  -e CORS_ORIGINS="http://localhost:3000" \
  crm-microservice:latest
```

**Container runs on port 5173** (mapped from host to container)

#### Test the Container

Health check:
```bash
curl http://localhost:5173/health
# Expected: {"status":"ok"}
```

Test semantic matching:
```bash
curl -X POST http://localhost:5173/v1/match \
  -H "Content-Type: application/json" \
  -d '{
    "transaction": {
      "transaction_id": "TR001",
      "client_id": 1,
      "date": "2025-08-26",
      "amount_chf": 5000.00,
      "original_currency": "CHF",
      "direction": "debit",
      "type": "wire_transfer",
      "counterparty_bank": "TEST",
      "counterparty_entity": "Investment Fund"
    },
    "notes": [
      {
        "note_index": 0,
        "client_id": 1,
        "date": "2025-08-25",
        "content": "Client wants to allocate capital to investment portfolio."
      }
    ],
    "config": {
      "scoring_method": "semantic"
    }
  }'
```

#### Stop and Remove Container

```bash
docker stop crm-microservice
docker rm crm-microservice
```

#### View Container Logs

```bash
docker logs crm-microservice
docker logs -f crm-microservice  # Follow logs
```

---

### Kubernetes Deployment

The microservice deploys to Kubernetes via Helm chart.

#### Production URL

```
https://api.<repository>.fwe25.ivia.ch/v1/
```

#### Helm Configuration

The microservice uses [`helm/microservice.yaml`](../helm/microservice.yaml) for configuration:

```yaml
# Port configuration
port: 5173

# Health check endpoint
health: "/health"

# Resource limits (adjusted for ML model)
resources:
  requests:
    memory: "512Mi"
    cpu: "250m"
  limits:
    memory: "2Gi"
    cpu: "1000m"

# Probes (30s initial delay for model loading)
readinessProbe:
  httpGet:
    path: /health
    port: 5173
  initialDelaySeconds: 30
  timeoutSeconds: 5
  periodSeconds: 10
  failureThreshold: 3

livenessProbe:
  httpGet:
    path: /health
    port: 5173
  initialDelaySeconds: 30
  timeoutSeconds: 5
  periodSeconds: 10
  failureThreshold: 5

# Environment variables
extraEnv:
  CORS_ORIGINS: "https://app.fwe25.ivia.ch,http://localhost:3000"
```

#### Resource Requirements

**Why these limits?**
- **Memory**: Sentence-transformers model requires ~400MB loaded in RAM
- **CPU**: 250m (0.25 cores) minimum for reasonable performance
- **Limits**: 2Gi memory prevents OOM, 1 CPU allows burst performance

**Initial delay explained:**
- 30 seconds allows time for:
  - Python interpreter startup (~2s)
  - Package imports (~3s)
  - Model loading from cache (~5s)
  - First request processing (~5s)

#### Deploy to Kubernetes

Deploy using Helm (handled by CI/CD):

```bash
helm upgrade --install crm-sentinel ./helm \
  --set microservice.image.repository=<your-registry>/crm-microservice \
  --set microservice.image.tag=latest
```

#### Verify Deployment

Check pod status:
```bash
kubectl get pods -l app=microservice
```

Check logs:
```bash
kubectl logs -l app=microservice --tail=50
```

Test health endpoint:
```bash
kubectl port-forward svc/microservice 5173:5173
curl http://localhost:5173/health
```

---

### Environment Variables

#### CORS_ORIGINS

Controls which origins can make cross-origin requests.

**Local development:**
```bash
export CORS_ORIGINS="http://localhost:3000,http://127.0.0.1:3000"
```

**Production (Kubernetes):**
Set in `helm/microservice.yaml`:
```yaml
extraEnv:
  CORS_ORIGINS: "https://app.fwe25.ivia.ch,https://frontend.example.com"
```

**Default value:**
If not set, defaults to: `http://localhost:3000,http://127.0.0.1:3000`

---

### Troubleshooting

#### Container won't start
```bash
# Check logs
docker logs crm-microservice

# Common issues:
# - Port 5173 already in use (change host port: -p 5174:5173)
# - Model download failed (check internet connection during build)
```

#### High memory usage
```bash
# Expected: ~500MB-800MB with model loaded
# If higher: Check for memory leaks or multiple model instances
docker stats crm-microservice
```

#### Slow first request
```bash
# If first request takes >5s, model wasn't pre-downloaded
# Rebuild image to ensure model caching:
docker build --no-cache --target production -t crm-microservice:latest .
```

#### Kubernetes pod crash loop
```bash
# Check pod events
kubectl describe pod <pod-name>

# Common issues:
# - Resource limits too low (increase memory to 2Gi)
# - Initial delay too short (increase to 30s)
# - Health check failing (verify /health endpoint works)
```

---

## Summary

**Current Status:** ✅ **Phase 1, 2 & 3 Complete**

✅ Rule-based matching (text analysis only)
✅ Semantic embeddings (free text understanding)
✅ Method selection via API
✅ Comparison endpoint (testing/debugging only)
✅ Interactive documentation
✅ Health checks
✅ Docker containerization with pre-downloaded model
✅ Kubernetes deployment with proper resource limits
✅ Production-ready

**Next Steps:**
- Phase 4: LLM-based explanation refinement (future feature)

**Quick Start:**
```bash
cd microservice
pip install -r requirements.txt
cd src
uvicorn main:app --reload --port 5173
# Open http://localhost:5173/v1/docs
```

**Questions?**
- Check `/v1/docs` for interactive API documentation
- View `/v1/redoc` for alternative documentation style
- All endpoints include detailed examples in OpenAPI schema

---

**Implementation Date:** December 2025
**Version:** 1.0.0
**Status:** Production Ready ✅
