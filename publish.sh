#!/bin/bash
# Usage: ./publish.sh "what you changed"
# Commits and pushes everything. Site updates in ~60 seconds.

MSG="${1:-update site}"
cd "$(dirname "$0")"
git add .
git commit -m "$MSG"
git push origin main
echo "Pushed. Live at https://travis-md.github.io in ~60 seconds."
