#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
cd "${ROOT_DIR}/website"

echo "==> Starting Jekyll development server"
echo

echo "    URL: http://localhost:4000"
echo "    Live rebuild: enabled"
echo

bundle exec jekyll serve \
    --host 0.0.0.0 \
    --livereload \
    --destination "${ROOT_DIR}/public"
