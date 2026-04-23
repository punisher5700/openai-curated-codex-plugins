---
name: salesforce-design-mode
description: Use when the task is mainly Salesforce architecture, data modeling, security design, or DevOps workflow design and the answer should stay compact, scalable, and production-safe.
---

# Salesforce Design Mode

Use this as the merged design skill for architecture, data model, security, and DevOps decisions.

## Goal

Return the smallest production-safe design that satisfies scale, security, reporting, and delivery needs.

## Covers

- system and cloud architecture
- Flow vs Apex vs LWC boundaries
- data model and ownership design
- sharing, CRUD, FLS, external access
- repo, package, environment, and deployment strategy

## Decision Rules

- choose the lowest-complexity design that fits the requirement
- prefer standard platform capability before custom code
- make transaction, security, and ownership boundaries explicit
- optimize for repeatable delivery, not manual heroics
- call out where reporting shape conflicts with operational shape

## Required Checks

Apply only relevant items:

- Flow vs Apex
- sync vs async
- LDS/UI API vs Apex
- standard vs custom object
- lookup vs master-detail
- ownership and sharing impact
- CRUD/FLS posture
- guest or external-user exposure
- packaging and deployment boundaries
- environment promotion and validation strategy

## Output Shape

Use:

```text
Decision:
Why:
Design:
Security:
Delivery:
Risks:
Verify:
```

## Style

- compact
- implementation-oriented
- explicit about tradeoffs
- no speculative org detail
