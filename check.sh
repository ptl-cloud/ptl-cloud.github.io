#!/usr/bin/env bash

set -euo pipefail

echo "==> Running Jekyll validation"

cd website

bundle exec jekyll clean --destination ../public

bundle exec jekyll build \
    --destination ../public

echo
echo "==> Validation complete"
