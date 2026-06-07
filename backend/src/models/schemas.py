from sqlalchemy import Column, Text, Date, Numeric, TIMESTAMP, ForeignKey, Boolean, Integer
from sqlalchemy.dialects.postgresql import JSONB
from sqlalchemy.orm import relationship
from db import Base

class Client(Base):
    __tablename__ = "clients"

    client_id = Column(Text, primary_key=True)
    name = Column(Text)
    client_risk_rating = Column(Text)
    opening_date = Column(Date)
    status = Column(Text)
    aum = Column(Numeric)
    domicile = Column(Text)
    nationality = Column(Text)
    country_of_business = Column(Text)
    expected_monthly_turnover = Column(Numeric)
    declared_counterparties = Column(Text)

    transactions = relationship("Transaction", back_populates="client")
    notes = relationship("CRMNote", back_populates="client")


class Transaction(Base):
    __tablename__ = "transactions"

    transaction_id = Column(Text, primary_key=True)
    client_id = Column(Text, ForeignKey("clients.client_id"), nullable=False)
    date = Column(Date)
    amount = Column(Numeric)
    currency = Column(Text)
    direction = Column(Text)
    type = Column(Text)
    counterparty_bank = Column(Text)
    counterparty_entity = Column(Text)

    client = relationship("Client", back_populates="transactions")
    matches = relationship("Match", back_populates="transaction")
    alert_transactions = relationship("AlertTransaction", back_populates="transaction")


class CRMNote(Base):
    __tablename__ = "crm_notes"

    id = Column(Text, primary_key=True)
    client_id = Column(Text, ForeignKey("clients.client_id"), nullable=False)
    date = Column(Date)
    text = Column(Text)

    client = relationship("Client", back_populates="notes")
    matches = relationship("Match", back_populates="note")


class Match(Base):
    __tablename__ = "matches"

    id = Column(Text, primary_key=True)
    transaction_id = Column(Text, ForeignKey("transactions.transaction_id"), nullable=False)
    note_id = Column(Text, ForeignKey("crm_notes.id"))
    confidence_score = Column(Numeric)

    transaction = relationship("Transaction", back_populates="matches")
    note = relationship("CRMNote", back_populates="matches")


class Alert(Base):
    __tablename__ = "alerts"

    id = Column(Text, primary_key=True)
    client_id = Column(Text, ForeignKey("clients.client_id"), nullable=False)

    # Rule identification (immutable audit trail)
    rule_name = Column(Text, nullable=False)
    rule_version = Column(Text, nullable=False)
    rule_details = Column(JSONB, nullable=False)

    # Time window tracking (for deduplication and audit)
    evaluation_window_start = Column(Date)
    evaluation_window_end = Column(Date)

    # Direction (for smurfing, unusual patterns)
    direction = Column(Text)

    # Alert state (simple boolean)
    is_open = Column(Boolean, nullable=False, default=True)

    # Manual dismissal
    dismissed_reason = Column(Text)
    dismissed_at = Column(TIMESTAMP)

    # Auto-clear tracking
    cleared_by_matching = Column(Boolean, nullable=False, default=False)
    cleared_at = Column(TIMESTAMP)

    # Progress tracking
    matched_transaction_count = Column(Integer, nullable=False, default=0)
    total_transaction_count = Column(Integer, nullable=False)

    created_at = Column(TIMESTAMP, nullable=False)

    alert_transactions = relationship("AlertTransaction", back_populates="alert", cascade="all, delete-orphan")


class AlertTransaction(Base):
    __tablename__ = "alert_transactions"

    alert_id = Column(Text, ForeignKey("alerts.id", ondelete="CASCADE"), primary_key=True)
    transaction_id = Column(Text, ForeignKey("transactions.transaction_id", ondelete="CASCADE"), primary_key=True)

    alert = relationship("Alert", back_populates="alert_transactions")
    transaction = relationship("Transaction", back_populates="alert_transactions")


class User(Base):
    __tablename__ = "users"

    username = Column(Text, primary_key=True)
    full_name = Column(Text)
    email = Column(Text)
    hashed_password = Column(Text)
    disabled = Column(Boolean)
    write_access = Column(Boolean)
