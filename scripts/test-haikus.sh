#!/usr/bin/env bash

set -euo pipefail

status=0

shopt -s nullglob
haiku_files=(*.txt)

if [ ${#haiku_files[@]} -eq 0 ]; then
  echo "No haiku files found (*.txt)."
  exit 0
fi

for file in "${haiku_files[@]}"; do
  line_count=$(wc -l < "$file")

  if [ "$line_count" -ne 3 ]; then
    echo "FAIL: $file has $line_count lines (expected 3)."
    status=1
  else
    echo "PASS: $file has 3 lines."
  fi
done

exit "$status"
