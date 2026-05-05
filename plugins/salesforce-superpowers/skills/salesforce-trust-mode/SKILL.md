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
- code may contain security flaws that should be corrected before completion

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
- API version sensitive Apex execution behavior

For code review and remediation also check:

- missing CRUD/FLS enforcement
- sharing model mismatch
- unsafe dynamic SOQL/SOSL usage
- unsafe guest or external-user exposure
- insecure secrets handling
- unchecked callout endpoints or auth assumptions
- unsafe deserialization or unvalidated input where relevant
- reliance on pre-Summer '26 / pre-API 67 Apex security defaults without an explicit API-version check
- `WITH SECURITY_ENFORCED` usage in code that may compile at API 67+
- missing explicit user-mode or system-mode intent for SOQL, SOSL, DML, and Database methods when release status makes that material
- trigger logic that assumes sharing or CRUD/FLS enforcement from the trigger itself instead of delegating to explicit handler/service code

## Source Rule

When the answer depends on current Salesforce behavior, prefer official Salesforce sources:

- Salesforce Help
- Salesforce Developers docs
- Salesforce release notes
- Salesforce CLI docs

If not verified, say so directly.

## Summer '26 Apex Security Gate

Use this gate when reviewing new Apex, upgrading API versions, or answering release-sensitive Apex security questions.

Treat as release-sensitive unless the user provides the exact org release and class API version.

Check:

- whether the code is API 67 or later
- whether class sharing is explicit
- whether data operations intentionally run in user mode or system mode
- whether `WITH SECURITY_ENFORCED` must be replaced with `WITH USER_MODE`
- whether trigger handlers enforce access deliberately instead of relying on trigger context

Output compactly:

```text
API/version risk:
Security mode:
Fix:
Verify:
```

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

If the issue is a concrete code-level security or trust issue and the safe fix is clear:

- recommend the fix directly
- prefer the smallest production-safe remediation
- require verification for behavior changes

Do not claim a fix is complete unless the verification path is also stated.

## Remediation Bias

When a likely security issue is found:

- fix or recommend the fix in the same flow when the safe correction is straightforward
- do not leave known high-risk issues as "FYI" if the task is to improve or review the code
- separate confirmed flaw from suspected flaw
- state what still needs org-specific verification

## Style

- compact
- findings first
- no filler
- no fake certainty
