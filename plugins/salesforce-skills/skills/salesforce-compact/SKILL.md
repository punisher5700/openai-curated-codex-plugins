---
name: salesforce-compact
description: "Use for low-token Salesforce development help across Apex, LWC, Flow, integrations, deployments, and debugging when the goal is to minimize prompt and response size without losing production-safe guidance. Use when Codex should assume standard Salesforce engineering defaults, answer tersely, prefer concrete fixes over long explanations, and load deeper Salesforce references only when needed."
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

## Default Operating Mode

Unless the user asks for depth, do all of the following:

1. Answer tersely.
2. Lead with the recommended implementation or fix.
3. Skip long background explanations.
4. Use standard Salesforce defaults instead of re-explaining them.
5. Prefer examples, diffs, or code over theory.
6. Escalate detail only when architecture risk, limits, security, or integration boundaries require it.

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
- Avoid Salesforce marketing language.
- Avoid repeating platform basics the user already implied.
- Do not add optional ideas unless they materially improve correctness or scale.
- If the user asks for “best”, choose one path rather than listing many.

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
