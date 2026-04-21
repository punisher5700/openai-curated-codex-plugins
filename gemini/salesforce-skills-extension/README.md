# Salesforce Skills Extension for Gemini CLI

This directory is a Gemini CLI extension that packages your Salesforce skills and a bundled Salesforce MCP server.

## Install

From this local repo clone:

```bash
bash gemini/install-salesforce-skills-extension.sh
```

Or directly from the extension path:

```bash
gemini extensions install /absolute/path/to/openai-curated/gemini/salesforce-skills-extension
```

For live local development:

```bash
gemini extensions link /absolute/path/to/openai-curated/gemini/salesforce-skills-extension
```

Restart Gemini CLI after install, enable, update, or unlink operations.

## What it includes

- bundled Salesforce skills
- `GEMINI.md` context
- Docker-backed `salesforce-skills` MCP server
