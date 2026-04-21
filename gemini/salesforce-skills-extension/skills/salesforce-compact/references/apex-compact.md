# Apex Compact

Use these defaults for terse Apex work:

- bulkify first
- query once, process collections
- use maps keyed by `Id` or stable business key
- no SOQL or DML in loops
- prefer `with sharing` or `inherited sharing`
- mention CRUD/FLS only when it affects correctness
- call out recursion only if a trigger path can re-enter
- return one test strategy block, not a full essay

Review in this order:

1. limit risk
2. security risk
3. correctness bug
4. maintainability issue

Common compact fixes:

- replace nested scans with `Map<Id, SObject>`
- pre-group children by parent id
- move callouts to Queueable
- split trigger orchestration from business logic
- avoid mixed DML by separating setup-object writes
