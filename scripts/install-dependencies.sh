#!/usr/bin/env bash
set -euo pipefail

echo "Installing optional machine-level dependencies for openai-curated Codex plugins..."

if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew is not installed. Install Homebrew first: https://brew.sh/"
  exit 1
fi

install_if_missing() {
  local cmd="$1"
  local formula="$2"

  if command -v "$cmd" >/dev/null 2>&1; then
    echo "Already installed: $cmd"
  else
    echo "Installing: $formula"
    brew install "$formula"
  fi
}

install_if_missing git git
install_if_missing gh gh
install_if_missing docker docker

if command -v code-review-graph >/dev/null 2>&1; then
  echo "Already installed: code-review-graph"
else
  echo "code-review-graph is not installed."
  echo "Install it using the method required by that project, then rerun scripts/check-dependencies.sh"
fi

if command -v graphify >/dev/null 2>&1; then
  echo "Already installed: graphify"
else
  echo "graphify is not installed."
  echo "Attempting Python install via pip..."
  python3 -m pip install graphifyy -q 2>/dev/null || python3 -m pip install graphifyy -q --break-system-packages || true
fi

echo "Dependency install script finished."
