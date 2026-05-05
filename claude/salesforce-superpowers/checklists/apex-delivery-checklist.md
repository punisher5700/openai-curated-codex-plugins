# Apex Delivery Checklist

- Trigger logic is thin and delegated.
- No SOQL or DML inside loops.
- Bulk behavior is verified for more than one record.
- Sharing model is intentional: `with sharing`, `inherited sharing`, or justified alternative.
- CRUD and FLS implications are addressed.
- API version is checked when reviewing Apex security behavior.
- SOQL/SOSL and DML access mode is intentional: user mode or justified system mode.
- `WITH SECURITY_ENFORCED` is not used in API 67+ code without a migration decision.
- Trigger access-sensitive logic is delegated to explicit handler or service classes.
- Async behavior is used only where needed.
- Tests cover happy path, bulk path, and failure path.
- Mixed DML, recursion, and lock risks were considered.
