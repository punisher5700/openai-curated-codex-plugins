#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

bash "${SCRIPT_DIR}/install-salesforce-superpowers.sh" "${1:-}"

echo
echo "Installed unified Copilot bundle from this repo."
echo "Target project: ${1:-current directory}"
