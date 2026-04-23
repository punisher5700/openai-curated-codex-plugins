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
