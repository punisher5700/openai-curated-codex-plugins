---
name: salesforce-agent-mode
description: Use when the user wants a low-token, low-hallucination multi-agent AI system design for Salesforce or integration work, with explicit agent roles, routing logic, Salesforce validation gates, failure handling, scalability notes, and an implementation-ready flowchart.
---

# Salesforce Agent Mode

Use this skill for Salesforce multi-agent system design with compact output and strict evidence discipline.

## Goal

Return a production-safe Salesforce multi-agent design that:

- minimizes token use
- avoids org-specific hallucination
- keeps only the material agents and loops
- stays implementable in real delivery

## Default Output

Return only:

1. `Task`
2. `Assumptions`
3. `Agents`
4. `Routing`
5. `Salesforce Gates`
6. `Fail`
7. `Scale`
8. `Flowchart`

## Default Shape

Prefer:

- 4 to 6 agents
- one main execution path
- one validator
- one refinement loop
- one escalation path

Expand only if the task truly needs more specialization.

## Agent Format

For each agent, give only:

- `Name`
- `Role`
- `Input`
- `Output`
- `Rule`

## Default Agent Pattern

Use this baseline unless the task demands a different split:

- Intake
- Planning Or Architecture
- Implementation Pool
- Salesforce Validator
- Refinement
- Release

Implementation Pool may include:

- Apex
- LWC
- Flow
- Integration
- Security
- Deployment

Keep the pool abstract unless specialization materially changes the design.

## Evidence Rules

Classify important claims as:

- `confirmed`
- `inferred`
- `unsupported`

Rules:

- do not invent org metadata, package behavior, limits, or release assumptions
- flag missing org context instead of filling gaps with guesses
- if the design depends on unsupported org facts, say so directly

## Routing Rules

Make these explicit when relevant:

- Flow vs Apex
- LDS/UI API vs Apex controller
- sync vs async
- direct integration vs middleware
- when to stop and ask for metadata, logs, screenshots, or schema details

## Salesforce Gates

Include only the relevant checks:

- Flow vs Apex choice
- bulk safety
- CRUD/FLS/sharing
- recursion or automation overlap
- mixed DML if relevant
- record locking risk if relevant
- async suitability
- integration retry or idempotency
- deployment or packaging impact

## Failure Handling

Cover only high-value failures:

- missing org or metadata context
- implementation failure
- validation failure
- operational failure if integrations or async work are involved

For each, give:

- detect
- retry or fallback
- escalate

## Scale

Mention only:

- parallel workstreams
- queue or async boundary
- artifact store or audit trail
- API or middleware rate limits

## Flowchart

Always include one compact Mermaid diagram.

Use this baseline:

```mermaid
flowchart TD
    A[Salesforce Intake] --> B{Enough context?}
    B -- No --> C[Constraint Check]
    C --> A
    B -- Yes --> D[Planning or Architecture]
    D --> E[Implementation Pool]
    E --> F[Salesforce Validator]
    F --> G{Pass?}
    G -- No --> H[Refinement]
    H --> E
    G -- Yes --> I[Release]
    E --> J[Failure Handler]
```

## Style

- compact by default
- implementation-first
- no filler
- no speculative org detail
- expand only when the user clearly wants full architecture depth
