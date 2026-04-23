# Apex Delivery Checklist

- Trigger logic is thin and delegated.
- No SOQL or DML inside loops.
- Bulk behavior is verified for more than one record.
- Sharing model is intentional: `with sharing`, `inherited sharing`, or justified alternative.
- CRUD and FLS implications are addressed.
- Async behavior is used only where needed.
- Tests cover happy path, bulk path, and failure path.
- Mixed DML, recursion, and lock risks were considered.
