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
- Operational resilience and customer-facing failure handling

## Rules

- Keep commerce transactions isolated from fragile synchronous dependencies.
- Define ownership for inventory, pricing, and order truth.
- Design visible fallback and recovery paths for checkout-critical failures.

## Required Output

1. Commerce domain ownership
2. Checkout and order flow
3. Integration boundaries
4. Failure handling plan
5. Operational considerations
