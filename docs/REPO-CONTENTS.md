# Repository Contents

## Marketplace

- `.agents/plugins/marketplace.json`
- `INSTALL-EVERYWHERE.md`

## Plugins

- `plugins/superpowers`
- `plugins/salesforce-skills`

## Cross-tool bundles

- `claude/`
- `gemini/`
- `copilot/`

Inside those:

- Salesforce Skills bundles for Claude and Gemini
- Superpowers bundles for Claude and Gemini
- Salesforce Skills bundles for Copilot
- Superpowers bundles for Copilot

## Salesforce Skills plugin extras

Inside `plugins/salesforce-skills`:

- `skills/` for domain-specialist Salesforce guidance
- `templates/` for starter development patterns
- `checklists/` for delivery and review
- `references/` for reusable implementation guidance
- includes `salesforce-memory` for opt-in durable Salesforce memory summaries
- includes `salesforce-memory-read` for selective use of saved memory
- includes `salesforce-evidence-mode` for trust classification
- includes `salesforce-safe-change` for blast-radius checks
- includes `salesforce-multi-agent-architect` for Salesforce-specific multi-agent system design
- includes `salesforce-multi-agent-compact` for low-token Salesforce multi-agent system design

Inside `plugins/superpowers`:

- includes `multi-agent-architect` for generic multi-agent system design
- includes `multi-agent-compact` for low-token generic multi-agent system design

## What this repo does not store

- your full `~/.codex/config.toml`
- unrelated machine-local plugins
- machine-installed binaries
- unrelated skills outside this marketplace repo
