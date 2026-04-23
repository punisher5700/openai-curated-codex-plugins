# LWC Compact

Default order of choice:

1. base Lightning components
2. LDS or UI API
3. Apex controller

Keep answers short by focusing on:

- file set needed
- data source
- event contract
- security or caching caveat

Default file shape:

- `component.html`
- `component.js`
- `component.js-meta.xml`
- Apex only if LDS or UI API is insufficient

Common compact guidance:

- use `@api` only for public inputs
- use getters for simple derived UI state
- keep Apex methods cacheable when safe
- prefer SLDS utilities over custom CSS
