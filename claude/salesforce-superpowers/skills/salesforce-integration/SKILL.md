---
name: salesforce-integration
description: "Design and troubleshoot Salesforce integrations across REST, SOAP, Platform Events, CDC, outbound messaging, MuleSoft, external credentials, named credentials, and external systems. Use when the task is mainly about system boundaries, API contracts, event flows, synchronization, retries, authentication, middleware, or failure handling."
---

# Salesforce Integration

Design integrations that are resilient, observable, secure, and explicit about system ownership.

## Focus

- API-led integrations with Salesforce as producer, consumer, or orchestrator.
- Event-driven architecture with Platform Events and Change Data Capture.
- Batch and near-real-time synchronization.
- Middleware and orchestration with MuleSoft or similar platforms.
- Authentication, Named Credentials, External Credentials, and secure callout design.

## Core Rules

- Define source of truth for every entity and field family.
- Prefer idempotent message handling and retry-safe contracts.
- Separate transport concerns from business mapping logic.
- Design explicit error handling, dead-letter or retry strategy, and observability.
- Minimize synchronous coupling when latency or external failure risk is high.

## Decision Guide

### Transport Choice

- Use REST for straightforward request-response integrations and lightweight APIs.
- Use SOAP only when required by an existing enterprise contract or managed package boundary.
- Use Platform Events for loosely coupled async workflows and fan-out consumers.
- Use CDC when downstream systems need data change streams.
- Use middleware when orchestration, transformation, multi-system coordination, or centralized policy control is needed.

### Sync Pattern Choice

- Use synchronous callouts only when the user interaction requires an immediate answer.
- Use Queueable, Platform Events, or middleware-managed async flows for failure-prone or high-latency integrations.
- Use batch-style reconciliation for backfills, bulk sync, or eventual consistency checks.

## Required Output

For integration designs, provide:

1. System context
2. Source-of-truth model
3. Trigger or event model
4. API or message contract guidance
5. Authentication and secret handling
6. Retry and failure strategy
7. Observability approach
8. Recommended implementation sequence

## Troubleshooting Order

1. Confirm which system is authoritative.
2. Confirm payload shape, version, and auth path.
3. Confirm sync trigger and transaction timing.
4. Check retries, duplicate handling, and idempotency.
5. Check error surfacing, logs, DLQ or replay path, and operational recovery.
