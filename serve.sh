#!/usr/bin/env bash

set -euo pipefail

COMPOSE_FILE="docker-compose-devshell.yml"
SERVICE_NAME="devshell"

UID_HOST="${UID_HOST:-$(id -u)}"
GID_HOST="${GID_HOST:-$(id -g)}"

echo "==> Starting Jekyll development server"
echo

echo "    URL: http://localhost:4000"
echo "    Live rebuild: enabled"
echo

UID_HOST="${UID_HOST}" \
GID_HOST="${GID_HOST}" \
docker compose \
    -f "${COMPOSE_FILE}" \
    run --rm \
    --service-ports \
    "${SERVICE_NAME}" \
    bundle exec jekyll serve \
        --host 0.0.0.0 \
        --livereload \
        --source website
