CREATE TABLE users
(
    username TEXT PRIMARY KEY,
    full_name TEXT,
    email TEXT,
    hashed_password TEXT NOT NULL,
    disabled BOOLEAN DEFAULT FALSE,
    write_access BOOLEAN DEFAULT FALSE
);

-- ============================
-- Table: clients
-- ============================
CREATE TABLE clients
(
    client_id TEXT PRIMARY KEY,
    name TEXT,
    client_risk_rating TEXT,
    opening_date DATE,
    status TEXT,
    aum NUMERIC,
    domicile TEXT,
    nationality TEXT,
    country_of_business TEXT,
    expected_monthly_turnover NUMERIC,
    declared_counterparties TEXT
);

-- ============================
-- Table: transactions
-- ============================
CREATE TABLE transactions
(
    transaction_id      TEXT PRIMARY KEY,
    client_id           TEXT NOT NULL,
    date                DATE NOT NULL,
    amount              NUMERIC NOT NULL,
    currency            TEXT,
    direction           TEXT,
    type                TEXT,
    counterparty_bank   TEXT,
    counterparty_entity TEXT,
    FOREIGN KEY (client_id) REFERENCES clients (client_id)
);

-- ============================
-- Table: crm_notes
-- ============================
CREATE TABLE crm_notes
(
    id        TEXT PRIMARY KEY,
    client_id TEXT NOT NULL,
    date      DATE,
    text      TEXT,
    FOREIGN KEY (client_id) REFERENCES clients (client_id)
);

-- ============================
-- Table: matches
-- ============================
CREATE TABLE matches
(
    id               TEXT PRIMARY KEY,
    transaction_id   TEXT NOT NULL,
    note_id          TEXT,
    confidence_score NUMERIC,
    FOREIGN KEY (transaction_id) REFERENCES transactions (transaction_id),
    FOREIGN KEY (note_id) REFERENCES crm_notes (id)
);

-- ============================
-- Table: alerts (REDESIGNED)
-- ============================
CREATE TABLE alerts
(
    id TEXT PRIMARY KEY,
    client_id TEXT NOT NULL,

    -- Rule identification (immutable audit trail)
    rule_name TEXT NOT NULL,
    rule_version TEXT NOT NULL,
    rule_details JSONB NOT NULL,

    -- Time window tracking (for deduplication and audit)
    evaluation_window_start DATE,
    evaluation_window_end DATE,

    -- Direction (for smurfing, unusual patterns)
    direction TEXT CHECK (direction IN ('credit', 'debit') OR direction IS NULL),

    -- Alert state (simple boolean)
    is_open BOOLEAN NOT NULL DEFAULT TRUE,

    -- Manual dismissal
    dismissed_reason TEXT,
    dismissed_at TIMESTAMP,

    -- Auto-clear tracking
    cleared_by_matching BOOLEAN NOT NULL DEFAULT FALSE,
    cleared_at TIMESTAMP,

    -- Progress tracking
    matched_transaction_count INT NOT NULL DEFAULT 0,
    total_transaction_count INT NOT NULL,

    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    -- Foreign key
    FOREIGN KEY (client_id) REFERENCES clients (client_id) ON DELETE CASCADE,

    -- Constraints
    CONSTRAINT check_dismissal CHECK (
        (dismissed_reason IS NULL AND dismissed_at IS NULL) OR
        (dismissed_reason IS NOT NULL AND dismissed_at IS NOT NULL)
    ),
    CONSTRAINT check_cleared CHECK (
        (cleared_by_matching = FALSE AND cleared_at IS NULL) OR
        (cleared_by_matching = TRUE AND cleared_at IS NOT NULL)
    ),
    CONSTRAINT check_matched_count CHECK (
        matched_transaction_count <= total_transaction_count
    ),
    CONSTRAINT check_window_dates CHECK (
        (evaluation_window_start IS NULL AND evaluation_window_end IS NULL) OR
        (evaluation_window_start IS NOT NULL AND evaluation_window_end IS NOT NULL AND evaluation_window_start <= evaluation_window_end)
    )
);

CREATE TABLE alert_transactions
(
    alert_id TEXT NOT NULL,
    transaction_id TEXT NOT NULL,
    PRIMARY KEY (alert_id, transaction_id),
    FOREIGN KEY (alert_id) REFERENCES alerts (id) ON DELETE CASCADE,
    FOREIGN KEY (transaction_id) REFERENCES transactions (transaction_id) ON DELETE CASCADE
);

-- ============================
-- Indexes
-- ============================
-- Transaction indexes
CREATE INDEX IF NOT EXISTS idx_transactions_client_id ON transactions(client_id);
CREATE INDEX IF NOT EXISTS idx_transactions_date ON transactions(date);
CREATE INDEX IF NOT EXISTS idx_transactions_client_date ON transactions(client_id, date);
CREATE INDEX IF NOT EXISTS idx_transactions_direction ON transactions(direction);

-- CRM notes indexes
CREATE INDEX IF NOT EXISTS idx_crm_notes_client_id ON crm_notes(client_id);
CREATE INDEX IF NOT EXISTS idx_crm_notes_date ON crm_notes(date);

-- Match indexes
CREATE INDEX IF NOT EXISTS idx_matches_transaction_id ON matches(transaction_id);
CREATE INDEX IF NOT EXISTS idx_matches_note_id ON matches(note_id);

-- Match unique constraint (prevent duplicate matches)
CREATE UNIQUE INDEX IF NOT EXISTS idx_matches_unique ON matches(transaction_id, note_id);

-- Alert indexes (basic)
CREATE INDEX IF NOT EXISTS idx_alerts_client_id ON alerts(client_id);
CREATE INDEX IF NOT EXISTS idx_alerts_created_at ON alerts(created_at);
CREATE INDEX IF NOT EXISTS idx_alerts_is_open ON alerts(is_open);
CREATE INDEX IF NOT EXISTS idx_alerts_rule_name ON alerts(rule_name);

-- Alert indexes (CRITICAL for deduplication)
CREATE INDEX IF NOT EXISTS idx_alerts_dedup ON alerts(client_id, rule_name, rule_version, is_open)
    WHERE is_open = TRUE;

-- Alert indexes (for window-based deduplication)
CREATE INDEX IF NOT EXISTS idx_alerts_window ON alerts(evaluation_window_start, evaluation_window_end)
    WHERE evaluation_window_start IS NOT NULL;

-- Alert transactions index (for auto-clear queries)
CREATE INDEX IF NOT EXISTS idx_alert_transactions_transaction_id ON alert_transactions(transaction_id);
CREATE INDEX IF NOT EXISTS idx_alert_transactions_alert_id ON alert_transactions(alert_id);