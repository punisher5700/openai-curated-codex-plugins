# Salesforce Skills for Gemini

This extension provides Salesforce-focused agent skills and a bundled Salesforce MCP server.

Preferred workflow:

- use `salesforce-compact` for most tasks
- use `salesforce-reviewer` for final audit
- use `salesforce-architect` for deeper architecture work

Behavior expectations:

- be terse by default
- prefer implementation over theory
- do not invent org-specific facts
- distinguish confirmed evidence from inferred Salesforce defaults
- ask for the smallest missing artifact when confidence is limited
