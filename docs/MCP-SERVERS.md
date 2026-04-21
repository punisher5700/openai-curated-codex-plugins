# MCP Server Notes

This repository contains one plugin-local MCP configuration and references one machine-level MCP setup.

## Plugin-local MCP

### Code Review Graph

The plugin bundle includes:

- `plugins/code-review-graph/.mcp.json`

It expects the `code-review-graph` executable to be available on the machine and launches:

```bash
code-review-graph serve
```

### Graphify

The plugin bundle includes:

- `plugins/graphify/.mcp.json`

It expects the `graphify` executable to be available on the machine and launches:

```bash
graphify . --mcp
```

## Machine-level MCP examples

Some setups may still use `~/.codex/config.toml` for machine-level MCP server registration.

Example:

```toml
[mcp_servers.code-review-graph]
command = "code-review-graph"
args = ["serve"]
type = "stdio"
```

If your Codex build fully honors plugin-local `.mcp.json`, this extra config may not be required. Keep it when needed for compatibility.

## Salesforce Skills note

The `salesforce-skills` plugin is primarily a skill bundle in this repo. If you also want a machine-level MCP setup that mounts external skill bundles via Docker, that belongs in `~/.codex/config.toml`, not inside this repository.
