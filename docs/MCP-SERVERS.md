# MCP Server Notes

This repository is Salesforce-focused.

## Salesforce Skills note

The `salesforce-skills` plugin is primarily a skill bundle in this repo. If you also want a machine-level MCP setup that mounts external skill bundles via Docker, that belongs in `~/.codex/config.toml`, not inside this repository.

Example:

```toml
[mcp_servers.salesforce-skills]
command = "docker"
args = [
  "run",
  "-i",
  "--rm",
  "-v",
  "/Users/<your-user>/.codex/skill-bundles/salesforce:/skills:ro",
  "mcp-skill-hub",
]
type = "stdio"
```
