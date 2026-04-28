---
name: salesforce-agentforce
description: "Design Agentforce and Salesforce AI assistant solutions including agents, actions, orchestration, guardrails, grounding, handoffs, and experience flows. Use when the task is mainly about agent design rather than general CRM automation."
---

# Salesforce Agentforce

Design agent experiences that are grounded, governed, and operationally safe.

## Focus

- Agent scope, responsibilities, and escalation boundaries
- Subagent structure and legacy topic-to-subagent terminology mapping
- Action design and orchestration
- Builder mode choices such as canvas logic, scripted paths, and deterministic transitions
- Prompt and grounding strategy
- Prompt Builder Structured Outputs for typed Flow and Apex automations
- Data access boundaries, guardrails, and compliance controls
- Human handoff and fallback experience
- Monitoring, evaluation, and operational tuning

## Rules

- Keep agent responsibilities narrow and explicit.
- Define what the agent can read, write, trigger, and escalate.
- Ground the agent in authoritative Salesforce and external data sources.
- Call out whether grounding and action access use native Salesforce tools, Salesforce Hosted MCP, or custom APIs.
- Prefer explicit subagent transitions, action sequencing, and variable-based control when predictability matters more than open-ended prompting.
- Treat "topics" as the legacy or transition-era name for Agentforce subagents; do not infer a functional difference from the rename alone.
- For Prompt Builder automations that need machine-readable output, prefer Structured Outputs with object-based Lightning types over prompt-only JSON instructions and manual string parsing.
- Treat Structured Outputs as format enforcement, not truth enforcement; validate picklist-like values, ranges, references, and business rules in Flow or Apex.
- Version Lightning response types deliberately. Do not rename or remove fields from a live Lightning type used by downstream Flow or Apex without coordinating those automations.
- Design guardrails for destructive or sensitive actions.
- Always include human fallback paths.

## Required Output

1. Agent goal and scope
2. Required data and grounding sources
3. Action catalog
4. Guardrails and policy constraints
5. Handoff model
6. Evaluation and monitoring plan
