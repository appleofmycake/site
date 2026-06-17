#!/usr/bin/env bash
set -euo pipefail

uv run build.py

TMPDIR="$(mktemp -d)"
cp -a dist/. "$TMPDIR"

git stash --include-untracked -q 2>/dev/null || true
git checkout site

# Remove old site files (keep .git)
find . -maxdepth 1 ! -name '.git' ! -name '.' ! -name 'CLAUDE.md' -exec rm -rf {} +

# Copy built files from temp
cp -a "$TMPDIR"/. .
rm -rf "$TMPDIR"

# Ensure CLAUDE.md stays ignored on site branch
echo "CLAUDE.md" > .gitignore

git add -A
git commit -m "deploy: $(date +%Y-%m-%dT%H:%M:%S)" || echo "Nothing to deploy"

git checkout src
git stash pop -q 2>/dev/null || true

echo "Done. Site branch updated."
