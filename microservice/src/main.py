import os

from fastapi import FastAPI
from fastapi.staticfiles import StaticFiles
from fastapi.middleware.cors import CORSMiddleware
from starlette.middleware import Middleware

from routes.match import router as match_router

origins = os.getenv("CORS_ORIGINS", "http://localhost:3000,http://127.0.0.1:3000").split(",")

cors_middleware = Middleware(
    CORSMiddleware,
    allow_origins=[o.strip() for o in origins if o.strip()],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"]
)

tags_metadata = [
    {
        "name": "Matching",
        "description": "Core endpoints for matching transactions to CRM notes using semantic analysis.",
    },
    {
        "name": "Monitoring",
        "description": "Health checks and system status.",
    },
]

description = """
# CRM Sentinel - Matching Microservice

This microservice provides advanced **semantic matching capabilities** to link financial transactions with unstructured CRM notes. 

It utilizes both **rule-based heuristics** and **semantic embeddings** (Sentence Transformers) to identify potential matches, helping relationship managers understand client intent and verify transaction justifications.

## Key Features

*   **Single Transaction Matching**: Match one transaction against a client's notes history.
*   **Batch Matching**: Process multiple transactions efficiently in a single request.
*   **Method Comparison**: Compare results between simple keyword matching and semantic matching.
*   **Scoring & Explanations**: Every match comes with a confidence score (0-1) and a generated explanation.

## Visuals

### Bulk Upload
![Bulk Upload](/static/images/bulk_upload.png)

### Transaction Mapping
![Transaction Match](/static/images/trx_match.png)

## Architecture

The service runs as a stateless container and exposes a REST API. It is designed to be consumed by the backend API gateway, not directly by the frontend.
"""

app = FastAPI(
    title="CRM Sentinel - Matching Microservice",
    description=description,
    version="1.0.0",
    middleware=[cors_middleware],
    openapi_tags=tags_metadata
)

# Mount static files to serve images for Swagger UI
app.mount("/static", StaticFiles(directory=os.path.join(os.path.dirname(__file__), "static")), name="static")

app.include_router(match_router, prefix="/v1")


@app.get("/health", tags=["Monitoring"])
async def health():
    return {"status": "ok"}
