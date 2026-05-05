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
- 2026-04-27
  - Source areas reviewed: official Salesforce Developers Blog announcement for Web Console (Beta), published April 2026.
  - Added Web Console guidance for in-org debugging, logs, SOQL execution, Query Plan Inspector, Anonymous Apex, org-aware navigation, targeted Apex inspection or edits, and production read-only guardrails.
  - This mattered because Web Console changes how developers triage org-local failures and make focused non-production fixes without replacing source control, CI, packaging, or release validation.
  - Files updated: `plugins/salesforce-superpowers/README.md`, `plugins/salesforce-superpowers/skills/salesforce-superpowers/SKILL.md`, `plugins/salesforce-superpowers/skills/salesforce-deployment/SKILL.md`, `plugins/salesforce-superpowers/skills/salesforce-debugger/SKILL.md`, `claude/salesforce-superpowers/skills/salesforce-superpowers/SKILL.md`, `claude/salesforce-superpowers/skills/salesforce-deployment/SKILL.md`, `claude/salesforce-superpowers/skills/salesforce-debugger/SKILL.md`, `gemini/salesforce-superpowers-extension/skills/salesforce-superpowers/SKILL.md`, `gemini/salesforce-superpowers-extension/skills/salesforce-deployment/SKILL.md`, `gemini/salesforce-superpowers-extension/skills/salesforce-debugger/SKILL.md`, `copilot/salesforce-superpowers/.github/copilot-instructions.md`.
- 2026-04-28
  - Source areas reviewed: official Salesforce Developers Blog guidance for Prompt Builder Structured Outputs, plus Spring '26 release-note references linked from that article.
  - Added guidance for using Prompt Builder Structured Outputs with object-based Lightning types in Flow and Apex automations, including validation and response-type versioning cautions.
  - This mattered because Structured Outputs changes how developers implement AI automations: common cases can use platform-enforced typed JSON instead of prompt-only formatting instructions and custom parsing, while business validation remains required.
  - Files updated: `plugins/salesforce-superpowers/README.md`, `plugins/salesforce-superpowers/skills/salesforce-agentforce/SKILL.md`, `plugins/salesforce-superpowers/skills/salesforce-flow/SKILL.md`, `claude/salesforce-superpowers/skills/salesforce-agentforce/SKILL.md`, `claude/salesforce-superpowers/skills/salesforce-flow/SKILL.md`, `gemini/salesforce-superpowers-extension/skills/salesforce-agentforce/SKILL.md`, `gemini/salesforce-superpowers-extension/skills/salesforce-flow/SKILL.md`, `copilot/salesforce-superpowers/.github/copilot-instructions.md`.
- 2026-04-28
  - Source areas reviewed: official Salesforce TDX 2026 Agentforce Developer Platform roundup and official Salesforce development innovation recap.
  - Added guidance for Agent Script authoring, ADLC skills, `.agent` lifecycle validation, OpenTelemetry session traces, A/B testing, Agentforce Experience Layer, Salesforce Multi-framework beta, and Headless 360 API/MCP/CLI surfaces.
  - This mattered because these launches affect how developers source-control agent definitions, validate and deploy Agentforce changes, observe production behavior, design reusable agent UI, choose React versus LWC surfaces, and reason about API/MCP/CLI integration boundaries.
  - Files updated: `plugins/salesforce-superpowers/README.md`, `plugins/salesforce-superpowers/skills/salesforce-agentforce/SKILL.md`, `plugins/salesforce-superpowers/skills/salesforce-lwc/SKILL.md`, `plugins/salesforce-superpowers/skills/salesforce-deployment/SKILL.md`, `plugins/salesforce-superpowers/skills/salesforce-superpowers/SKILL.md`, `claude/salesforce-superpowers/skills/salesforce-agentforce/SKILL.md`, `claude/salesforce-superpowers/skills/salesforce-lwc/SKILL.md`, `claude/salesforce-superpowers/skills/salesforce-deployment/SKILL.md`, `claude/salesforce-superpowers/skills/salesforce-superpowers/SKILL.md`, `gemini/salesforce-superpowers-extension/skills/salesforce-agentforce/SKILL.md`, `gemini/salesforce-superpowers-extension/skills/salesforce-lwc/SKILL.md`, `gemini/salesforce-superpowers-extension/skills/salesforce-deployment/SKILL.md`, `gemini/salesforce-superpowers-extension/skills/salesforce-superpowers/SKILL.md`, `copilot/salesforce-superpowers/.github/copilot-instructions.md`.
- 2026-05-04
  - Source areas reviewed: official Salesforce Developers Blog announcement for B2C Commerce CLI, SDK, on-demand sandbox cloning, official GitHub Actions, agent skills, and B2C DX MCP; official Salesforce Developers Blog Hosted MCP GA announcement was also reviewed and found already substantially covered by prior Hosted MCP guidance.
  - Added B2C Commerce developer tooling guidance for `@salesforce/b2c-cli`, `@salesforce/b2c-tooling-sdk`, official B2C GitHub Actions, SCAPI-first workflows, on-demand sandbox cloning, CLI safety levels, and B2C DX MCP boundaries.
  - This mattered because B2C Commerce teams can replace brittle custom scripts and slow manual sandbox setup with Salesforce-supported CLI/SDK/GitHub Actions/MCP workflows, while preserving safety gates for agent-assisted operations and post-clone environment validation.
  - Files updated: `plugins/salesforce-superpowers/README.md`, `plugins/salesforce-superpowers/skills/salesforce-commerce/SKILL.md`, `plugins/salesforce-superpowers/skills/salesforce-integration/SKILL.md`, `plugins/salesforce-superpowers/skills/salesforce-superpowers/SKILL.md`, `claude/salesforce-superpowers/README.md`, `claude/salesforce-superpowers/skills/salesforce-commerce/SKILL.md`, `claude/salesforce-superpowers/skills/salesforce-integration/SKILL.md`, `claude/salesforce-superpowers/skills/salesforce-superpowers/SKILL.md`, `gemini/salesforce-superpowers-extension/README.md`, `gemini/salesforce-superpowers-extension/skills/salesforce-commerce/SKILL.md`, `gemini/salesforce-superpowers-extension/skills/salesforce-integration/SKILL.md`, `gemini/salesforce-superpowers-extension/skills/salesforce-superpowers/SKILL.md`, `copilot/salesforce-superpowers/.github/copilot-instructions.md`.
- 2026-05-05
  - Source areas reviewed: official Salesforce Summer '26 preview release notes, official Salesforce Developers Blog posts for Developer Edition Agentforce Vibes IDE and Hosted MCP, Salesforce Multi-Framework open beta, Web Console beta, and Agentforce developer documentation.
  - Added Summer '26 / API 67 Apex security-default guidance for code review, compact answers, trust gating, validation, and shared CRUD/FLS/sharing reference material.
  - This mattered because the Summer '26 preview includes developer-impacting Apex behavior around user-mode versus system-mode data operations, default class sharing behavior, `WITH SECURITY_ENFORCED` compatibility, and trigger system-mode expectations.
  - Files updated: `plugins/salesforce-superpowers/README.md`, `plugins/salesforce-superpowers/skills/salesforce-superpowers/SKILL.md`, `plugins/salesforce-superpowers/skills/salesforce-trust-mode/SKILL.md`, `plugins/salesforce-superpowers/skills/salesforce-compact/SKILL.md`, `plugins/salesforce-superpowers/skills/salesforce-validation-mode/SKILL.md`, `plugins/salesforce-superpowers/references/sharing-crud-fls-guide.md`, plus synced Claude and Gemini bundle copies.
- 2026-05-05
  - Source areas reviewed: same Summer '26 / API 67 Apex security-default review, applied to reusable development artifacts.
  - Updated Apex templates and delivery/security/code-review checklists to show explicit user-mode SOQL/DML patterns and API-version-sensitive review gates.
  - This mattered because examples and checklists should reinforce the same secure-by-default guidance as the skills, especially for `WITH USER_MODE`, `AccessLevel.USER_MODE`, `WITH SECURITY_ENFORCED` migration decisions, and trigger handler security assumptions.
  - Files updated: `plugins/salesforce-superpowers/templates/*`, `plugins/salesforce-superpowers/checklists/*`, plus synced Claude and Gemini bundle copies.
