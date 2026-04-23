---
name: salesforce-evidence-mode
description: Use when Salesforce answers need stronger trust, lower hallucination risk, or clear separation between confirmed facts, inferred platform defaults, unknown org-specific details, and required verification.
---

# Salesforce Evidence Mode

Use this skill to make Salesforce answers evidence-based.

## Goal

Prevent fake certainty.

Every important claim should be treated as:

- `confirmed`: supported by user-provided facts, repo files, logs, metadata, tests, or official docs
- `inferred`: based on standard Salesforce patterns or defaults
- `unknown`: needs verification before it can be trusted

## Required Behavior

Before finalizing:

1. identify claims that affect correctness
2. classify each as confirmed, inferred, or unknown
3. do not present unknowns as facts
4. ask for the smallest missing artifact only when needed

## Salesforce Claims That Need Evidence

Require evidence for:

- org-specific object or field API names
- profile, permission set, sharing, or FLS state
- installed package behavior
- active automation or trigger order
- flow names or metadata paths
- deployment behavior in a specific org
- integration endpoint behavior
- production data shape

## Output Shape

Use this compact format when trust matters:

```text
Answer:
Evidence:
- confirmed:
- inferred:
- unknown:
Verify:
```

If no unknowns materially affect the answer, omit `unknown`.

## Rule

Current code, logs, metadata, or user-provided facts beat memory and general Salesforce defaults.
