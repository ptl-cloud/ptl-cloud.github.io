#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
cd "${ROOT_DIR}/website"

echo "==> Building Jekyll site"

bundle exec jekyll build \
    --destination "${ROOT_DIR}/public"

echo
echo "==> Build complete"
echo "    Output directory: public/"
