#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

bash "${SCRIPT_DIR}/install-salesforce-superpowers.sh"

echo
echo "Installed unified Claude bundle from this repo."
echo "Optional next step for Salesforce MCP per project:"
echo "  bash ${SCRIPT_DIR}/create-project-mcp.sh /absolute/path/to/project"
