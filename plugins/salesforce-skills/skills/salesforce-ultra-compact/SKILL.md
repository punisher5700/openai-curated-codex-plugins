---
name: salesforce-ultra-compact
description: "Use for the lowest-token Salesforce development help that still aims to stay correct. Best for Apex, LWC, Flow, integration, deployment, debugging, and review tasks when the answer should be extremely terse, implementation-first, and should avoid speculation. Prefer fix/risk/verify output."
---

# Salesforce Ultra Compact

Use this skill when the user wants the shortest possible useful Salesforce answer.

## Goal

Minimize tokens while preserving practical correctness.

Primary domains:

- Apex
- LWC
- Flow
- integrations
- deployment
- debugging
- code review

## Core Mode

Default output shape:

1. fix
2. risk
3. verify

Keep each section as short as possible.

If one section is not needed, omit it.

## Hard Rules

- no long explanations
- no Salesforce overview text
- no multiple options unless required
- no speculation presented as fact
- no invented field names, object names, metadata paths, or package behavior
- no repo-specific claim without reading repo files
- no org-specific claim without evidence

## Evidence Policy

Treat claims as:

- `confirmed`
- `inferred`
- `unknown`

Do not print these labels unless they help, but reason with them internally.

If a key point is `unknown`, say what is missing in one short line.

Example:

- `Need exact field API name to verify.`
- `Need debug log to confirm row lock source.`
- `Need flow metadata or screenshot to confirm branch logic.`

## Response Shapes

### Standard

- `Fix:` one short paragraph or bullets
- `Risk:` one line if relevant
- `Verify:` one or two checks

### Debug

- `Cause:` one line
- `Fix:` one short block
- `Verify:` one short check

### Review

- `Issue:` one line
- `Fix:` one line
- `Risk:` one line if high impact

### Architecture

Only when architecture is necessary:

- `Use:` chosen pattern
- `Why:` one line
- `Risk:` one line

## Tool Choice Defaults

- simple automation: Flow
- complex or high-scale logic: Apex
- UI data access: LDS/UI API before Apex
- new async work: Queueable before Future
- high-volume processing: Batch
- integrations: named credentials or external credentials
- event-driven sync: Platform Events or CDC when appropriate

Do not restate this list in normal answers.

## Safety Checks

Before answering, quickly check only what matters:

- bulk safety
- SOQL/DML in loops
- CRUD/FLS/sharing
- recursion or duplicate automation
- mixed DML
- row locking
- async fit
- deployment impact

If one of these changes correctness, mention it in `Risk:`.

## When To Ask For More

Ask for more only when missing evidence blocks a reliable answer.

Ask for the smallest artifact:

- class or trigger
- component files
- field API name
- error text
- debug log
- deployment output
- flow screenshot or metadata

## Style

- terse
- direct
- flat bullets preferred
- code over prose when code is faster
- one best answer, not a menu

## Escalation

If the task needs deeper reasoning, use:

- `salesforce-compact` for short but safer detail
- `salesforce-reviewer` for audit
- `salesforce-architect` for deep design

## What Not To Do

- do not bluff
- do not pad
- do not hedge excessively
- do not hide uncertainty
