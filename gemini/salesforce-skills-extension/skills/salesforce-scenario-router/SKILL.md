---
name: salesforce-scenario-router
description: Use at the start of Salesforce work when the task may need the right specialist skill, low-token mode, memory read, evidence mode, source checking, safe-change review, or a compact answer contract.
---

# Salesforce Scenario Router

Use this skill to choose the smallest correct Salesforce workflow.

## Goal

Save tokens by loading only the needed Salesforce skill path.

## Route First

Pick one primary path:

- Apex/code issue -> `salesforce-compact`, then specialist if needed
- LWC UI issue -> `salesforce-lwc`
- Flow automation -> `salesforce-flow`
- integration/API/event/middleware -> `salesforce-integration`
- security/access -> `salesforce-security`
- deployment/package/CI -> `salesforce-deployment`
- architecture/data model -> `salesforce-architect` or `salesforce-data-model`
- debugging/root cause -> `salesforce-debugger`
- multi-agent design -> `salesforce-multi-agent-compact`
- release-sensitive platform behavior -> `salesforce-source-check`
- risky code/data/deployment change -> `salesforce-safe-change`
- previous decisions matter -> `salesforce-memory`
- hallucination risk matters -> `salesforce-evidence-mode`

## Token Rule

Default to:

1. `salesforce-compact`
2. one specialist skill only if needed
3. one trust gate only if needed
4. `salesforce-compact` answer shapes unless the user asks for detail

Avoid loading many specialist domains at once.

## Output Rule

Usually do not explain the routing.

If useful, say:

```text
Mode: compact + <specialist> + <trust gate>
```

## Escalation

Escalate only when:

- correctness depends on missing org evidence
- task spans multiple clouds or systems
- security or data mutation risk is high
- Salesforce release behavior may have changed
