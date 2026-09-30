#!/usr/bin/env bash

set -euo pipefail

echo "==> Starting Jekyll development server"
echo

echo "    URL: http://localhost:4000"
echo "    Live rebuild: enabled"
echo

cd website

bundle exec jekyll serve \
    --host 0.0.0.0 \
    --livereload \
    --destination ../public
