# Debug Compact

Use this order:

1. failing entry point
2. user context
3. data shape
4. automation collisions
5. limits or locking
6. smallest safe fix

Compact diagnosis patterns:

- `Too many SOQL queries`: duplicate automation, queries in loops, repeated helper calls
- `CPU time limit exceeded`: nested loops, recursion, too much sync work
- `Mixed DML`: setup and non-setup objects in same transaction
- `UNABLE_TO_LOCK_ROW`: concurrent updates, parent-child lock contention, batch overlap
- LWC data issue: stale wire cache, wrong record context, missing FLS, Apex contract mismatch
- integration failure: auth, timeout, retry duplication, non-idempotent upsert logic

Compact response format:

- root cause
- fix
- quick verify step

Evidence discipline:

- confirmed from logs or code when possible
- inferred only when evidence is incomplete
- unknown if the failure depends on org config not provided
