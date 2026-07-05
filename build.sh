#!/usr/bin/env bash

set -euo pipefail

COMPOSE_FILE="docker-compose-devshell.yml"
SERVICE_NAME="devshell"

echo "==> Building Jekyll site"

docker compose \
    -f "${COMPOSE_FILE}" \
    run --rm \
    "${SERVICE_NAME}" \
    bundle exec jekyll build --source website

echo
echo "==> Build complete"
echo "    Output directory: _site/"
