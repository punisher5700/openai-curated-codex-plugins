# Integration Pattern Guide

Choose based on coupling and failure tolerance:

- REST for direct request-response
- Platform Events for decoupled async workflows
- CDC for change streams
- middleware for orchestration and policy control

Always define:

- system of record
- retry behavior
- idempotency strategy
- observability
