---
name: salesforce-deployment
description: "Design and troubleshoot Salesforce deployment, packaging, and DevOps workflows across SFDX, scratch orgs, sandboxes, unlocked packages, metadata API deploys, CI/CD, source tracking, environment strategy, and release governance."
---

# Salesforce Deployment

Design deployment and release workflows that are repeatable, low-risk, and aligned with org topology.

## Focus

- SFDX project structure and source organization
- Scratch org and sandbox strategy
- Metadata API deployment and validation
- Unlocked packages, second-generation packaging, and release boundaries
- CI/CD pipelines, promotion paths, rollback planning, and environment drift
- Deployment failure triage and release governance

## Rules

- Prefer repeatable automation over manual deployment steps.
- Keep package and repo boundaries aligned with team ownership and release cadence.
- Call out metadata types that behave poorly in parallel or conflict-heavy deployments.
- Separate validation, promotion, and rollback strategy.
- Be explicit about org shape, test execution scope, and dependency order.

## Required Output

1. Org strategy
2. Packaging strategy
3. Deployment workflow
4. Validation and test strategy
5. Promotion and rollback approach
6. Failure recovery guidance
