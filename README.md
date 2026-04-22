# OpenAI Curated Local Marketplace

This is a user-managed Codex plugin marketplace.

Purpose:

- keep local plugins out of app-managed temp and cache directories
- preserve plugin source across restarts and cache refreshes
- make recovery easy if Codex plugin loading changes in the future

Recommended Salesforce developer profile:

- `salesforce-skills`
- `github`
- `superpowers`
- `salesforce-skills` MCP

Plugins currently included:

- `superpowers`
- `salesforce-skills`

Marketplace catalog:

- `.agents/plugins/marketplace.json`

Codex config points to this marketplace from:

- `~/.codex/config.toml`

Documentation:

- `INSTALL-EVERYWHERE.md`
- `docs/SETUP.md`
- `docs/MCP-SERVERS.md`
- `docs/DEPENDENCIES.md`
- `docs/REPO-CONTENTS.md`

Cross-tool bundles:

- `claude/`
- `gemini/`
- `copilot/`

Cross-tool coverage included here:

- Salesforce Skills for Codex, Claude, Gemini, and Copilot
- Superpowers for Codex, Claude, Gemini, and Copilot

Helper files:

- `scripts/install-dependencies.sh`
- `scripts/check-dependencies.sh`
- `scripts/setup-on-new-machine.sh`
- `config/config.toml.example`
