---
name: salesforce-graph-mode
description: Unified graph workflow mode for codebase graphs, knowledge graphs, GraphRAG JSON, clustered communities, architecture maps, and graph-backed repo analysis inside Salesforce Superpowers.
---

# Salesforce Graph Mode

Use this skill instead of the separate Graphify skill.

## Use Cases

- architecture map for a Salesforce codebase
- dependency and module graph
- cross-document concept graph
- GraphRAG-ready JSON output
- clustered communities and graph audit report
- incremental refresh of an existing graph
- graph-backed question answering from `graphify-out/graph.json`

## Operating Rules

- default target is the current directory unless the user provides a path
- prefer graph generation when structure discovery matters more than prose summary
- preserve extracted, inferred, and ambiguous evidence boundaries
- use graph output as evidence support, not as a replacement for official Salesforce release checks

## Output Contract

```text
Scope:
Communities:
Key paths:
Artifacts:
Follow-up:
```
