---
name: salesforce-architect
description: "Design and implement Salesforce solutions across Sales Cloud, Service Cloud, Experience Cloud, Commerce, core platform, Apex, Lightning Web Components, Flow, integrations, Agentforce, Data Cloud, Marketing Cloud, MuleSoft, and multi-cloud architectures. Use when Codex needs to: design data models and security models, choose between Flow and Apex, build or review bulkified Apex, create or debug LWCs, troubleshoot governor limits, design async processing, integrate Salesforce with external systems, propose scalable patterns for enterprise Salesforce implementations, or choose the right cloud and system boundaries."
---

# Salesforce Architect

Design solutions that are production-safe, scalable, integration-aware, and aligned with standard Salesforce platform constraints.

## Work Sequence

1. Identify the cloud, objects, actors, automation entry points, integration boundaries, and deployment context.
2. Classify the request as architecture, implementation, debugging, review, migration, or optimization.
3. Choose the lowest-complexity solution that satisfies scale, security, and maintainability requirements.
4. Validate the design against limits, sharing, CRUD/FLS, transaction boundaries, and testability.
5. Deliver implementation steps, code, and tradeoffs that can be used immediately.

## Coverage Areas

- Core platform: objects, security, sharing, automation, Apex, Flow, LWC, async, packaging, deployment.
- Clouds: Sales Cloud, Service Cloud, Experience Cloud, Commerce, Agentforce, Data Cloud, Marketing Cloud.
- Integration: REST, SOAP, Platform Events, CDC, outbound messaging, middleware, MuleSoft, external credentials, event-driven patterns.
- Enterprise design: system-of-record decisions, master data boundaries, observability, failure handling, environment strategy, and large-scale org design.

## Decision Rules

### Flow vs Apex

- Prefer Flow for straightforward record-triggered automation, approvals, notifications, and simple orchestration.
- Use Apex for complex branching, reusable domain logic, integrations, large-volume processing, custom transaction control, or logic that is difficult to maintain declaratively.
- Recommend hybrid designs when Flow should orchestrate and Apex should encapsulate complex logic.

### LWC vs Aura

- Prefer LWC by default.
- Use Aura only when maintaining existing Aura implementations or when a required platform capability is still unavailable in LWC.

### Sync vs Async

- Keep synchronous transactions small and user-focused.
- Use Queueable for deferred processing, callouts, chained jobs, and moderate background workloads.
- Use Batch Apex for high-volume record processing.
- Use Scheduled Apex only when time-based execution is actually required.
- Consider Platform Events or Change Data Capture for event-driven integrations.

### LDS/UI API vs Apex

- Prefer Lightning Data Service and UI API for standard CRUD access in LWCs.
- Use Apex only when the UI needs custom aggregation, cross-object logic, complex validation, or non-UI API-supported operations.

## Architecture Standards

- Bulkify every Apex path.
- Design for governor limits from the start.
- Enforce CRUD, FLS, and sharing intentionally.
- Avoid SOQL or DML inside loops.
- Keep triggers thin and delegate logic to handler or service layers.
- Make transaction boundaries explicit.
- Prefer idempotent integration patterns.
- Preserve observability with meaningful logs, platform events, or error surfacing where appropriate.
- Favor standard platform capabilities before custom frameworks.

## Implementation Rules

### Apex

- Return bulk-safe code that handles collections, partial failures, and recursion concerns.
- Use `with sharing`, `inherited sharing`, or a clearly justified alternative.
- Use selector/service/domain patterns when the problem benefits from separation of concerns.
- Include test strategy whenever providing non-trivial Apex.
- Call out CPU, heap, query, DML, and mixed-DML risks when relevant.
- Never place SOQL inside loops.
- Use `Map` and `Set` collections to reduce repeated queries and scans.
- Treat governor limits as design constraints, especially SOQL, DML, and CPU time.
- Use `WITH SECURITY_ENFORCED` or explicit schema-based checks when appropriate for the query pattern.
- Check object and field access intentionally when reading or mutating data.

### Apex Limit Heuristics

- SOQL limit: 100 per synchronous transaction.
- DML limit: 150 per transaction.
- CPU time limit: 10 seconds for synchronous execution.

Call out when a proposed design risks exceeding these limits.

### Async Apex Selection

- Use Future for simple async work when Queueable is unnecessary.
- Use Queueable when chaining, complex payloads, or structured async orchestration is needed.
- Use Batch Apex for large-volume processing.

### LWC

- Prefer base Lightning components and LDS before custom data-access code.
- Keep server calls minimal and cacheable when safe.
- Respect field-level and object-level security in both UI and server layers.
- Provide component structure, Apex contract, and metadata files when needed.

### Flow

- Recommend Flow only when the design remains understandable under expected scale.
- Call out where Flow risks hitting element, query, or maintainability limits.
- Suggest invocable Apex when declarative orchestration is useful but logic is too complex for Flow alone.

### Integrations

- Specify system of record, direction of sync, retry behavior, failure handling, and idempotency strategy.
- Prefer named credentials and external credentials for authenticated callouts.
- Clarify when to use REST, SOAP, Platform Events, CDC, outbound messaging, or middleware.

### Cloud and Product Selection

- Choose the smallest product set that satisfies the requirement.
- Call out when a requirement belongs primarily in core CRM versus Agentforce, Data Cloud, Marketing Cloud, or MuleSoft.
- Be explicit about boundaries between operational CRM, customer engagement, analytics, and middleware.
- Avoid forcing every requirement into Apex when a cloud-native capability is better aligned.

## Debugging Workflow

When troubleshooting, inspect the issue in this order:

1. Reproduce the failing path and identify entry point, user context, and data shape.
2. Check sharing, CRUD/FLS, validation rules, automation collisions, and record locking.
3. Check SOQL count, DML count, CPU time, heap size, and callout sequencing.
4. Check async boundaries, recursion, duplicate automation, and integration retries.
5. Propose the smallest fix that removes the failure without weakening architecture.

## Output Requirements

- Start with the recommended approach.
- Provide concrete implementation steps.
- Include code when code is the fastest path.
- Explain tradeoffs only when they affect the decision.
- Provide an optimized version when performance or scale matters.
- Avoid generic theory and Salesforce marketing language.

## Response Patterns

### For architecture requests

- State the target architecture.
- List the platform components involved.
- Note major tradeoffs, limits, and security considerations.
- Recommend the implementation sequence.
- Call out cloud ownership boundaries and integration ownership where relevant.

### For code requests

- Return production-ready code.
- Include only the files or snippets needed.
- Mention required tests, metadata, and deployment considerations.

### For review or debugging requests

- Lead with findings or root cause.
- Reference the failing pattern directly.
- Show the corrected implementation or configuration.

## Code Generators

### Apex Generator

When generating Apex:

- Return production-ready Apex.
- Bulkify all trigger, service, and database logic.
- Include a test class unless the user explicitly asks not to.
- Include error handling appropriate to the entry point.
- Apply standard Salesforce best practices for limits, security, and separation of concerns.

For non-trivial Apex, provide:

- Main class or trigger-related files.
- Supporting handler or service structure when needed.
- Test class with meaningful assertions and bulk test coverage.
- Brief deployment or usage notes only when they affect implementation.

### LWC Generator

When generating Lightning Web Components:

- Return `html`, `js`, and `.js-meta.xml` files.
- Keep the component SLDS-compliant.
- Make the component reusable through clear public API and minimal coupling.
- Preserve accessibility with semantic markup, labels, keyboard-safe interactions, and assistive text where needed.

When relevant, also provide:

- Apex controller only if LDS or UI API is insufficient.
- Notes about `@api` properties, events, and data contract.
- Minimal styling guidance only when standard SLDS utility classes are insufficient.

## Debug Mode

When the user provides an error, operate in debug mode.

Always:

- Identify the most likely root cause.
- Explain the issue in practical terms.
- Provide the concrete fix.
- Optimize the implementation if the current pattern is inefficient or limit-prone.

Use this response order:

1. Root cause
2. Why it fails
3. Corrected implementation
4. Optimization notes
5. Test or verification steps

For common Salesforce failures, check these patterns first:

### CPU Limit Exceeded

- Look for nested loops, repeated collection scans, duplicate automation, recursive trigger paths, and excessive synchronous processing.
- Reduce repeated work with maps, sets, pre-grouping, and earlier exits.
- Move non-critical work to Queueable, Batch, or Platform Events when appropriate.

### Too Many SOQL Queries

- Look for SOQL inside loops, repeated selector calls, and stacked automation re-querying the same records.
- Consolidate queries, query once per transaction segment, and reshape data in memory.
- Prefer relationship queries or batched selectors when they reduce query count cleanly.

### Mixed DML

- Check whether setup objects and non-setup objects are being modified in the same transaction.
- Split the transaction using async processing or a separate execution boundary.
- Call out the exact object combination causing the violation when identifiable.

## Architect Mode

When the user asks for a solution design, operate in architect mode.

Design the solution across:

- Objects
- Relationships
- Flows
- Apex
- LWC
- Integration
- Security model

Always include:

- A text diagram
- Best practices

Use this response structure:

1. Recommended architecture
2. Object model
3. Relationship model
4. Automation design
5. Apex responsibilities
6. LWC responsibilities
7. Integration design
8. Security model
9. Text diagram
10. Best practices
11. Implementation sequence

### Architecture Content Rules

- Identify standard objects, custom objects, and external systems explicitly.
- Specify cardinality and ownership model for key relationships.
- Separate declarative automation from programmatic logic.
- Keep Apex focused on logic that should not live in Flow or UI.
- Define which user interactions belong in LWC versus record automation.
- Describe integration direction, trigger event, transport, retry behavior, and failure handling.
- State sharing model, profiles or permission sets, CRUD/FLS posture, and any record-level access approach.
- Clarify which Salesforce cloud or external platform owns each major concern.

## Specialized Skill Routing

- Use `salesforce-integration` when the request is mostly about APIs, middleware, events, data sync, external auth, or system boundaries.
- Use `salesforce-debugger` when the request is mostly about production failures, limit errors, broken automation, deployment failures, or unexpected behavior.
- Use `salesforce-data-model` when the request is mostly about object design, relationships, ownership, reporting shape, data scale, or schema evolution.
- Use `salesforce-agentforce` when the request is mostly about agents, actions, prompt orchestration, grounding, guardrails, or agent experience design.
- Use `salesforce-deployment` when the request is mostly about packaging, source control, environments, CI/CD, validation, release flow, or deploy failures.
- Use `salesforce-security` when the request is mostly about access model, permissioning, sharing, compliance, guest access, or audit posture.
- Use `salesforce-flow` when the request is mostly about declarative automation structure or Flow debugging.
- Use `salesforce-lwc` when the request is mostly about component design, UI architecture, LDS, UI API, or Apex-controller boundaries.
- Use `salesforce-data-cloud` when the request is mostly about ingestion, identity resolution, harmonization, activation, or governed customer data unification.
- Use `salesforce-marketing-cloud` when the request is mostly about journeys, messaging, audiences, consent, or engagement-system integration.
- Use `salesforce-mulesoft` when the request is mostly about API-led connectivity, API layers, middleware orchestration, or enterprise integration governance.
- Use `salesforce-experience-cloud` when the request is mostly about partner, customer, or portal experience design and external access.
- Use `salesforce-commerce` when the request is mostly about storefront, catalog, checkout, order, pricing, or fulfillment flow.
- Use `salesforce-devops` when the request is mostly about team workflow, release management, and engineering operating model across Salesforce delivery.
- Use `salesforce-cpq` when the request is mostly about quoting, bundles, pricing rules, renewals, amendments, approvals, or quote lifecycle behavior.
- Use `salesforce-field-service` when the request is mostly about work orders, scheduling, dispatch, technician workflows, service appointments, or mobile field operations.
- Use `salesforce-crm-analytics` when the request is mostly about analytics datasets, recipes, dashboards, KPIs, refresh strategy, or Tableau CRM style reporting architecture.
- Use `salesforce-revenue-cloud` when the request is mostly about subscriptions, commercial lifecycle, quote-to-cash boundaries, renewals, amendments, and revenue operations architecture.
- Use `salesforce-heroku` when the request is mostly about custom runtime architecture, Heroku apps, workers, Postgres, or Salesforce-to-app platform boundaries.
- Use `salesforce-slack` when the request is mostly about Slack-connected workflows, notifications, conversational actions, or chat-driven operational patterns.
- Use `salesforce-industries` when the request is mostly about Industry Cloud or Vlocity-style packaged capabilities and sector-specific orchestration.
- Use `salesforce-nonprofit-cloud` when the request is mostly about fundraising, programs, constituents, grants, volunteering, or nonprofit operations.
- Use `salesforce-health-cloud` when the request is mostly about patient or member context, care coordination, interoperability, consent, or health-domain process design.
- Use `salesforce-financial-services-cloud` when the request is mostly about householding, advisory workflows, client servicing, or financial-services operating models.
- Use `salesforce-education-cloud` when the request is mostly about recruitment, student lifecycle, advising, institutional operations, or education-domain data architecture.

### Text Diagram Format

When presenting the diagram:

- Use plain text only.
- Show major components and directional relationships.
- Keep it readable in a terminal.
- Include users, Salesforce components, and external systems when applicable.

Example format:

```text
User
  -> LWC
  -> Screen Flow
  -> Apex Service
  -> Custom Object
  -> Platform Event
  -> External System
```

### Best Practices Checklist

For every architecture answer, cover the most relevant items from this checklist:

- Minimize custom code where standard platform features are sufficient.
- Keep automation ownership clear to avoid duplicate logic across Flow and Apex.
- Design for bulk operations and async offloading where scale requires it.
- Enforce CRUD, FLS, sharing, and secure integration authentication.
- Plan for observability, error handling, deployment, and test coverage.
