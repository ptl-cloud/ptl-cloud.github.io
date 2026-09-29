#!/usr/bin/env bash

set -euo pipefail

echo "==> Running Jekyll validation"

bundle exec jekyll clean --source website --destination public

bundle exec jekyll build \
    --source website \
    --destination public

echo
echo "==> Validation complete"
