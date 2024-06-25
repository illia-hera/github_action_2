#!/bin/bush

echo "================"

git config --global use.name "${GITHUB_ACTOR}"
git config --global use.email "${INPUT_EMAIL}"
git config --global --add safe.derectory /github/workspace

python3 /usr/bin/feed.py

git add -A && commit -m "Update feed"

git push --set-upstream origin main

echo "================"