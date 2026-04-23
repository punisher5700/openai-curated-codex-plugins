# Salesforce Trust Gates

This repo includes lightweight trust gates for Salesforce work.

## `salesforce-evidence-mode`

Use when an answer must separate:

- `confirmed`
- `inferred`
- `unknown`

Best for avoiding hallucinated org-specific claims.

## `salesforce-safe-change`

Use before Salesforce changes that affect:

- data
- security
- automation
- deployment
- integration behavior
- rollback

Best for production-safety checks.

## `salesforce-memory-read`

Use when previous Salesforce decisions or preferences may matter.

Memory never overrides current code, logs, metadata, or user-provided facts.

## `salesforce-scenario-router`

Use before Salesforce work to choose the smallest correct path.

Best for saving tokens by loading only one specialist and one trust gate when needed.

## `salesforce-source-check`

Use when Salesforce behavior may be release-sensitive.

Best for limits, APIs, Agentforce, Data Cloud, Flow runtime, metadata support, CLI behavior, licensing, and deprecations.

## `salesforce-answer-contract`

Use when answers should stay compact and consistent.

Default shape:

```text
Answer:
Assumptions:
Risk:
Verify:
```
