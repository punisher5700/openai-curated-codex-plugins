---
name: salesforce-safe-change
description: Use before recommending or making Salesforce code, automation, deployment, integration, or data changes when blast radius, security, rollback, tests, org-specific dependencies, or production safety matters.
---

# Salesforce Safe Change

Use this skill as a lightweight safety gate before Salesforce changes.

## Goal

Catch risks before the change is trusted.

## Check

Apply only relevant items:

- data mutation risk
- CRUD/FLS/sharing risk
- guest or external user exposure
- SOQL/DML in loops
- governor limit risk
- recursion or automation collision
- mixed DML
- record locking
- sync vs async boundary
- integration retry and idempotency
- deployment/package impact
- rollback path
- test coverage

## Output Shape

Use:

```text
Safe path:
Risks:
Verify:
Rollback:
```

Keep it short.

## Rules

- Do not block on theoretical risks.
- Do block or warn on risks that can corrupt data, expose data, fail deployment, or break automation.
- If org-specific context is missing, state exactly what is needed.
