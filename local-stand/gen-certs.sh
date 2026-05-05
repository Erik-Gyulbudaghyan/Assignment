#!/usr/bin/env sh
set -e

mkdir -p certs

openssl req -x509 \
  -nodes \
  -newkey rsa:2048 \
  -days 365 \
  -keyout certs/local.key \
  -out certs/local.crt \
  -subj "/C=AM/ST=Yerevan/L=Yerevan/O=LocalDev/OU=Dev/CN=localhost"

echo "Self-signed certificate generated:"
echo "certs/local.crt"
echo "certs/local.key"