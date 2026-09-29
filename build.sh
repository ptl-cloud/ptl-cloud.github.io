#!/usr/bin/env bash

set -euo pipefail

echo "==> Building Jekyll site"

bundle exec jekyll build \
    --source website \
    --destination public

echo
echo "==> Build complete"
echo "    Output directory: public/"
