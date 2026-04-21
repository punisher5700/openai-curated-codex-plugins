---
name: salesforce-flow
description: "Design and troubleshoot Salesforce Flow solutions across record-triggered, screen, autolaunched, scheduled, and orchestrated automation, including invocable Apex boundaries, scale limits, and maintainability."
---

# Salesforce Flow

Use Flow where it remains understandable and durable under expected scale.

## Focus

- Record-triggered, screen, scheduled, and autolaunched Flows
- Flow orchestration and approval-adjacent automation
- Invocable Apex boundaries
- Element count, query behavior, transaction timing, and maintainability risks
- Flow debugging, recursion, and collision with other automation

## Rules

- Keep Flow responsible for orchestration when logic is still readable.
- Move complex branching, bulk-heavy logic, or reusable domain rules into Apex.
- Be explicit about before-save vs after-save tradeoffs.
- Call out automation collisions across validation, triggers, and other Flows.

## Required Output

1. Trigger model
2. Flow type and timing
3. Declarative vs Apex boundary
4. Scale and maintainability risks
5. Error handling and debug approach
