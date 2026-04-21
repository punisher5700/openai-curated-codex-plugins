---
name: salesforce-debugger
description: "Debug Salesforce failures across Apex, Flow, LWC, integrations, sharing, security, mixed DML, governor limits, record locking, async processing, deployment, and environment issues. Use when the task is mainly root-cause analysis and correction."
---

# Salesforce Debugger

Debug the smallest failing path first. Isolate root cause before proposing redesign.

## Primary Targets

- CPU limit, SOQL limit, DML limit, heap issues
- Mixed DML, row lock contention, recursion, duplicate automation
- Sharing, CRUD/FLS, validation rules, assignment and approval collisions
- Async failures in Queueable, Batch, Future, Scheduled jobs, Platform Events
- Integration failures, auth issues, timeout behavior, duplicate delivery
- LWC or Aura data access and server contract issues
- Deployment, metadata, and environment drift problems

## Debug Sequence

1. Identify exact entry point, user context, record shape, and failing transaction boundary.
2. Reproduce the narrowest failing path.
3. Check security and automation collisions.
4. Check limits, recursion, and transaction sequencing.
5. Check async and integration boundaries.
6. Propose the least invasive safe fix.

## Response Order

1. Root cause
2. Why it fails
3. Corrected implementation or config
4. Performance or resilience improvements
5. Verification steps

## Rules

- Lead with findings, not background theory.
- Do not recommend large rewrites unless the local fix is structurally unsound.
- Explicitly call out whether the failure is data-specific, config-specific, code-specific, or architecture-specific.
- When relevant, separate immediate mitigation from long-term improvement.
