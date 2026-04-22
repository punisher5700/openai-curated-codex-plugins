#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

bash "${SCRIPT_DIR}/install-salesforce-skills.sh" "${1:-}"
bash "${SCRIPT_DIR}/install-superpowers.sh" "${1:-}"

echo
echo "Installed all Copilot bundles from this repo."
echo "Target project: ${1:-current directory}"
