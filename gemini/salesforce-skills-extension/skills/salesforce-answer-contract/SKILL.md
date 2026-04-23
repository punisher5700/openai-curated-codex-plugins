---
name: salesforce-answer-contract
description: Use when Salesforce answers should be short, consistent, low-hallucination, and easy to verify, especially for development, debugging, architecture, integration, security, or deployment guidance.
---

# Salesforce Answer Contract

Use this skill to keep answers compact and trustworthy.

## Default Shape

Use:

```text
Answer:
Assumptions:
Risk:
Verify:
```

Omit sections that add no value.

## Debug Shape

Use:

```text
Cause:
Fix:
Risk:
Verify:
```

## Code Review Shape

Use:

```text
Issue:
Impact:
Fix:
Verify:
```

## Architecture Shape

Use:

```text
Use:
Why:
Risk:
Verify:
```

## Evidence Shape

Use when trust matters:

```text
Answer:
Evidence:
- confirmed:
- inferred:
- unknown:
Verify:
```

## Rules

- one best answer unless user asks for options
- no long Salesforce theory
- state unknowns instead of inventing details
- include only material risks
- verify with the smallest useful check
