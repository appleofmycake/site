#!/usr/bin/env bash
set -euo pipefail

uv run build.py

DIST="$(cd "$(dirname "$0")/dist" && pwd)"
REPO_ROOT="$(cd "$(dirname "$0")" && pwd)"

git stash --include-untracked -q 2>/dev/null || true
git checkout site

# Remove old site files (keep .git)
find . -maxdepth 1 ! -name '.git' ! -name '.' ! -name 'CLAUDE.md' -exec rm -rf {} +

# Copy built files
cp -a "$DIST"/. .

git add -A
git commit -m "deploy: $(date +%Y-%m-%dT%H:%M:%S)" || echo "Nothing to deploy"

git checkout src
git stash pop -q 2>/dev/null || true

echo "Done. Site branch updated."
