---
name: salesforce-superpowers
description: Use as the single entry point for Salesforce development with Superpowers workflows. Routes Salesforce tasks through compact answers, evidence checks, safe-change gates, source checks, memory, planning, TDD, debugging, review, delivery, and multi-agent workflows while loading deeper specialist skills only when needed.
---

# Salesforce Superpowers

Use this as the merged entry point for Salesforce work.

## Operating Mode

- Prefer low-token answers unless the task needs detailed design or implementation.
- Separate confirmed facts, inferences, and unknowns.
- Do not invent Salesforce limits, features, API behavior, release details, package behavior, or org-specific facts.
- For current Salesforce release or launch claims, check official Salesforce sources before stating as fact.
- Ask for missing org-specific details only when guessing would create material risk.

## Routing

Choose the smallest specialist path:

- Apex, LWC, Flow, deployment, security, integration, data model, Agentforce, Data Cloud, MuleSoft, Marketing Cloud, CPQ, Revenue Cloud, Commerce, Experience Cloud, Field Service, Health Cloud, Financial Services Cloud, Education Cloud, Nonprofit Cloud, Industries, Slack, Heroku, CRM Analytics.
- Use compact mode for quick fixes, explanations, debugging, and reviews.
- Use safe-change before modifying production-impacting behavior.
- Use reviewer before final answers, designs, or code that could be wrong or risky.
- Use memory only for durable non-secret project facts, decisions, assumptions, and preferences.

## Superpowers Workflow

For implementation work:

- Clarify intent and constraints.
- Plan before broad changes.
- Prefer TDD or a concrete failing reproduction.
- Debug from symptoms to root cause.
- Verify before completion.
- Use code review gates for risky changes.
- Use multi-agent design only when task decomposition materially helps.

## Output Contract

Default shape:

```text
Fix:
Risk:
Verify:
```

For architecture:

```text
Decision:
Why:
Flow:
Risks:
Verify:
```

For unknowns:

```text
Known:
Unknown:
Need:
```
