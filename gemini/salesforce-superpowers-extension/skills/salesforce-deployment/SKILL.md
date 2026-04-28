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
- Local CLI workflows versus org-hosted Agentforce Vibes IDE and Web Console workflows
- Agentforce ADLC paths for `.agent` authoring, safety review, deployment, observability, and improvement loops

## Rules

- Prefer repeatable automation over manual deployment steps.
- Keep package and repo boundaries aligned with team ownership and release cadence.
- Call out metadata types that behave poorly in parallel or conflict-heavy deployments.
- Separate validation, promotion, and rollback strategy.
- Be explicit about org shape, test execution scope, and dependency order.
- Treat Agentforce Vibes IDE as a developer workstation option, not a replacement for CI, package promotion, or deployment controls.
- Treat Web Console (Beta) as an in-org investigation and targeted-edit surface; production Apex editing is read-only, and non-production edits still need source control and release validation.
- For Agentforce delivery, include ADLC checks: local `.agent` validation, safety review, controlled deployment, session-trace review, and rollback or variant promotion criteria.
- Keep Agentforce Labs Quickstart and other incubation experiments out of production release assumptions unless their preview, pilot, or GA status is confirmed for the target org.

## Required Output

1. Org strategy
2. Packaging strategy
3. Deployment workflow
4. Validation and test strategy
5. Promotion and rollback approach
6. Agent lifecycle controls if relevant
7. Failure recovery guidance
