---
name: salesforce-validation-mode
description: Use when Salesforce work needs a compact but rigorous fix-test-review-verify loop, including edge cases, bulk behavior, governor-sensitive checks, and final completion gates.
---

# Salesforce Validation Mode

Use this skill as the final validation lane for Salesforce work.

## Goal

Close work out safely with the smallest high-value validation set.

## Apply When

- code was changed
- behavior was fixed or refactored
- security or trust issues were corrected
- the task needs stronger confidence before completion

## Validation Sequence

Run this sequence:

1. confirm the intended behavior
2. identify the highest-risk failure modes
3. add or update the smallest useful tests
4. run the real verification command if available
5. review remaining risk before claiming done

## Test Matrix

Always consider:

- happy path
- regression case
- null or empty input
- negative or failure path

Add these when relevant:

- bulk input
- duplicate input
- sharing/permission-sensitive path
- async handoff
- integration failure or retry path
- record locking
- recursion overlap
- deployment impact

## Salesforce Limit Checks

Apply only what matters:

- SOQL/DML pressure
- CPU-heavy loops
- bulk trigger behavior
- Flow/Apex overlap
- CRUD/FLS/sharing correctness
- mixed DML
- callout sequencing

## Completion Gate

Do not claim success unless you can separate:

- `confirmed`
- `likely`
- `untested`

If a real command cannot be run, say exactly what still needs execution.

## Output Shape

Use:

```text
Fix:
Tests:
Limits:
Verify:
Residual Risk:
```

## Style

- compact
- verification-first
- no weak padding tests
- no false certainty
