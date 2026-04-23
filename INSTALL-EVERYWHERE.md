# Install Everywhere

This repo now exposes one merged Salesforce developer bundle:

- `salesforce-superpowers`

It combines Salesforce Skills and Superpowers into one plugin-like package across Codex, Claude, Gemini, and Copilot.

## Support Matrix

| Capability | Codex | Claude | Gemini | Copilot |
| --- | --- | --- | --- | --- |
| Salesforce development workflows | Yes | Yes | Yes | Yes |
| Superpowers engineering workflows | Yes | Yes | Yes | Yes |
| Graphify knowledge graph workflow | Yes | Yes | Yes | Instruction-only |
| Professional documentation workflow | Yes | Yes | Yes | Yes |
| Low-token Salesforce mode | Yes | Yes | Yes | Yes |
| Trust gates and reviewer skills | Yes | Yes | Yes | Yes |
| Native Codex plugin format | Yes | No | No | No |
| MCP skill-hub mount | Yes | Yes | Partial | No |

## Codex

Use this repo as your Codex marketplace source.

Main pieces:

- `.agents/plugins/marketplace.json`
- `plugins/salesforce-superpowers`

## Claude

From the repo root:

```bash
bash claude/install-all.sh
```

Or:

```bash
bash claude/install-salesforce-superpowers.sh
```

Optional project MCP:

```bash
bash claude/create-project-mcp.sh /absolute/path/to/your/project
```

## Gemini

From the repo root:

```bash
bash gemini/install-all.sh
```

Or:

```bash
bash gemini/install-salesforce-superpowers-extension.sh
```

## Copilot

From the repo root:

```bash
bash copilot/install-all.sh /absolute/path/to/project
```

Or:

```bash
bash copilot/install-salesforce-superpowers.sh /absolute/path/to/project
```

## Included Workflow Coverage

- Salesforce architecture, Apex, LWC, Flow, integrations, deployments, security, Data Cloud, Agentforce, MuleSoft, Marketing Cloud, and industry clouds
- Salesforce compact responses, memory, evidence mode, source checks, safe-change gates, scenario routing, and final reviewer gate
- Superpowers brainstorming, planning, TDD, systematic debugging, worktrees, code review, and delivery
- Graphify knowledge graph generation, GraphRAG JSON, clustered communities, and graph audit reports
- professional codebase, architecture, module, runbook, and onboarding documentation
- Generic and Salesforce-specific multi-agent workflow design, including low-token variants

## Repo

[openai-curated-codex-plugins](https://github.com/punisher5700/openai-curated-codex-plugins)
