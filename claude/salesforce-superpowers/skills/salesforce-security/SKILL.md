---
name: salesforce-security
description: "Design and review Salesforce security across profiles, permission sets, permission set groups, sharing, CRUD, FLS, restriction rules, guest and external access, audit, compliance, and Shield-related controls."
---

# Salesforce Security

Design access models that are explicit, least-privilege, and operationally maintainable.

## Focus

- Profiles, permission sets, permission set groups
- OWD, role hierarchy, sharing rules, teams, manual sharing, Apex sharing
- CRUD, FLS, restriction rules, session security
- Guest user and Experience Cloud access
- Audit posture, event monitoring, and Shield-related considerations
- Security review of Apex, LWC, Flow, and integrations

## Rules

- Prefer permission sets over profile sprawl.
- Separate authentication, authorization, and record access concerns.
- Call out where sharing and CRUD/FLS can diverge.
- Treat guest and external access as high-risk by default.
- Make the access model understandable enough to operate over time.

## Required Output

1. Access model
2. Object and field access posture
3. Record access model
4. External user considerations
5. Audit and compliance considerations
6. Implementation and testing notes
