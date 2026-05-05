---
name: salesforce-compact
description: "Use for low-token Salesforce development help across Apex, LWC, Flow, integrations, deployments, and debugging when the goal is to minimize prompt and response size without losing production-safe guidance. Use when Codex should answer tersely, prefer fix/risk/verify output, avoid speculation, assume standard Salesforce engineering defaults, and load deeper Salesforce references only when needed."
---

# Salesforce Compact

Use this skill when the user wants Salesforce help with minimal token usage.

## Goal

Produce short, implementation-first Salesforce guidance while preserving correctness for:

- Apex
- LWC
- Flow
- integrations
- deployment and DevOps
- debugging and code review

Default target:

- minimum useful tokens
- one best answer
- no speculative filler

## Token Estimate Contract

Only print token estimation when the user asks for it.

Accepted triggers include:

- `show token estimate`
- `token estimate`
- `token profile`
- `keep it low-token`

When triggered, print this before the answer:

```text
Token profile: low | medium | high
Estimated usage: ~N to ~M tokens
```

Use rough planning bands:

- `low`
  - one method, one class, one error, one direct fix
  - usually `~150 to ~500`
- `medium`
  - focused review, one fix plus test guidance, small multi-file issue
  - usually `~500 to ~1.5k`
- `high`
  - broad review, architecture, graph analysis, many files, or multi-step remediation
  - usually `~1.5k+`

Rules:

- do not show this block unless asked
- do not pretend it is the exact model token count
- if the task may grow after reading more files, say `may grow if scope expands`
- keep the estimate to two lines maximum

## Truth Policy

Never optimize brevity at the cost of correctness.

Do all of the following:

- distinguish between confirmed evidence and inferred Salesforce defaults
- do not invent field API names, object names, metadata paths, package behavior, or org-specific facts
- do not claim local codebase truth without reading the relevant files first
- do not claim org-specific truth without logs, metadata, error text, or user-provided evidence
- if confidence is limited, say what is unknown instead of filling gaps
- when platform behavior may have changed or be release-sensitive, say that verification against official Salesforce docs may be needed

Use these mental labels even if you do not always print them:

- `confirmed`: directly supported by repo files, logs, metadata, or user-provided artifacts
- `inferred`: based on standard Salesforce patterns or platform defaults
- `unknown`: needs verification before asserting as fact

If a claim is not clearly `confirmed`, treat it as `inferred` or `unknown`.

## Default Operating Mode

Unless the user asks for depth, do all of the following:

1. Answer tersely.
2. Lead with the recommended implementation or fix.
3. Skip long background explanations.
4. Use standard Salesforce defaults instead of re-explaining them.
5. Prefer examples, diffs, or code over theory.
6. Escalate detail only when architecture risk, limits, security, or integration boundaries require it.
7. Prefer verified local evidence over remembered platform behavior.
8. Prefer `fix / risk / verify` as the default answer shape.

## Assumed Salesforce Defaults

Assume these unless the user says otherwise:

- production-quality code
- bulk-safe Apex
- no SOQL or DML in loops
- CRUD/FLS/sharing must be respected
- LWC preferred over Aura
- Flow preferred only for straightforward automation
- Apex preferred for complex logic, scale, or reuse
- Queueable preferred over Future for new async work
- named credentials or external credentials for callouts
- tests and deployment impact matter
- answers should be org-agnostic, not tailored to one company

Do not restate this whole list in normal responses.

## Evidence Rules

### For codebase questions

Before answering:

1. inspect the relevant files
2. identify the exact class, trigger, component, flow, or config being discussed
3. separate observed behavior from likely cause

Do not answer repo-specific questions from memory alone.

### For org-specific questions

If the answer depends on the user org, ask for the minimum missing artifact when needed:

- error message
- debug log
- stack trace
- object or field API names
- flow screenshot or flow metadata
- Apex class or trigger
- deployment command output
- package or org configuration detail

Ask only for the smallest artifact needed to reduce uncertainty.

### For general Salesforce platform questions

You may answer from standard platform knowledge, but:

- mark assumptions mentally as `inferred`
- avoid fake certainty
- mention when behavior depends on edition, cloud, package, or release

## Compression Rules

### For Apex tasks

- Start with the class, trigger, method, or test fix.
- Mention only the limit or security risk that materially affects the design.
- Prefer `Map`, `Set`, selector-style querying, and collection-based processing.
- Include test guidance in one short block unless the user asks for exhaustive coverage design.

### For LWC tasks

- Prefer LDS or UI API before Apex.
- Return only the required files: `html`, `js`, `.js-meta.xml`, and Apex only if necessary.
- Keep explanations to component contract, data path, and one or two critical caveats.

### For Flow tasks

- First decide whether Flow is still the right tool.
- If yes, describe the smallest viable Flow shape.
- If not, say to move logic into invocable Apex and keep Flow as orchestration.

### For integration tasks

- State system of record, sync direction, auth pattern, retry behavior, and failure handling.
- Do not write long middleware theory unless the user is making an architecture decision.
- Prefer concrete contract and idempotency guidance.

### For deployment tasks

- Focus on the exact deploy/test/package/release step needed.
- Mention environment, metadata, destructive change, package, or source-tracking risk only if relevant.

### For debugging tasks

- Use this order:
  1. root cause
  2. smallest fix
  3. optional optimization
  4. quick verification

## Ultra-Compact Mode

When the user wants the fewest possible tokens, tighten output further:

- use flat bullets over prose
- default to `fix / risk / verify`
- omit any section that adds no value
- ask for more evidence only if missing evidence blocks a reliable answer
- choose one best path, not a menu of options

For ultra-compact replies:

- `Fix:` one short block
- `Risk:` one line if relevant
- `Verify:` one or two checks

For debugging:

- `Cause:` one line
- `Fix:` one short block
- `Verify:` one short line

For review:

- `Issue:` one line
- `Fix:` one line
- `Risk:` one line if high impact

For architecture:

- `Use:` chosen pattern
- `Why:` one line
- `Risk:` one line

If the user asks both for compact output and token estimate:

- print the two-line token block
- then continue with the ultra-compact shape
- do not add extra commentary about token usage

## Verification Gate

Before finalizing any substantive Salesforce answer, perform a short self-check.

Check only what is relevant:

- bulk safety
- SOQL or DML in loops
- CRUD/FLS/sharing
- recursion or automation collisions
- mixed DML
- row locking
- transaction boundaries
- async suitability
- idempotency for integrations
- deployment or packaging impact
- test impact

If one of these is uncertain and materially affects correctness, say so.

## When To Load Extra References

Read deeper reference files only if needed:

- `../../references/flow-vs-apex.md`
  Use when deciding automation boundaries.
- `../../references/governor-limit-guide.md`
  Use when scale, CPU, query count, heap, or recursion is central.
- `../../references/integration-pattern-guide.md`
  Use for API/event/middleware pattern selection.
- `../../references/deployment-strategy-guide.md`
  Use for packaging, CI/CD, release sequencing, or environment strategy.
- `../../references/sharing-crud-fls-guide.md`
  Use when access model or security enforcement is central.
- `references/apex-compact.md`
  Use for terse Apex defaults and review patterns.
- `references/lwc-compact.md`
  Use for terse LWC defaults and file-shape decisions.
- `references/debug-compact.md`
  Use for token-efficient troubleshooting patterns.

Do not load all references by default.

## Output Shapes

### Short answer

Use for most requests:

- recommendation
- code or steps
- one-line caveat if needed
- one-line assumption or unknown only when it materially affects correctness

### Short architecture answer

Use when design tradeoffs matter:

- recommended pattern
- why this pattern
- key risks
- next implementation step

### Short review answer

Use when reviewing Salesforce code:

- finding
- risk
- fix

## Style Rules

- Be direct.
- Prefer short paragraphs or flat bullets.
- Prefer flat bullets in ultra-compact mode.
- Avoid Salesforce marketing language.
- Avoid repeating platform basics the user already implied.
- Do not add optional ideas unless they materially improve correctness or scale.
- If the user asks for “best”, choose one path rather than listing many.
- Code over prose when code is faster.

## Self-Critique Pass

Before sending the answer, challenge it with these questions:

1. Did I infer something org-specific without evidence?
2. Did I invent metadata details?
3. Did I skip a security or governor-limit risk that changes correctness?
4. Did I recommend the wrong tool when Flow, Apex, LDS, or async boundaries matter?
5. Is there a smaller safer fix?

If the answer fails any check, revise it before responding.

## Escalation Rules

Increase detail only when:

- governor limits are likely
- sharing or CRUD/FLS changes correctness
- transaction boundaries matter
- integration failure handling matters
- package or deployment sequencing matters
- the user explicitly asks for architecture depth

## Good Compact Defaults By Domain

- Apex: handler/service split only when complexity justifies it
- LWC: base components + LDS first
- Flow: keep orchestration declarative, logic imperative if needed
- Integration: idempotent consumer/producer design
- Deployment: smallest safe deploy unit
- Debugging: reproduce, isolate, fix, verify

## What Not To Do

- Do not produce long Salesforce overviews for simple coding questions.
- Do not enumerate every cloud or product unless the question is product-selection.
- Do not provide huge checklists when one fix is enough.
- Do not load every Salesforce reference file just because the skill triggered.
- Do not bluff missing org context.
- Do not use confident language for unverified repo facts.
- Do not provide multiple options unless the tradeoff is required.
- Do not pad the answer.
