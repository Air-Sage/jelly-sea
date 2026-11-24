#!/bin/sh
# Publish the game to GitHub Pages: https://air-sage.github.io/jelly-sea/
# (repo Air-Sage/jelly-sea, branch main, site served from the repo root).
# Commits every pending change and pushes. Needs the macOS keyring (run outside the Claude Code Bash sandbox).
set -e
cd "$(dirname "$0")"
GH=/Users/huanhuan11/.local/bin/gh
git add -A
if git diff --cached --quiet; then echo "deploy: nothing changed, nothing to publish"; exit 0; fi
git commit -q -m "Update game ($(date '+%Y-%m-%d %H:%M'))

Co-Authored-By: Claude Opus 5.5 <noreply@anthropic.com>"
git -c credential.helper= -c credential.helper="!$GH auth git-credential" push -q origin main
echo "deploy: pushed $(git rev-parse --short HEAD); GitHub Pages updates in about a minute"
echo "        https://air-sage.github.io/jelly-sea/"
