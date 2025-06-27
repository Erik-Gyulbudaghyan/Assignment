#!/usr/bin/env sh
set -e
if [ -x /app/migrate.sh ]; then
  /app/migrate.sh
fi
exec node server.js
