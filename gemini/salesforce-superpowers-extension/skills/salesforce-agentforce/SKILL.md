---
name: salesforce-agentforce
description: "Design Agentforce and Salesforce AI assistant solutions including agents, actions, orchestration, guardrails, grounding, handoffs, and experience flows. Use when the task is mainly about agent design rather than general CRM automation."
---

# Salesforce Agentforce

Design agent experiences that are grounded, governed, and operationally safe.

## Focus

- Agent scope, responsibilities, and escalation boundaries
- Subagent structure and legacy topic-to-subagent terminology mapping
- Agent Script authoring, dialect boundaries, and deterministic control paths
- Action design and orchestration
- Builder mode choices such as canvas logic, scripted paths, and deterministic transitions
- Agentforce Experience Layer component and surface strategy
- Prompt and grounding strategy
- Prompt Builder Structured Outputs for typed Flow and Apex automations
- Data access boundaries, guardrails, and compliance controls
- Human handoff and fallback experience
- ADLC skills, local `.agent` validation, safety reviews, deployment, session traces, A/B tests, evaluation, and operational tuning

## Rules

- Keep agent responsibilities narrow and explicit.
- Define what the agent can read, write, trigger, and escalate.
- Ground the agent in authoritative Salesforce and external data sources.
- Call out whether grounding and action access use native Salesforce tools, Salesforce Hosted MCP, or custom APIs.
- Prefer explicit subagent transitions, action sequencing, and variable-based control when predictability matters more than open-ended prompting.
- Treat "topics" as the legacy or transition-era name for Agentforce subagents; do not infer a functional difference from the rename alone.
- Use Agent Script when the solution needs source-controlled agent definitions with explicit subagents, actions, variables, guardrails, transitions, or deterministic logic paths.
- Treat Agent Script dialects as platform-specific contracts: keep base-language assumptions separate from Agentforce and MuleSoft Agent Fabric extensions.
- Use ADLC skills for serious agent delivery: validate `.agent` files locally, run LLM-powered safety reviews, deploy through controlled environments, and feed production session traces back into authoring.
- Prefer OpenTelemetry-compatible session traces and controlled A/B tests when evaluating production agent behavior, regressions, or variant quality.
- Use Agentforce Experience Layer when an agent needs governed interactive components across multiple surfaces instead of rebuilding separate UI logic for each channel.
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
6. Agent definition and lifecycle plan
7. Evaluation and monitoring plan
