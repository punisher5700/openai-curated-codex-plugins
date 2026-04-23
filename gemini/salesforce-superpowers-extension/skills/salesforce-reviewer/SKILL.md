---
name: salesforce-reviewer
description: "Use when a Salesforce answer, design, code change, debugging conclusion, or review comment needs a final audit for hallucination risk, unsupported claims, wrong tool choice, security gaps, bulk-safety issues, deployment risk, or missing Salesforce constraints before being trusted."
---

# Salesforce Reviewer

This skill is a final-pass reviewer for Salesforce work.

Use it to challenge a draft answer, code recommendation, architecture choice, debugging conclusion, or review finding before treating it as trustworthy.

## Goal

Catch:

- hallucinated org-specific facts
- invented object or field names
- invented metadata paths
- wrong Salesforce tool choice
- missed bulk-safety issues
- missed CRUD/FLS/sharing risks
- missed automation or async side effects
- missed deployment or packaging risks
- overconfident claims with weak evidence

## Review Mode

Do not solve the task from scratch unless the draft is fundamentally unsound.

Instead:

1. inspect the proposed answer or change
2. inspect supporting files or artifacts if available
3. identify unsupported or risky claims
4. correct only what is needed
5. return a short high-signal audit

## Evidence Standard

Every important claim should be treated as one of:

- `confirmed`: directly supported by code, logs, metadata, tests, or user-provided artifacts
- `inferred`: reasonable Salesforce default or architectural inference
- `unsupported`: not backed by evidence and too specific to trust

If a key claim is `unsupported`, flag it.

## Review Questions

Always check:

1. Is the answer claiming repo-specific truth without reading repo files?
2. Is it claiming org-specific truth without logs, metadata, or explicit user evidence?
3. Does it invent field names, object names, package names, or metadata structure?
4. Did it choose the right tool: Flow, Apex, LWC, LDS/UI API, Queueable, Batch, Platform Events, middleware?
5. Did it miss a governor limit, security, automation, transaction, or deployment issue that changes correctness?

## Salesforce Audit Checklist

Apply only the relevant items:

- bulk safety
- SOQL/DML in loops
- CRUD/FLS/sharing
- recursion or duplicate automation
- mixed DML
- row lock risk
- transaction boundary correctness
- async suitability
- integration idempotency and retry behavior
- testability
- package or deployment impact

Read these when needed:

- `../../checklists/apex-delivery-checklist.md`
- `../../checklists/code-review-checklist.md`
- `../../checklists/deployment-checklist.md`
- `../../checklists/flow-checklist.md`
- `../../checklists/integration-checklist.md`
- `../../checklists/lwc-checklist.md`
- `../../checklists/security-checklist.md`

Do not load all checklists by default.

## Response Shapes

### If the draft is mostly correct

Return:

- trusted parts
- risky parts
- corrected claim or fix

### If the draft has a serious flaw

Return:

1. core issue
2. why it is unreliable
3. corrected direction
4. minimum verification needed

### If evidence is missing

Say exactly what artifact is needed:

- class or trigger
- component files
- flow screenshot or metadata
- debug log
- deployment output
- object or field API names

## Style Rules

- be direct
- findings first
- no long theory
- no fake certainty
- do not nitpick low-impact style issues before correctness risks

## Severity Rules

Treat these as high priority:

- invented facts
- wrong security advice
- wrong data mutation behavior
- bulk-safety regressions
- deployment-breaking guidance
- incorrect integration or transaction semantics

Treat these as secondary:

- style preferences
- pattern purity
- optional refactors

## Output Format

Prefer this structure:

1. trusted
2. risky
3. fix
4. verify

For code review style tasks, findings should be short and concrete.

## What Not To Do

- do not approve an answer just because it sounds plausible
- do not rewrite everything if only one claim is unsafe
- do not ignore missing evidence when correctness depends on it
- do not let brevity hide uncertainty
