# Dependencies

Some plugins in this repository expect tools to be available on the machine.

## Required or useful tools

### Core

- `git`
- Codex app

### Recommended Salesforce profile

- `docker`
- `gh`
- `graphify`

### GitHub workflows

- `gh` (GitHub CLI)

Useful for:

- cloning private repos
- authentication
- publishing updates

### Salesforce machine-level workflows

- `docker`

Useful if you also use a Docker-based MCP skill hub setup outside this repository.

### Graphify workflows

- `graphify`

Useful for:

- codebase and architecture knowledge graphs
- clustered community reports
- GraphRAG-ready JSON
- `graphify-out/` HTML, JSON, SVG, GraphML, Cypher, and audit artifacts

Install path used by the helper script:

```bash
pipx install graphifyy
```

## Not bundled here

This repo does not include machine-installed binaries. It only stores plugin source, skills, templates, references, and plugin-local config.
