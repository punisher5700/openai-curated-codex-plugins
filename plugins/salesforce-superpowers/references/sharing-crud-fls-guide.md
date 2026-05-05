# Sharing, CRUD, and FLS Guide

Three distinct concerns:

- Sharing: which records the user can access
- CRUD: which objects the user can create, read, update, delete
- FLS: which fields the user can view or edit

Do not treat one as a substitute for another.

When reviewing security:

- check record-level access
- check object permissions
- check field permissions
- check server-side enforcement strategy

## API-Version-Sensitive Apex Behavior

For Summer '26 / API 67+ work, do not rely on older Apex defaults without checking the exact API version and release status.

Review these items explicitly:

- class sharing declaration: prefer explicit `with sharing`, `without sharing`, or `inherited sharing`
- query and DML mode: confirm whether the operation should run in user mode or system mode
- SOQL/SOSL security clause: replace legacy `WITH SECURITY_ENFORCED` with `WITH USER_MODE` when API 67+ compilation is in scope
- trigger context: triggers run in system mode, so delegate access-sensitive logic to handler or service classes with explicit sharing and data-operation mode

For reviews, treat missing API version or release context as `unknown`, not as proof of old or new behavior.
