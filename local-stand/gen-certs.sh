#!/bin/bash

set -e

mkdir -p certs

openssl req \
  -x509 \
  -nodes \
  -days 365 \
  -newkey rsa:4096 \
  -keyout certs/server.key \
  -out certs/server.crt \
  -subj "/C=AM/ST=Yerevan/L=Yerevan/O=LocalLab/CN=localhost"

echo "Certificates generated:"
echo "certs/server.crt"
echo "certs/server.key"