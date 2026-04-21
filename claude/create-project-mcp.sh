#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "Usage: bash claude/create-project-mcp.sh /absolute/path/to/project"
  exit 1
fi

PROJECT_DIR="$1"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_DIR="${SCRIPT_DIR}/salesforce-skills/skills"
MCP_FILE="${PROJECT_DIR}/.mcp.json"

mkdir -p "${PROJECT_DIR}"

cat > "${MCP_FILE}" <<EOF
{
  "mcpServers": {
    "salesforce-skills": {
      "command": "docker",
      "args": [
        "run",
        "-i",
        "--rm",
        "-v",
        "${SKILLS_DIR}:/skills:ro",
        "mcp-skill-hub"
      ]
    }
  }
}
EOF

echo "Created Claude project MCP config:"
echo "  ${MCP_FILE}"
