#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_DIR="${SCRIPT_DIR}/superpowers/skills"
TARGET_DIR="${HOME}/.claude/skills"

mkdir -p "${TARGET_DIR}"
rsync -a "${SOURCE_DIR}/" "${TARGET_DIR}/"

echo "Installed Superpowers skills for Claude Code:"
echo "  ${TARGET_DIR}"
