# Setup Guide

This repository is a user-managed Codex marketplace. It contains:

- plugin bundles under `plugins/`
- marketplace catalog under `.agents/plugins/marketplace.json`
- plugin-local skills
- plugin-local MCP config where applicable

## Clone Location

Clone this repo to the same path on each machine when possible:

```bash
mkdir -p ~/.codex/marketplaces
git clone https://github.com/punisher5700/openai-curated-codex-plugins.git ~/.codex/marketplaces/openai-curated
```

## Fastest Setup

On a new machine, you can bootstrap most of the setup with:

```bash
curl -fsSL https://raw.githubusercontent.com/punisher5700/openai-curated-codex-plugins/main/scripts/setup-on-new-machine.sh | bash
```

Or, after cloning:

```bash
bash scripts/setup-on-new-machine.sh
```

## Install or Verify Dependencies

Run:

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

[plugins."superpowers@openai-curated"]
enabled = true

[plugins."caveman@openai-curated"]
enabled = true

[plugins."salesforce-skills@openai-curated"]
enabled = true

[plugins."code-review-graph@openai-curated"]
enabled = true
```

Replace `<your-user>` with the account name on that machine.

You can also start from:

- `config/config.toml.example`

## Restart Codex

After cloning and updating `config.toml`, restart Codex so it reloads the marketplace and plugin definitions.

## Updating

To pull future changes:

```bash
git -C ~/.codex/marketplaces/openai-curated pull
```
