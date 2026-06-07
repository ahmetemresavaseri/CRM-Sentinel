# CRM Sentinel - Quick Start Guide

## 🚀 Start Everything with One Command

```bash
docker-compose up --build
```

Wait 2-3 minutes, then access:
- **Frontend**: http://localhost:3000
- **Microservice Docs**: http://localhost:5173/v1/docs
- **Database**: localhost:5432

## 📝 Current Status

✅ **Working:**
- PostgreSQL Database
- Matching Microservice (with ML model)
- Frontend (with hot reload for development)

❌ **Not Working Yet:**
- Backend API (commented out in docker-compose.yml)

## 🛑 Stop Everything

```bash
docker-compose down
```

## 📊 View Logs

```bash
# All services
docker-compose logs -f

# Just microservice
docker-compose logs -f microservice
```

## 🔧 Useful Commands

| Action | Command |
|--------|---------|
| Start services | `docker-compose up -d --build` |
| Stop services | `docker-compose down` |
| View logs | `docker-compose logs -f` |
| Rebuild microservice | `docker-compose up -d --build microservice` |
| Check status | `docker-compose ps` |
| Remove everything | `docker-compose down -v` |

## 📦 Services & Ports

| Service | Port | Status |
|---------|------|--------|
| Frontend | 3000 | ✅ Working |
| Backend | 8080 | ❌ Not yet |
| Microservice | 5173 | ✅ Working |
| PostgreSQL | 5432 | ✅ Working |

## 🐛 Troubleshooting

**Port already in use?**
```bash
lsof -ti:3000 | xargs kill -9
```

**Services not starting?**
```bash
docker-compose down -v
docker-compose up --build
```

**More details:** See [DOCKER_COMPOSE_GUIDE.md](DOCKER_COMPOSE_GUIDE.md)

---

**Questions?** Check the full documentation in:
- [DOCKER_COMPOSE_GUIDE.md](DOCKER_COMPOSE_GUIDE.md) - Docker Compose details
- [microservice/README.md](microservice/README.md) - Microservice documentation
