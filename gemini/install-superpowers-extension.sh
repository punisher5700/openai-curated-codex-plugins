#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_DIR="${SCRIPT_DIR}/superpowers-extension"
TARGET_DIR="${HOME}/.gemini/extensions/superpowers"

mkdir -p "${HOME}/.gemini/extensions"
rsync -a --delete "${SOURCE_DIR}/" "${TARGET_DIR}/"

echo "Installed Gemini Superpowers extension:"
echo "  ${TARGET_DIR}"
echo
echo "Restart Gemini CLI so it reloads the extension."
