---
name: salesforce-source-check
description: Use when Salesforce guidance is release-sensitive, documentation-sensitive, or likely to change, including limits, APIs, Agentforce, Data Cloud, Flow behavior, metadata support, CLI behavior, cloud features, and official product rules.
---

# Salesforce Source Check

Use this skill when remembered Salesforce knowledge may be stale.

## Goal

Avoid hallucinated or outdated platform claims.

## When Required

Verify against official Salesforce sources when the answer depends on:

- current limits
- current API behavior
- release-specific features
- Agentforce or AI features
- Data Cloud behavior
- Marketing Cloud or Commerce Cloud feature availability
- Flow runtime behavior
- metadata support
- Salesforce CLI behavior
- licensing or product packaging
- deprecations or renamed features

## Source Rule

Use official Salesforce sources first:

- Salesforce Help
- Salesforce Developers docs
- Salesforce release notes
- Salesforce CLI docs
- Trailhead only for conceptual learning, not final technical authority

Avoid relying on blogs, forums, or memory for release-sensitive claims.

## Output Shape

Keep it short:

```text
Answer:
Source-checked:
Verify:
```

If browsing or source access is unavailable, say:

```text
Unknown: needs official Salesforce doc check before relying on this.
```

## Token Rule

Do not quote long docs.

Summarize only the rule that affects the answer.
