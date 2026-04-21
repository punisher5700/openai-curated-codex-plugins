#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_DIR="${SCRIPT_DIR}/salesforce-skills-extension"
TARGET_DIR="${HOME}/.gemini/extensions/salesforce-skills"

mkdir -p "${HOME}/.gemini/extensions"
rsync -a --delete "${SOURCE_DIR}/" "${TARGET_DIR}/"

echo "Installed Gemini Salesforce extension:"
echo "  ${TARGET_DIR}"
echo
echo "Restart Gemini CLI so it reloads the extension."
