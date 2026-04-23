# Claude Salesforce Superpowers Setup

This directory packages the merged Salesforce Superpowers bundle for Claude Code.

It provides:

- reusable skills under `claude/salesforce-superpowers/skills/`
- a Claude plugin-like manifest under `claude/salesforce-superpowers/.claude-plugin/`
- an install script to sync skills into `~/.claude/skills/`
- a helper script to create a project `.mcp.json`

## Install

```bash
bash claude/install-all.sh
```

Or:

```bash
bash claude/install-salesforce-superpowers.sh
```

## Add Project MCP

```bash
bash claude/create-project-mcp.sh /absolute/path/to/your/project
```

## What Claude Gets

- Salesforce specialist skills
- low-token Salesforce mode
- hallucination-reduction reviewer and evidence gates
- Salesforce memory and source-check workflows
- Superpowers planning, TDD, debugging, review, and delivery workflows
- Graphify knowledge graph and GraphRAG workflows
- local Docker-backed `salesforce-superpowers` MCP server config
