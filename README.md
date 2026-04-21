# OpenAI Curated Local Marketplace

This is a user-managed Codex plugin marketplace.

Purpose:

- keep local plugins out of app-managed temp and cache directories
- preserve plugin source across restarts and cache refreshes
- make recovery easy if Codex plugin loading changes in the future

Plugins currently included:

- `superpowers`
- `caveman`
- `salesforce-skills`
- `code-review-graph`

Marketplace catalog:

- `.agents/plugins/marketplace.json`

Codex config points to this marketplace from:

- `~/.codex/config.toml`

Documentation:

- `docs/SETUP.md`
- `docs/MCP-SERVERS.md`
- `docs/DEPENDENCIES.md`
- `docs/REPO-CONTENTS.md`
