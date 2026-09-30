#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
cd "${ROOT_DIR}/website"

echo "==> Running Jekyll validation"

bundle exec jekyll clean \
    --destination "${ROOT_DIR}/public"

bundle exec jekyll build \
    --destination "${ROOT_DIR}/public"

bundle exec htmlproofer "${ROOT_DIR}/public" \
    --disable-external

echo
echo "==> Validation complete"
