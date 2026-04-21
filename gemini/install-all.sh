#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

bash "${SCRIPT_DIR}/install-salesforce-skills-extension.sh"
bash "${SCRIPT_DIR}/install-superpowers-extension.sh"

echo
echo "Installed all Gemini bundles from this repo."
echo "Restart Gemini CLI so it reloads the extensions."
