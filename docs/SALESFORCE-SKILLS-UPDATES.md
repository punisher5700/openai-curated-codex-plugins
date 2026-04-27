# Salesforce Skills Updates

This file tracks meaningful updates made to the Salesforce content inside the `salesforce-superpowers` plugin.

Use this log when the plugin is updated because of:

- new Salesforce product launches
- release changes
- platform capability changes
- new cloud or integration features
- high-signal improvements to plugin skills, references, templates, checklists, or metadata

## Log Format

For each update, append:

- date
- source or release area reviewed
- summary of what changed in the plugin
- why the change mattered
- files updated

## Entries

- 2026-04-21
  - Initialized update log for automated Salesforce Skills maintenance.
- 2026-04-23
  - Merged Salesforce Skills and Superpowers into `salesforce-superpowers`.
  - Kept Salesforce update tracking focused on development-relevant official Salesforce changes.
- 2026-04-26
  - Source areas reviewed: Salesforce Developers Blog Spring '26 developer release guide; Salesforce Developers Blog April 2026 Developer Edition and Hosted MCP announcement.
  - Changed the merged bundle guidance to cover Agentforce Vibes IDE, Salesforce Hosted MCP versus DX MCP, new integration security defaults, Data Cloud graph-query guidance, and LWC GraphQL-first guidance.
  - This mattered because these updates change how developers choose dev environments, AI access patterns, integration auth models, and platform-native implementation paths.
  - Files updated: `plugins/salesforce-superpowers/README.md`, `plugins/salesforce-superpowers/skills/salesforce-superpowers/SKILL.md`, `plugins/salesforce-superpowers/skills/salesforce-agentforce/SKILL.md`, `plugins/salesforce-superpowers/skills/salesforce-integration/SKILL.md`, `plugins/salesforce-superpowers/skills/salesforce-deployment/SKILL.md`, `plugins/salesforce-superpowers/skills/salesforce-data-cloud/SKILL.md`, `plugins/salesforce-superpowers/skills/salesforce-lwc/SKILL.md`, `plugins/salesforce-superpowers/references/integration-pattern-guide.md`.
- 2026-04-27
  - Source areas reviewed: official Salesforce Agentforce Developer Guide pages for Agentforce APIs and SDKs and Agentforce getting started.
  - Changed Agentforce guidance to prefer the current `subagents` terminology while recognizing `topics` as the legacy or transition-era term.
  - This mattered because developer docs, Agentforce Builder, Agentforce DX, and implementation artifacts can contain both terms during the April 2026 transition, and the bundle should avoid implying a functional difference where Salesforce says there is none.
  - Files updated: `plugins/salesforce-superpowers/README.md`, `plugins/salesforce-superpowers/skills/salesforce-agentforce/SKILL.md`, `claude/salesforce-superpowers/skills/salesforce-agentforce/SKILL.md`, `gemini/salesforce-superpowers-extension/skills/salesforce-agentforce/SKILL.md`.
