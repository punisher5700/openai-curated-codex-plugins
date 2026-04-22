#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="${1:-$PWD}"
SOURCE_DIR="${SCRIPT_DIR}/superpowers"

mkdir -p "${TARGET_DIR}/.github"
rsync -a "${SOURCE_DIR}/.github/" "${TARGET_DIR}/.github/"

echo "Installed Copilot Superpowers instructions:"
echo "  ${TARGET_DIR}/.github/copilot-instructions.md"
