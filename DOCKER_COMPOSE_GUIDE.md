# Docker Compose - Local Development Guide

This guide explains how to run the entire CRM Sentinel system using Docker Compose.

## 🚀 Quick Start

### Start All Services

```bash
# Start all services (builds images if needed)
docker-compose up --build

# Or run in detached mode (background)
docker-compose up -d --build
```

**Wait for services to start (~2-3 minutes first time)**

### Access the Services

Once running, access:
- **Frontend**: http://localhost:3000
- **Microservice API**: http://localhost:5173/v1/docs
- **PostgreSQL**: localhost:5432
- **Backend**: http://localhost:8080 *(commented out - not working yet)*

---

## 📦 What's Running?

### Currently Active Services

✅ **PostgreSQL Database** (Port 5432)
- Database: `db_test`
- User: `user_test`
- Password: `goh9aami0aeph5Ah`

✅ **Microservice** (Port 5173)
- Semantic matching API
- Pre-downloaded ML model
- Health check: http://localhost:5173/health

✅ **Frontend** (Port 3000)
- Next.js application
- Hot reload enabled

### Commented Out Services

❌ **Backend** (Port 8080) - Not yet working
- Uncomment in `docker-compose.yml` when ready

---

## 🛠️ Common Commands

### View Logs

```bash
# All services
docker-compose logs -f

# Specific service
docker-compose logs -f microservice
docker-compose logs -f frontend
docker-compose logs -f postgres
```

### Stop Services

```bash
# Stop but keep containers
docker-compose stop

# Stop and remove containers
docker-compose down

# Stop and remove containers + volumes (deletes database data!)
docker-compose down -v
```

### Restart a Service

```bash
# Restart specific service
docker-compose restart microservice
docker-compose restart frontend
```

### Rebuild a Service

```bash
# Rebuild and restart specific service
docker-compose up -d --build microservice
docker-compose up -d --build frontend
```

### Check Service Status

```bash
# Show running containers
docker-compose ps

# Check health status
docker-compose ps
```

---

## 🔧 Service Configuration

### PostgreSQL

**Connection Details:**
- Host: `localhost` (from host machine) or `postgres` (from containers)
- Port: `5432`
- Database: `db_test`
- User: `user_test`
- Password: `goh9aami0aeph5Ah`

**Connect from host:**
```bash
psql postgresql://user_test:goh9aami0aeph5Ah@localhost:5432/db_test
```

**Data persistence:**
- Data stored in Docker volume: `postgres_data`
- Survives container restarts
- Delete with: `docker-compose down -v`

---

### Microservice

**Features:**
- Automatic model download on first build (~80MB)
- Health checks with 40s startup grace period
- CORS configured for localhost:3000

**Health Check:**
```bash
curl http://localhost:5173/health
# Expected: {"status":"ok"}
```

**Test Semantic Matching:**
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

---

### Frontend

**Features:**
- **Hot reload enabled** - Code changes appear instantly
- Next.js development mode (`yarn dev`)
- Source code mounted as volume for real-time updates
- Configured to connect to microservice

**How Hot Reload Works:**
1. Your local `frontend/nextjs/` files are mounted into the container
2. Next.js watches for file changes
3. Changes automatically rebuild and refresh in browser
4. No need to restart container!

**Environment Variables:**
- `NEXT_PUBLIC_BACKEND_URL`: http://localhost:8080
- `NEXT_PUBLIC_MICROSERVICE_URL`: http://localhost:5173

**Edit Code:**
Just edit files in `frontend/nextjs/src/` and see changes live at http://localhost:3000

---

## 🐛 Troubleshooting

### Port Already in Use

If you get "port already in use" errors:

```bash
# Find and kill process using the port
lsof -ti:5173 | xargs kill -9  # Microservice
lsof -ti:3000 | xargs kill -9  # Frontend
lsof -ti:5432 | xargs kill -9  # PostgreSQL
```

### Services Won't Start

```bash
# Remove all containers and volumes
docker-compose down -v

# Clean Docker system
docker system prune -f

# Rebuild from scratch
docker-compose up --build
```

### Microservice Taking Too Long to Start

First startup takes 2-3 minutes to:
- Download dependencies
- Download ML model (~80MB)
- Load model into memory

Check logs:
```bash
docker-compose logs -f microservice
```

### Frontend Can't Connect to Microservice

Check microservice is running:
```bash
curl http://localhost:5173/health
```

Check frontend environment variables are correct:
```bash
docker-compose exec frontend env | grep NEXT_PUBLIC
```

### Database Connection Issues

Check PostgreSQL is running:
```bash
docker-compose ps postgres
```

Test connection:
```bash
docker-compose exec postgres psql -U user_test -d db_test -c "SELECT 1;"
```

---

## 🔄 Enabling Backend (When Ready)

When the backend is working, uncomment these sections in `docker-compose.yml`:

1. **Uncomment the entire backend service** (lines 44-68)
2. **Uncomment frontend dependency** (lines 89-90)

Then restart:
```bash
docker-compose down
docker-compose up --build
```

**Update frontend environment variables to use Docker network:**
```yaml
environment:
  NEXT_PUBLIC_BACKEND_URL: "http://backend:8080"
  NEXT_PUBLIC_MICROSERVICE_URL: "http://microservice:5173"
```

---

## 📊 Resource Usage

**Expected resource consumption:**

| Service      | Memory | CPU  | Disk      |
|--------------|--------|------|-----------|
| PostgreSQL   | ~50MB  | Low  | ~100MB    |
| Microservice | ~800MB | Med  | ~800MB    |
| Frontend     | ~200MB | Low  | ~500MB    |
| **Total**    | ~1GB   | -    | ~1.4GB    |

---

## 🎯 Development Workflow

### Typical Development Cycle

1. **Start services:**
   ```bash
   docker-compose up -d
   ```

2. **View logs in real-time:**
   ```bash
   docker-compose logs -f
   ```

3. **Make code changes** (hot reload for frontend)

4. **Rebuild if needed:**
   ```bash
   docker-compose up -d --build microservice  # If microservice changed
   ```

5. **Stop when done:**
   ```bash
   docker-compose down
   ```

---

## 📝 Notes

- **First build takes 3-5 minutes** (downloads dependencies + ML model)
- **Subsequent builds are faster** (uses Docker layer caching)
- **Database data persists** between restarts (stored in volume)
- **Frontend has hot reload** - changes appear automatically
- **Microservice requires rebuild** for code changes
- **Backend is commented out** - not working yet

---

## ✅ Success Checklist

After running `docker-compose up`, verify:

- [ ] PostgreSQL is healthy: `docker-compose ps postgres`
- [ ] Microservice responds: `curl http://localhost:5173/health`
- [ ] Frontend loads: Open http://localhost:3000
- [ ] No error logs: `docker-compose logs --tail=50`

---

**Ready to start?**

```bash
docker-compose up --build
```

Then open http://localhost:3000 in your browser!
