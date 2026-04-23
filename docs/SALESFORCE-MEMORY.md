# Salesforce Memory

The `salesforce-memory` skill adds an opt-in memory workflow for Salesforce work.

It is designed to remember durable context, not raw chats.

Store:

- architecture decisions
- org assumptions
- integration boundaries
- deployment preferences
- known issues and fixes
- user preferences
- open questions

Do not store by default:

- secrets
- credentials
- tokens
- private customer data
- full chat transcripts
- full debug logs

Default project memory file:

```text
SALESFORCE-AI-MEMORY.md
```

Template:

```text
plugins/salesforce-skills/templates/SALESFORCE-AI-MEMORY.md
```

Use private local memory only when the user explicitly wants personal-only context:

```text
~/.salesforce-ai-memory.md
```
