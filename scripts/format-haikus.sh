#!/usr/bin/env bash

set -euo pipefail

shopt -s nullglob
haiku_files=(*.txt)

if [ ${#haiku_files[@]} -eq 0 ]; then
  echo "No haiku files found (*.txt)."
  exit 0
fi

for file in "${haiku_files[@]}"; do
  # Remove one or more trailing commas at the end of each line.
  if [[ "${OSTYPE:-}" == darwin* ]]; then
    sed -E -i '' 's/,+$//' "$file"
  else
    sed -E -i 's/,+$//' "$file"
  fi
  echo "Formatted: $file"
done
