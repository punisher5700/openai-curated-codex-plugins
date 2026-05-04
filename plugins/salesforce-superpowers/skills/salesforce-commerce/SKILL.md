---
name: salesforce-commerce
description: "Design and troubleshoot Salesforce commerce scenarios across storefront integration, pricing, catalog, checkout flows, order lifecycle, customer identity, and CRM or external system connectivity."
---

# Salesforce Commerce

Design commerce flows around catalog integrity, checkout resilience, and downstream order correctness.

## Focus

- Catalog, pricing, promotions, and inventory interactions
- Checkout, payment, order, and fulfillment boundaries
- Customer identity and account linkage
- CRM, OMS, ERP, and middleware integration
- B2C Commerce CLI, SDK, sandbox cloning, Managed Runtime, eCDN, SLAS, SCAPI, and OCAPI migration boundaries
- Operational resilience and customer-facing failure handling

## Rules

- Keep commerce transactions isolated from fragile synchronous dependencies.
- Define ownership for inventory, pricing, and order truth.
- Design visible fallback and recovery paths for checkout-critical failures.
- For B2C Commerce developer workflows, prefer the Salesforce-supported `@salesforce/b2c-cli` and `@salesforce/b2c-tooling-sdk` for automation before maintaining custom portal/WebDAV scripts.
- Treat B2C on-demand sandbox cloning as a fast environment reproduction path, but require post-clone checks for tenant-specific configuration, aliases, site preferences, and hybrid SLAS settings.
- Prefer SCAPI-first B2C designs and use OCAPI only where current platform coverage requires it.
- For agent-assisted B2C work, call out CLI safety levels such as `READ_ONLY`, `NO_UPDATE`, or `NO_DELETE` before allowing destructive commands.

## B2C Developer Tooling Guidance

- Use `b2c code deploy`, `b2c logs get`, and `b2c mrt tail-logs` for repeatable deployment and runtime triage.
- Use official B2C GitHub Actions for CI/CD flows such as code deployment, data import, Managed Runtime deployment, and job execution.
- Use `b2c scaffold generate` for cartridges, controllers, hooks, Custom SCAPI endpoints, job steps, and Page Designer components when the project has no stronger local generator.
- Consider the B2C DX MCP server (`@salesforce/b2c-dx-mcp`) only for B2C-specific coding-agent workflows such as cartridge management, MRT work, Custom SCAPI scaffolding, Storefront Next components, Page Designer decorators, and site theming.

## Required Output

1. Commerce domain ownership
2. Checkout and order flow
3. Integration boundaries
4. Failure handling plan
5. Operational considerations
