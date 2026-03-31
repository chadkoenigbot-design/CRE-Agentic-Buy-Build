#!/bin/zsh
set -e
cd ~/Desktop/cre-buy-build-site

git add .
if git diff --cached --quiet; then
  echo "No changes to publish."
  read -k 1 '?Press any key to close...'
  echo
  exit 0
fi

MSG="Update CRE buy-build site $(date '+%Y-%m-%d %H:%M:%S')"
git commit -m "$MSG"
git push -u origin main

echo
echo "Published: https://chadkoenigbot-design.github.io/cre-buy-build/"
read -k 1 '?Press any key to close...'
echo
