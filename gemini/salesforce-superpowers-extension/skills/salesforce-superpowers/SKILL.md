---
name: salesforce-superpowers
description: Use as the single entry point for Salesforce development with merged engineering, graph, and documentation workflows. Routes Salesforce tasks through compact answers, evidence checks, safe-change gates, source checks, memory, planning, debugging, review, delivery, graph analysis, and professional doc generation while loading deeper specialist skills only when needed.
---

# Salesforce Superpowers

Use this as the merged entry point for Salesforce work.

## Operating Mode

- Prefer low-token answers unless the task needs detailed design or implementation.
- Separate confirmed facts, inferences, and unknowns.
- Do not invent Salesforce limits, features, API behavior, release details, package behavior, or org-specific facts.
- For current Salesforce release or launch claims, check official Salesforce sources before stating as fact.
- Ask for missing org-specific details only when guessing would create material risk.

## Routing

Choose the smallest specialist path:

- Apex, LWC, Flow, deployment, security, integration, data model, Agentforce, Data Cloud, MuleSoft, Marketing Cloud, CPQ, Revenue Cloud, Commerce, Experience Cloud, Field Service, Health Cloud, Financial Services Cloud, Education Cloud, Nonprofit Cloud, Industries, Slack, Heroku, CRM Analytics.
- Use compact mode for quick fixes, explanations, debugging, and reviews.
- Use `salesforce-trust-mode` when the answer or change needs evidence gating, source freshness checks, safe-change review, or final trust audit.
- Use memory only for durable non-secret project facts, decisions, assumptions, and preferences.
- Use `salesforce-graph-mode` when the task needs a knowledge graph, architecture map, codebase graph, dependency graph, cross-document analysis, GraphRAG JSON, clustered communities, or `graphify-out` artifacts.
- Use `salesforce-doc-mode` when the task is to create professional documentation for the codebase, architecture, integrations, modules, runbooks, or onboarding.
- Use `salesforce-engineering-mode` when the task needs planning, TDD, debugging, code review, verification, or branch-completion workflow help.
- Use `salesforce-agent-mode` when the task needs multi-agent system design for Salesforce or integrations and the answer should stay low-token and low-hallucination.
- Use `salesforce-design-mode` when the task is mainly architecture, data model, security design, or DevOps workflow design.
- Use `salesforce-validation-mode` when the task needs a final fix-test-review-verify loop with edge-case, bulk, or governor-sensitive validation.

## Complexity Router

Use this default complexity split:

- small task:
  - answer directly
  - keep output compact
- medium task:
  - make a short plan
  - execute in one flow
- complex task:
  - decompose into independent work units
  - run planner, implementer, and validator as separate lanes when the client supports multi-agent execution
  - keep each lane narrow to reduce token use and turnaround time

Treat a task as complex when any of these apply:

- multiple independent files or modules
- mixed Salesforce surfaces such as Apex plus LWC plus Flow plus integration
- architecture plus implementation plus validation in one request
- likely long-running debugging across several hypotheses
- code review plus fix plus retest workflow
- enough scope that sequential execution would waste time

## Engineering Workflow

For implementation work:

- Clarify intent and constraints.
- Plan before broad changes.
- Prefer TDD or a concrete failing reproduction.
- Debug from symptoms to root cause.
- Verify before completion.
- Use code review gates for risky changes.
- For complex work, prefer decomposition into planner, implementation lanes, and validator lanes.
- If the client supports subagents or worker agents, use them for independent workstreams.
- Keep shared context minimal and pass only the task slice each lane needs.
- Fall back to single-agent execution when the task is tightly coupled or the client cannot run multiple agents.

For review, remediation, and testing work:

- treat security and correctness findings as fixable work, not just commentary
- add focused tests when behavior changes or risk is non-trivial
- prefer edge-case and governor-sensitive tests over broad low-signal test volume
- use `salesforce-trust-mode` for final security/trust gating before completion

## Graph Workflow

For graph or corpus analysis:

- Prefer full graph generation for a repo or target path.
- Use incremental refreshes when a graph already exists.
- Use graph-backed query flow when an existing graph can answer with less token load.
- Preserve Graphify's extracted, inferred, and ambiguous edge labeling.
- Treat Graphify output as evidence, not as a replacement for official Salesforce source checks.

## Documentation Workflow

For professional docs:

- inspect code and config before writing
- document the current implementation, not imagined intent
- use repository names directly
- include diagrams only when they improve understanding
- mark unknowns and inferences explicitly
- prefer Markdown docs that can live in the repo

## Output Contract

Default shape:

```text
Fix:
Risk:
Verify:
```

For architecture:

```text
Decision:
Why:
Flow:
Risks:
Verify:
```

For unknowns:

```text
Known:
Unknown:
Need:
```
