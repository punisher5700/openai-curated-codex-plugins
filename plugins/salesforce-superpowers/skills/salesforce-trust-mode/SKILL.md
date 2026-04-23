---
name: salesforce-trust-mode
description: Use when a Salesforce answer or change needs low-hallucination, low-token trust gating across evidence classification, source freshness, safe-change checks, and final review before being relied on.
---

# Salesforce Trust Mode

Use this as the single trust gate for Salesforce work.

## Goal

Reduce hallucination and prevent unsafe guidance while staying compact.

## Apply When

- the answer depends on org-specific facts
- the guidance changes data, security, automation, or deployment behavior
- the topic may be release-sensitive or doc-sensitive
- a draft answer or proposed fix needs a final audit

## Evidence Model

Classify important claims as:

- `confirmed`
- `inferred`
- `unknown`

Rules:

- do not present unknowns as facts
- current repo files, logs, metadata, tests, and official docs override memory or defaults
- ask for the smallest missing artifact only when correctness depends on it

## Trust Checks

Apply only what matters:

- org-specific object or field names
- profiles, permission sets, sharing, CRUD, FLS
- package behavior
- automation order or recursion risk
- deployment/package impact
- data mutation risk
- integration retry/idempotency
- governor-limit or record-locking risk
- release-sensitive platform claims

## Source Rule

When the answer depends on current Salesforce behavior, prefer official Salesforce sources:

- Salesforce Help
- Salesforce Developers docs
- Salesforce release notes
- Salesforce CLI docs

If not verified, say so directly.

## Output Shape

Use:

```text
Answer:
Evidence:
- confirmed:
- inferred:
- unknown:
Risks:
Verify:
Rollback:
```

Omit `Rollback` if no change is being proposed.

## Review Rule

Audit the draft for:

- invented facts
- wrong tool choice
- missed security issues
- missed bulk-safety issues
- unsafe data mutation
- deployment-breaking guidance

## Style

- compact
- findings first
- no filler
- no fake certainty
