#!/usr/bin/env bash

set -euo pipefail

echo "==> Building Jekyll site"

cd website

bundle exec jekyll build \
    --destination ../public

echo
echo "==> Build complete"
echo "    Output directory: public/"
