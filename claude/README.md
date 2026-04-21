# Claude Salesforce Setup

This directory packages your Salesforce skill set for Claude Code.

It provides:

- reusable Salesforce skills under `claude/salesforce-skills/skills/`
- an install script to sync them into `~/.claude/skills/`
- a helper script to create a project `.mcp.json` for the Salesforce MCP server

## Install Skills

```bash
bash claude/install-salesforce-skills.sh
```

## Install All Claude Bundles

```bash
bash claude/install-all.sh
```

Bundle catalog:

```bash
claude/claude-bundles.json
```

That syncs the bundled skills into:

```bash
~/.claude/skills/
```

## Add Salesforce MCP to a Claude project

Run this from the repo root or provide the repo path explicitly:

```bash
bash claude/create-project-mcp.sh /absolute/path/to/your/project
```

This writes a `.mcp.json` file in the target project that mounts the bundled Salesforce skills through Docker.

## Install Superpowers

```bash
bash claude/install-superpowers.sh
```

That syncs the bundled Superpowers workflows into:

```bash
~/.claude/skills/
```

## What Claude gets

- `salesforce-compact`
- `salesforce-reviewer`
- `salesforce-architect`
- all other bundled Salesforce specialist skills
- a local Docker-backed `salesforce-skills` MCP server
- Superpowers workflow skills
