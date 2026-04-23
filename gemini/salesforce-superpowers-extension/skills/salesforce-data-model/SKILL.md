---
name: salesforce-data-model
description: "Design Salesforce data models across standard and custom objects, ownership, relationships, reporting shape, security implications, large data volume patterns, and schema evolution. Use when the task is mainly about object design and data architecture."
---

# Salesforce Data Model

Design data models that are understandable, secure, reportable, and scalable.

## Focus

- Standard versus custom object decisions
- Lookup versus master-detail versus external relationships
- Ownership and sharing implications
- Reporting and analytics shape
- LDV considerations, archival, partitioning, and lifecycle strategy
- Schema evolution and package-safe extensibility

## Decision Rules

- Prefer standard objects when they match the business process closely enough.
- Introduce custom objects when lifecycle, ownership, security, or reporting needs diverge materially.
- Choose master-detail only when ownership inheritance and cascade behavior are clearly desired.
- Keep relationship graphs comprehensible; avoid over-normalizing operational CRM data.
- Design for both transactional use and reporting use, and call out when they conflict.

## Required Output

1. Object inventory
2. Relationship model
3. Ownership model
4. Security and sharing implications
5. Reporting implications
6. Scale and lifecycle considerations
7. Migration or rollout notes
