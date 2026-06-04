# Local Stand
chmod +x gen-certs.sh
## Components

- Nginx (TLS termination)
- Backend web application
- PostgreSQL 15
- Redis

## Prerequisites
- Docker
- Docker Compose
## Run
Generate certificates:
```bash
chmod +x gen-certs.sh
./gen-certs.sh
```
Start environment:
```bash
docker compose up -d
```
Verify containers:
```bash
docker compose ps
```
Open application:
```bash
https://localhost
```
Check logs:
```bash
docker compose logs -f
```
Stop:
```bash
docker compose down
```
## Healthchecks
Nginx:
```bash
docker inspect nginx
```
Backend:
```bash
docker inspect backend
```
PostgreSQL:
```bash
docker inspect postgres
```
Redis:
```bash
docker inspect redis
```