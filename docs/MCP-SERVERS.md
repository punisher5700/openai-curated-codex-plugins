# MCP Server Notes

The merged MCP-facing bundle is:

- `salesforce-superpowers`

It mounts the unified skill directory through `mcp-skill-hub`.

The Codex plugin also includes plugin-local MCP metadata at:

```text
plugins/salesforce-superpowers/.mcp.json
```

## Codex Example

```toml
[mcp_servers.salesforce-superpowers]
command = "docker"
args = [
  "run",
  "-i",
  "--rm",
  "-v",
  "/Users/<your-user>/.codex/marketplaces/openai-curated/plugins/salesforce-superpowers/skills:/skills:ro",
  "mcp-skill-hub",
]
type = "stdio"
```

## Claude Project Example

Use:

```bash
bash claude/create-project-mcp.sh /absolute/path/to/project
```

That writes a project-local `.mcp.json` pointing to `claude/salesforce-superpowers/skills`.
