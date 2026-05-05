# Local Stand

## Run

```bash
cp .env.example .env
chmod +x gen-certs.sh
./gen-certs.sh
docker compose up -d --build
curl -k https://localhost/health