#!/usr/bin/env bash
set -euo pipefail

# devshell.sh
# Open a bash shell in a dev container with the project mounted.
#
# Usage:
#   ./devshell.sh
#
# Requirements:
#   - Docker Engine
#   - Docker Compose plugin ("docker compose")

PROJECT_NAME_DEFAULT="$(basename "$(pwd)")"
SERVICE_NAME="devshell"
COMPOSE_FILE="docker-compose-devshell.yml"

# Allow override via env
PROJECT_NAME="${PROJECT_NAME:-$PROJECT_NAME_DEFAULT}"
UID_HOST="${UID_HOST:-$(id -u)}"
GID_HOST="${GID_HOST:-$(id -g)}"

if ! command -v docker >/dev/null 2>&1; then
  echo "ERROR: docker not found. Install Docker Engine first." >&2
  exit 1
fi

if ! docker compose version >/dev/null 2>&1; then
  echo "ERROR: 'docker compose' not available. Install Docker Compose plugin." >&2
  exit 1
fi

if [[ ! -f "${COMPOSE_FILE}" ]]; then
  echo "ERROR: ${COMPOSE_FILE} not found in repo root." >&2
  exit 1
fi

echo "==> Project: ${PROJECT_NAME}"
echo "==> Using UID:GID = ${UID_HOST}:${GID_HOST}"

# Fixed host ports mean only one container can bind port 4000 at a time
EXISTING_CONTAINER="$(docker ps --filter "publish=4000" --format '{{.Names}}' | head -n1)"
if [[ -n "${EXISTING_CONTAINER}" ]]; then
  echo "ERROR: Port 4000 is already in use by container '${EXISTING_CONTAINER}'." >&2
  echo "       Stop it first with:" >&2
  echo "         docker stop ${EXISTING_CONTAINER}" >&2
  exit 1
fi

echo "==> Starting interactive dev shell..."
echo "    (Your project is mounted at /workspace inside the container.)"
echo

# Run an interactive shell, auto-remove container on exit
# Install gem dependencies
UID_HOST="${UID_HOST}" GID_HOST="${GID_HOST}" \
  docker compose \
  -f "${COMPOSE_FILE}" \
  run --rm --service-ports \
  "${SERVICE_NAME}" \
  bash -c '
    cd website
    bundle check || bundle install
    exec bash
  '
