import os

from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

from routes import users
from routes.transactions import router as transactions_router
from routes.notes import router as notes_router
from routes.alerts import router as alerts_router
from routes.clients import router as clients_router

app = FastAPI(
    title="FWE'25 Backend API",
    version="1.0.0",
)

# CORS Configuration
origins = [
    "http://localhost:3000",
    "http://127.0.0.1:3000",
    "https://group-p5.webdev-25.ivia.isginf.ch"
]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

app.include_router(clients_router)
app.include_router(transactions_router)
app.include_router(notes_router)
app.include_router(alerts_router)
app.include_router(users.router)

@app.get("/health", tags=["Monitoring"])
async def health():
    return {"status": "ok"}
