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

Spring '26 security and AI workflow notes:

- use external client apps for new OAuth-based integrations instead of creating new connected apps
- do not design outbound integrations around Salesforce session IDs
- use Salesforce Hosted MCP for governed external AI access to data, flows, and invocable actions
- keep DX MCP for local metadata, Apex, test, and LWC development workflows
