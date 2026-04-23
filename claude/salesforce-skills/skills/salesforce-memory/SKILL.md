---
name: salesforce-memory
description: Use when the user wants Salesforce work remembered across chats, wants project context saved, asks to update memory, or needs durable summaries of Salesforce decisions, org assumptions, integrations, implementation notes, risks, and preferences.
---

# Salesforce Memory

Use this skill to preserve durable Salesforce context across sessions without storing noisy raw chat.

## Goal

Maintain a compact memory file that future agents can read before Salesforce work.

Default file:

```text
SALESFORCE-AI-MEMORY.md
```

Prefer a project-local file when the memory belongs to one repo.
Prefer a user-level private file only for personal preferences that should not be committed.

## Privacy Rule

Do not silently save full chat transcripts.

Save only durable, useful summaries:

- decisions
- assumptions
- org constraints
- architecture choices
- naming conventions
- integration boundaries
- known failures and fixes
- deployment preferences
- user preferences
- reusable Salesforce patterns

Exclude unless the user explicitly asks to store them:

- secrets
- tokens
- credentials
- raw customer data
- full debug logs
- private chat transcripts
- personally sensitive data

## When To Update Memory

Update memory when:

- user says `remember this`, `save this`, `update memory`, or similar
- a durable Salesforce architecture decision is made
- a recurring org constraint is discovered
- a debugging root cause is confirmed
- a deployment or integration convention is established
- a user preference affects future Salesforce answers

Do not update memory for:

- one-off guesses
- unverified claims
- temporary brainstorming
- speculative org details

## Memory Format

Use this structure:

```markdown
# Salesforce AI Memory

## User Preferences

- ...

## Org-Agnostic Defaults

- ...

## Project Context

- ...

## Architecture Decisions

- ...

## Integration Context

- ...

## Security And Access Notes

- ...

## Deployment And DevOps Notes

- ...

## Known Issues And Fixes

- ...

## Open Questions

- ...

## Last Updated

- YYYY-MM-DD: short summary
```

## Update Rules

When updating memory:

1. read the existing memory file if it exists
2. preserve useful old content
3. add only durable context
4. mark uncertain facts as `unverified`
5. keep entries short
6. do not duplicate existing bullets

## Suggested Entry Style

Use compact bullets:

```markdown
- confirmed: Apex trigger framework uses one handler per object.
- inferred: integration likely needs idempotency key for retry-safe upserts.
- preference: user prefers low-token Salesforce answers unless depth requested.
- open: need target org API version before final deployment advice.
```

## Where To Store

Use project file:

```text
./SALESFORCE-AI-MEMORY.md
```

Use private local file when the user wants personal-only memory:

```text
~/.salesforce-ai-memory.md
```

Use repo memory only when the user wants the team or future repo agents to share it.

## Reading Memory

Before answering Salesforce questions, read memory if:

- the file exists in the current repo
- the user explicitly asks to use memory
- the question depends on previous decisions or preferences

Do not let memory override current code, logs, metadata, or user-provided facts.

Priority order:

1. current user message
2. current repo files, logs, metadata
3. memory file
4. general Salesforce defaults

## Response Shape After Updating

Return:

- `Saved:` what was stored
- `Skipped:` sensitive or non-durable items not stored, if any
- `File:` memory path

Keep it short.
