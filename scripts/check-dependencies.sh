#!/usr/bin/env bash
set -euo pipefail

missing=0

check_cmd() {
  local cmd="$1"
  if command -v "$cmd" >/dev/null 2>&1; then
    echo "OK: $cmd"
  else
    echo "MISSING: $cmd"
    missing=1
  fi
}

echo "Checking machine-level dependencies..."

check_cmd git
check_cmd gh
check_cmd docker
check_cmd code-review-graph

echo
echo "Checking GitHub auth..."
if command -v gh >/dev/null 2>&1; then
  if gh auth status >/dev/null 2>&1; then
    echo "OK: gh auth"
  else
    echo "MISSING: gh auth login not completed"
    missing=1
  fi
fi

if [[ "$missing" -ne 0 ]]; then
  echo
  echo "One or more dependencies are missing."
  exit 1
fi

echo
echo "All checked dependencies are available."
