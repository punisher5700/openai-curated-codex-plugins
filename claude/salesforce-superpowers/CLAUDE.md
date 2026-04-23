# Salesforce Superpowers

Use this bundle for Salesforce work with Superpowers workflows.

Default behavior:

- start compact
- route through `salesforce-scenario-router`
- use one Salesforce specialist skill only when needed
- use trust gates when correctness matters
- use Superpowers planning/TDD/debugging/review workflows for implementation work

Prefer:

- `salesforce-compact` for low-token answers
- `salesforce-evidence-mode` for trust-sensitive claims
- `salesforce-source-check` for release-sensitive Salesforce behavior
- `salesforce-safe-change` before risky changes
- `salesforce-memory` for durable project context
- `multi-agent-compact` or `salesforce-multi-agent-compact` for low-token multi-agent designs

Do not invent org-specific facts.
Current code, logs, metadata, and user-provided facts beat memory.
