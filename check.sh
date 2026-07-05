#!/usr/bin/env bash

set -euo pipefail

COMPOSE_FILE="docker-compose-devshell.yml"
SERVICE_NAME="devshell"

echo "==> Running Jekyll validation"

docker compose \
    -f "${COMPOSE_FILE}" \
    run --rm \
    "${SERVICE_NAME}" \
    bash -c '
        set -euo pipefail

        bundle exec jekyll clean --source website

        bundle exec jekyll build \
            --source website \
            --destination public
    '

echo
echo "==> Validation successful"
