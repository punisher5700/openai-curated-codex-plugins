---
name: salesforce-flow
description: "Design and troubleshoot Salesforce Flow solutions across record-triggered, screen, autolaunched, scheduled, and orchestrated automation, including invocable Apex boundaries, scale limits, and maintainability."
---

# Salesforce Flow

Use Flow where it remains understandable and durable under expected scale.

## Focus

- Record-triggered, screen, scheduled, and autolaunched Flows
- Flow orchestration and approval-adjacent automation
- Prompt Builder Structured Outputs and typed response mapping
- Invocable Apex boundaries
- Element count, query behavior, transaction timing, and maintainability risks
- Flow debugging, recursion, and collision with other automation

## Rules

- Keep Flow responsible for orchestration when logic is still readable.
- When invoking Prompt Builder templates from Flow, use Structured Outputs with object-based Lightning types when the automation needs predictable fields.
- Add Decision or validation steps for AI-returned values; structured JSON only proves shape, not correctness.
- Avoid changing live Lightning response types in place when Flows already consume their fields.
- Move complex branching, bulk-heavy logic, or reusable domain rules into Apex.
- Be explicit about before-save vs after-save tradeoffs.
- Call out automation collisions across validation, triggers, and other Flows.

## Required Output

1. Trigger model
2. Flow type and timing
3. Declarative vs Apex boundary
4. Scale and maintainability risks
5. Error handling and debug approach
