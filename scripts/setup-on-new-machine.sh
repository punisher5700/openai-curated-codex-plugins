#!/usr/bin/env bash
set -euo pipefail

REPO_URL="${1:-https://github.com/punisher5700/openai-curated-codex-plugins.git}"
TARGET_DIR="${HOME}/.codex/marketplaces/openai-curated"
CONFIG_FILE="${HOME}/.codex/config.toml"

echo "Setting up Codex marketplace from:"
echo "  $REPO_URL"
echo

mkdir -p "${HOME}/.codex/marketplaces"

if [[ -d "$TARGET_DIR/.git" ]]; then
  echo "Marketplace repo already exists at $TARGET_DIR"
  echo "Pulling latest changes..."
  git -C "$TARGET_DIR" pull --ff-only
else
  echo "Cloning marketplace repo to $TARGET_DIR"
  git clone "$REPO_URL" "$TARGET_DIR"
fi

echo
echo "Running dependency install/check..."
bash "$TARGET_DIR/scripts/install-dependencies.sh" || true
echo
bash "$TARGET_DIR/scripts/check-dependencies.sh" || true

echo
echo "Ensuring Codex config has marketplace and plugin enablement stanzas..."
mkdir -p "$(dirname "$CONFIG_FILE")"
touch "$CONFIG_FILE"

append_if_missing() {
  local block="$1"
  local marker="$2"
  if grep -Fq "$marker" "$CONFIG_FILE"; then
    echo "Already present in config: $marker"
  else
    printf "\n%s\n" "$block" >> "$CONFIG_FILE"
    echo "Added to config: $marker"
  fi
}

append_if_missing '[marketplaces.openai-curated]
source_type = "local"
source = "'"$TARGET_DIR"'"' '[marketplaces.openai-curated]'

append_if_missing '[plugins."superpowers@openai-curated"]
enabled = true' '[plugins."superpowers@openai-curated"]'

append_if_missing '[plugins."salesforce-skills@openai-curated"]
enabled = true' '[plugins."salesforce-skills@openai-curated"]'

append_if_missing '[plugins."github@openai-curated"]
enabled = true' '[plugins."github@openai-curated"]'

append_if_missing '[mcp_servers.salesforce-skills]
command = "docker"
args = [
  "run",
  "-i",
  "--rm",
  "-v",
  "'"${HOME}"'/.codex/skill-bundles/salesforce:/skills:ro",
  "mcp-skill-hub",
]
type = "stdio"' '[mcp_servers.salesforce-skills]'

echo
echo "Setup complete."
echo
echo "Next steps:"
echo "1. Restart Codex."
echo "2. If needed, install or configure missing machine-level tools reported above."
echo "3. If using GitHub features, run: gh auth login"
echo
echo "Marketplace path:"
echo "  $TARGET_DIR"
echo
echo "Config file updated:"
echo "  $CONFIG_FILE"
