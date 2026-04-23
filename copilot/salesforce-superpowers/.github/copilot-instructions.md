# Salesforce Superpowers for GitHub Copilot

Use these instructions for Salesforce development with Superpowers workflows.

Default behavior:

- keep answers compact
- prefer one best path
- do not invent Salesforce org-specific facts
- separate confirmed facts, inferred defaults, and unknowns when trust matters
- use official Salesforce sources for release-sensitive claims
- check blast radius before data, security, automation, integration, or deployment changes
- use planning, TDD, debugging, review, and verification workflows for implementation tasks

For Salesforce:

- route through the smallest relevant Salesforce scenario
- use low-token `Fix/Risk/Verify` style unless depth is requested
- respect CRUD/FLS/sharing, bulk safety, limits, automation collisions, async boundaries, idempotency, and deployment impact

For Superpowers workflow:

- clarify non-trivial work before coding
- plan before broad changes
- test first when practical
- debug systematically
- verify before declaring complete

For multi-agent designs:

- prefer compact 4 to 6 agent workflows
- include routing, validation, failure handling, scale notes, and one Mermaid flowchart
