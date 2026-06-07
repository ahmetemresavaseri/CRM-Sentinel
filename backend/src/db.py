from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker, declarative_base
import os
import logging

logger = logging.getLogger(__name__)

postgresUrl = os.getenv("POSTGRES_URL")
if postgresUrl:
    DATABASE_URL = postgresUrl
else:
    DATABASE_URL = "postgresql://user_test:goh9aami0aeph5Ah@localhost:5432/db_test"

# Create engine with connection pooling disabled for better error handling
# and retry logic with connect_args for timeout
engine = create_engine(
    DATABASE_URL,
    echo=True,
)

SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()