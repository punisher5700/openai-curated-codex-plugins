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

echo "Dependency install script finished."
