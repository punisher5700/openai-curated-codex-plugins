# Setup Guide

This repository is a user-managed Codex marketplace for one merged Salesforce developer bundle:

- `salesforce-superpowers`

## Clone Location

```bash
mkdir -p ~/.codex/marketplaces
git clone https://github.com/punisher5700/openai-curated-codex-plugins.git ~/.codex/marketplaces/openai-curated
```

## Fastest Setup

```bash
curl -fsSL https://raw.githubusercontent.com/punisher5700/openai-curated-codex-plugins/main/scripts/setup-on-new-machine.sh | bash
```

Or, after cloning:

```bash
bash scripts/setup-on-new-machine.sh
```

## Dependencies

```bash
cd ~/.codex/marketplaces/openai-curated
bash scripts/install-dependencies.sh
bash scripts/check-dependencies.sh
```

## Codex Config

Add this marketplace to `~/.codex/config.toml`:

```toml
[marketplaces.openai-curated]
source_type = "local"
source = "/Users/<your-user>/.codex/marketplaces/openai-curated"

[plugins."salesforce-superpowers@openai-curated"]
enabled = true

[plugins."github@openai-curated"]
enabled = true

[mcp_servers.salesforce-superpowers]
command = "docker"
args = [
  "run",
  "-i",
  "--rm",
  "-v",
  "/Users/<your-user>/.codex/marketplaces/openai-curated/plugins/salesforce-superpowers/skills:/skills:ro",
  "mcp-skill-hub",
]
type = "stdio"
```

Replace `<your-user>` with the account name on that machine.

## Restart Codex

Restart Codex after changing `config.toml`.

## Updating

```bash
git -C ~/.codex/marketplaces/openai-curated pull
```
