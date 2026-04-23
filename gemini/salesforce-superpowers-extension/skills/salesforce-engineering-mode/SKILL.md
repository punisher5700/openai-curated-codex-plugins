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
- edge-case and limit-oriented test design
- systematic debugging
- code review request and review intake
- verification before completion
- worktree-based isolation
- single-session and multi-agent execution
- compact and full multi-agent system design
- finish-branch workflow

## Execution Policy

Default to the fastest safe execution path:

- simple:
  - one agent
  - no decomposition overhead
- moderate:
  - one planner step
  - one implementation flow
- complex:
  - one thin planner
  - parallel implementation lanes for independent slices
  - one validator lane

Only use parallel lanes when:

- write scopes do not overlap materially
- the subproblems can be described clearly
- waiting on one lane is not on the critical path for all others

Do not parallelize when:

- the task is mostly one bug in one narrow codepath
- all edits touch the same file or same method cluster
- the user only wants a quick answer

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
- when a fix changes behavior, update or add tests in the same flow

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
- do not stop at "compiles" when the task implies production safety

### 5a. Test to limit

When code quality or reliability matters, add the highest-value test matrix the code can support.

Always consider:

- happy path
- null or empty input
- bulk input
- duplicate input
- permission or sharing-sensitive path
- negative/error path
- regression case for the reported bug

For Salesforce code also consider:

- governor-sensitive batch size
- SOQL/DML volume pressure
- recursion or automation overlap
- record-locking-sensitive path if relevant
- async handoff correctness
- callout retry or failure handling if relevant

Prefer a compact test set that covers the real failure modes over many weak tests.

### 6. Multi-agent / decomposition

- use compact decomposition by default
- create the smallest useful plan first
- split by independent file set, concern, or validation stage
- separate planner, execution, and validator concerns
- prefer 2 to 4 lanes, not large swarms
- keep each lane prompt narrow to save tokens
- merge and verify centrally before claiming completion

## Default Lane Shapes

For complex implementation:

- Planner lane
  - define slices, order, and verification
- Implementation lanes
  - Apex lane
  - LWC lane
  - Flow lane
  - Integration lane
  - choose only the lanes actually needed
- Validator lane
  - test, review, trust check, deployment risk, limit-sensitive checks

For debugging:

- Reproduction lane
- Root-cause lane
- Fix lane
- Validation lane

For review-and-fix:

- Review lane
- Fix lane
- Retest lane

For test-heavy work:

- Test-design lane
- Implementation lane
- Limit/edge validator lane

## Output Contract

Default implementation shape:

```text
Plan:
Do:
Verify:
Risk:
```

For complex tasks use:

```text
Plan:
Lanes:
Merge:
Verify:
Risk:
```

For testing-heavy tasks use:

```text
Plan:
Tests:
Limits:
Verify:
Risk:
```
