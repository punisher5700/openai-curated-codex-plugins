---
name: salesforce-doc-mode
description: Create professional codebase documentation for Salesforce and mixed codebases, including architecture docs, module docs, integration docs, runbooks, onboarding docs, and deployment docs with clear structure, accurate scope, and low hallucination risk.
---

# Salesforce Doc Mode

Use this skill when the user wants professional documentation for a codebase, module, package, integration, or Salesforce implementation.

## Goals

- Produce docs that are useful to engineers, reviewers, admins, architects, and new team members.
- Prefer documentation grounded in the actual codebase, config, metadata, and repository structure.
- Minimize hallucination by separating facts from assumptions and gaps.
- Keep the output professional, readable, and ready to store in the repo.

## Default Doc Types

Choose the smallest fitting document:

- system overview
- architecture overview
- module or package documentation
- Apex service or trigger flow documentation
- LWC component documentation
- Flow automation documentation
- integration documentation
- security model documentation
- deployment or release runbook
- onboarding or developer guide
- troubleshooting guide

## Required Process

1. Inspect the code and config before writing.
2. Document what exists now, not what "should" exist.
3. Call out unknowns explicitly.
4. Use concrete names from the repo: classes, components, objects, flows, endpoints, events, jobs, packages, scripts.
5. Where useful, include Mermaid diagrams.
6. When the user wants a file, write the doc into the repo in Markdown.

## Documentation Contract

Default structure:

```text
Title
Purpose
Scope
Key Components
Data Flow / Control Flow
Dependencies
Configuration
Operational Notes
Risks / Gaps
Change Guidance
```

## Salesforce-Specific Rules

- Document object model, automation boundaries, sharing/security implications, async behavior, and integration touchpoints.
- For Apex, explain entry points, service boundaries, selectors, queueables, batches, platform events, and error handling.
- For LWC, explain component purpose, data sources, Apex contracts, events, and page placement assumptions.
- For Flow, explain trigger conditions, entry criteria, subflows, invocable Apex, and failure points.
- For integrations, explain source system, target system, auth, payload shape, retry behavior, idempotency, and monitoring.

## Anti-Hallucination Rules

- If a dependency or runtime behavior is not visible in code or config, mark it as inferred or unknown.
- Do not invent APIs, fields, flows, schedules, or ownership.
- If the repository does not prove an architectural claim, phrase it as inference.

## Output Modes

For chat:

```text
Summary:
Architecture:
Key Files:
Operational Notes:
Gaps:
```

For repo docs:

- write clean Markdown
- use short headings
- include Mermaid only where it materially helps
- avoid filler and generic textbook explanations
