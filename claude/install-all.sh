#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

bash "${SCRIPT_DIR}/install-salesforce-skills.sh"
bash "${SCRIPT_DIR}/install-superpowers.sh"

echo
echo "Installed all Claude bundles from this repo."
echo "Optional next step for Salesforce MCP per project:"
echo "  bash ${SCRIPT_DIR}/create-project-mcp.sh /absolute/path/to/project"
