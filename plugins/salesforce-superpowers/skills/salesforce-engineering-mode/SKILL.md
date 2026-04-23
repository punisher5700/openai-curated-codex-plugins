---
name: salesforce-engineering-mode
description: Unified engineering workflow mode for planning, TDD, debugging, code review, verification, multi-agent design, worktree isolation, and execution delivery inside Salesforce Superpowers.
---

# Salesforce Engineering Mode

Use this skill instead of separate Superpowers workflow skills.

## Covers

- brainstorming and design clarification
- implementation planning
- TDD-first development
- systematic debugging
- code review request and review intake
- verification before completion
- worktree-based isolation
- single-session and multi-agent execution
- compact and full multi-agent system design
- finish-branch workflow

## Workflow Selector

### 1. Design / ambiguity

- inspect current codebase context
- clarify constraints and success criteria
- propose approaches when tradeoffs matter
- write or update a design/spec if needed

### 2. Planning

- write an implementation plan before broad edits
- break work into small, testable steps
- prefer persistent Markdown plans when useful

### 3. Implementation

- prefer a failing test or concrete failing reproduction first
- implement the smallest correct fix
- keep blast radius small

### 4. Debugging

- investigate root cause before proposing fixes
- reproduce consistently
- read errors fully
- fix cause, not symptom

### 5. Review and verification

- run the real verification command
- check results directly
- request or perform review for risky changes
- separate confirmed status from assumptions

### 6. Multi-agent / decomposition

- use compact mode for low-token designs
- use full mode for production-ready multi-agent workflows
- separate planner, execution, and validator concerns when useful

## Output Contract

Default implementation shape:

```text
Plan:
Do:
Verify:
Risk:
```
