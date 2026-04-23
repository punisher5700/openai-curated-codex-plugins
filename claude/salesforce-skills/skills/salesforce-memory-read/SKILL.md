---
name: salesforce-memory-read
description: Use before Salesforce work when project memory may exist, when the user references previous chats or decisions, or when answers should respect saved Salesforce preferences, assumptions, known fixes, and architecture context.
---

# Salesforce Memory Read

Use this skill to read saved Salesforce memory without overloading context.

## Goal

Use durable memory when useful, but do not let memory override current evidence.

## Memory Locations

Check in this order:

1. `./SALESFORCE-AI-MEMORY.md`
2. `~/.salesforce-ai-memory.md`

Read only if:

- file exists
- user asks to use memory
- task references previous decisions
- answer depends on known project context

## Priority Order

Use this truth priority:

1. current user message
2. current repo files, logs, metadata
3. Salesforce memory
4. general Salesforce defaults

## What To Extract

Extract only relevant bullets:

- user preferences
- project context
- architecture decisions
- integration context
- security notes
- deployment notes
- known issues and fixes
- open questions

Do not load unrelated memory into the answer.

## Output Behavior

Usually do not mention memory unless it affects the answer.

If memory affects the answer, say briefly:

```text
Using memory: <one-line relevant context>
```

If memory conflicts with current evidence, trust current evidence and flag the conflict.
