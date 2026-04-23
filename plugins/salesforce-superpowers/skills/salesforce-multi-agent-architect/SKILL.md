---
name: salesforce-multi-agent-architect
description: Use when the user wants a multi-agent AI system designed for Salesforce or integration work, including agent roles, task routing, validation, refinement loops, failure handling, optimization, scalability, and an implementation-ready flowchart.
---

# Salesforce Multi-Agent Architect

Design multi-agent systems for Salesforce, integration, and enterprise delivery work without inventing org-specific facts.

## Goal

Return a production-oriented multi-agent design for a Salesforce-related task with:

- agent roles
- inputs and outputs
- routing logic
- validation and review loops
- failure handling
- optimization strategy
- scalability design
- Mermaid flowchart

## Default Sections

Always return:

1. `Task`
2. `Assumptions`
3. `Agents`
4. `Routing Logic`
5. `Salesforce Validation Gates`
6. `Failure Handling`
7. `Optimization`
8. `Scalability`
9. `Flowchart`
10. `Implementation Notes`

## Salesforce Agent Set

Use the relevant subset for the task.

### Intake Agent

- normalizes the business or technical request
- identifies cloud, artifact type, and integration boundaries

### Requirements And Constraint Agent

- extracts org constraints, security expectations, non-functional requirements, and missing inputs
- flags unsupported org-specific assumptions

### Architecture Agent

- chooses the main pattern
- decides boundaries between Flow, Apex, LWC, Platform Events, middleware, Data Cloud, MuleSoft, or external systems

### Decomposition Agent

- breaks work into metadata, code, integration, validation, and deployment units
- identifies serial and parallel work

### Implementation Agent Pool

Specialize by task:

- Apex agent
- LWC agent
- Flow agent
- Integration agent
- Security agent
- Deployment agent

### Reviewer Or Validator Agent

- checks technical correctness
- checks Salesforce constraints
- checks whether the result is supported versus inferred

### Refinement Agent

- converts review findings into targeted rework
- loops only the failing work unit back to the right implementation agent

### Release Or Finalizer Agent

- assembles approved deliverables
- produces deployment, testing, and rollout notes

## Salesforce Decision Rules

Always make these decisions explicit:

- when to use Flow versus Apex
- when to use LDS/UI API versus Apex controllers
- when to use sync versus async processing
- when to use direct integration versus middleware
- when to stop and request org metadata, logs, or screenshots

## Evidence Standard

Classify important claims as:

- `confirmed`
- `inferred`
- `unsupported`

Never let the design depend on `unsupported` org-specific details without flagging them.

## Salesforce Validation Gates

Apply the relevant checks:

- bulk safety
- CRUD/FLS/sharing
- recursion and automation overlap
- mixed DML
- record locking risk
- async suitability
- integration idempotency and retry behavior
- deployment and packaging impact
- testability
- org or cloud boundary correctness

## Failure Handling

Always include:

### Metadata failure

- missing object or field definitions
- missing flow or package context
- unresolved org assumptions

### Execution failure

- Apex compilation issues
- deployment failures
- integration auth or timeout failures
- event delivery or async queue failures

### Validation failure

- wrong tool choice
- unsafe data mutation logic
- missing security checks
- non-bulk-safe implementation

### Operational failure

- rate limits
- job backlog
- API exhaustion
- middleware or downstream outage

For each failure, define:

- how it is detected
- retry or fallback path
- escalation condition

## Optimization

Consider:

- batching record work
- reducing agent context size
- separating architecture review from implementation review
- parallelizing independent metadata and code tasks
- caching reusable org-neutral patterns
- using a cheap screening validator before a deeper review pass

## Scalability

Address:

- parallel execution for independent workstreams
- queue design for async work
- artifact store for prompts, diffs, validation reports, and deployment outputs
- audit trail for approvals and retries
- rate limiting for APIs and middleware
- isolation between org-specific data and reusable platform logic

## Flowchart

Always include Mermaid and adapt labels to the actual task.

Use this baseline:

```mermaid
flowchart TD
    A[Salesforce Intake Agent] --> B{Enough org and task context?}
    B -- No --> C[Requirements And Constraint Agent]
    C --> A
    B -- Yes --> D[Architecture Agent]
    D --> E[Decomposition Agent]
    E --> F[Implementation Agent Pool]
    F --> G[Reviewer Or Validator Agent]
    G --> H{Pass Salesforce gates?}
    H -- No --> I[Refinement Agent]
    I --> F
    H -- Yes --> J[Release Or Finalizer Agent]
    F --> K[Failure Handler]
    K --> D
```

## Implementation Notes

End with:

- orchestration pattern
- artifact handoff format
- retry budget
- approval points
- minimum logs, metadata, or config required

## Style

- do not invent org-specific facts
- keep routing logic explicit
- design for real delivery, not toy diagrams
- prefer durable patterns that work across many Salesforce teams
