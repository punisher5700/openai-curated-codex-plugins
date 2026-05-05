# Security Checklist

- Profiles vs permission sets are intentional.
- CRUD, FLS, and record access are all covered.
- Apex class sharing is explicit.
- SOQL/SOSL and DML access mode is explicit for API 67+ or Summer '26-sensitive code.
- Legacy `WITH SECURITY_ENFORCED` usage has a migration or compatibility decision.
- Trigger logic does not assume trigger context enforces sharing or CRUD/FLS.
- External and guest access are reviewed separately.
- Sensitive actions are auditable.
- Apex, Flow, and LWC security implications were reviewed.
