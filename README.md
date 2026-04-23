# OpenAI Curated Local Marketplace

User-managed marketplace for durable Salesforce developer tooling.

## Primary Bundle

- `salesforce-superpowers`

This single bundle merges:

- Salesforce architecture, development, debugging, integration, review, memory, evidence, source-check, safe-change, and low-token skills
- Superpowers planning, TDD, debugging, code review, worktree, delivery, and multi-agent workflows
- MCP skill-hub configuration for tools that can mount the skill bundle
- Claude, Gemini, and Copilot compatible instruction bundles

## Codex

Marketplace catalog:

- `.agents/plugins/marketplace.json`

Plugin source:

- `plugins/salesforce-superpowers`

Codex config points to this marketplace from:

- `~/.codex/config.toml`

## Cross-Tool Bundles

- `claude/`
- `gemini/`
- `copilot/`

Install instructions:

- `INSTALL-EVERYWHERE.md`
- `docs/SETUP.md`
- `docs/MCP-SERVERS.md`
- `docs/DEPENDENCIES.md`
- `docs/REPO-CONTENTS.md`

Helper files:

- `scripts/install-dependencies.sh`
- `scripts/check-dependencies.sh`
- `scripts/setup-on-new-machine.sh`
- `config/config.toml.example`
