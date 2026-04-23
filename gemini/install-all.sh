#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

bash "${SCRIPT_DIR}/install-salesforce-superpowers-extension.sh"

echo
echo "Installed unified Gemini bundle from this repo."
echo "Restart Gemini CLI so it reloads the extensions."
