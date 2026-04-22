# Install Everywhere

This repo supports three different tool families:

- Codex
- Claude
- Gemini
- Copilot

The same repo is used for all three, but each tool uses a different integration format.

## Support Matrix

| Capability | Codex | Claude | Gemini | Copilot |
| --- | --- | --- | --- | --- |
| `salesforce-skills` workflows | Yes | Yes | Yes | Yes |
| `superpowers` workflows | Yes | Yes | Yes | Yes |
| Native Codex plugin format | Yes | No | No | No |
| MCP support for Salesforce bundle | Yes | Yes | Partial | No |
| Superpowers MCP server | Not needed | Not needed | Not needed | Not needed |

## Important Difference

Codex uses native plugins.

Claude, Gemini, and Copilot do not load Codex plugins directly, so this repo provides the closest equivalent for each:

- Codex: plugins + skills + MCP configuration
- Claude: bundle manifests + skills + optional project MCP file
- Gemini: extension manifests + skills
- Copilot: repository instruction bundles

That means the behavior is aligned across tools, but the packaging format is different.

## Install On Codex

Use this repo as your Codex marketplace source.

Main pieces:

- `.agents/plugins/marketplace.json`
- `plugins/salesforce-skills`
- `plugins/superpowers`

Codex-specific notes:

- Codex is the only tool here that uses the native plugin model
- Salesforce MCP integration is part of the Codex-side setup
- Superpowers is a workflow plugin, so no separate MCP server is required

## Install On Claude

From the repo root:

```bash
bash claude/install-all.sh
```

Or install individually:

```bash
bash claude/install-salesforce-skills.sh
bash claude/install-superpowers.sh
```

If you want project-level Salesforce MCP access in Claude too:

```bash
bash claude/create-project-mcp.sh /absolute/path/to/your/project
```

Claude result:

- Salesforce bundle installed
- Superpowers bundle installed
- optional `.mcp.json` created for a target project
- bundle catalog available in `claude/claude-bundles.json`

## Install On Gemini

From the repo root:

```bash
bash gemini/install-all.sh
```

Or install individually:

```bash
bash gemini/install-salesforce-skills-extension.sh
bash gemini/install-superpowers-extension.sh
```

Gemini result:

- Salesforce extension-style bundle installed
- Superpowers extension-style bundle installed
- skills copied in the Gemini-compatible layout provided by this repo
- bundle catalog available in `gemini/gemini-bundles.json`

## Install On Copilot

From the repo root:

```bash
bash copilot/install-all.sh /absolute/path/to/project
```

Or install individually:

```bash
bash copilot/install-salesforce-skills.sh /absolute/path/to/project
bash copilot/install-superpowers.sh /absolute/path/to/project
```

Copilot result:

- Salesforce instructions installed into the target project's `.github/`
- Superpowers instructions installed into the target project's `.github/`
- bundle catalog available in `copilot/copilot-bundles.json`

## What Is Equivalent Across All Three

Across Codex, Claude, Gemini, and Copilot, this repo now carries:

- Salesforce architecture guidance
- Salesforce development guidance
- low-token Salesforce response mode
- Salesforce review and hallucination-reduction workflow
- Superpowers planning workflows
- Superpowers debugging workflows
- Superpowers TDD and delivery workflows

## What Is Not Literally Identical

These are not identical across all tools:

- plugin runtime internals
- MCP wiring model
- tool invocation model
- UI behavior
- model quality and reasoning behavior

So the repo gives you the same operating content, but each client still behaves according to its own platform rules.

## Recommended Use

For your setup:

- use Codex when you want the strongest plugin-native workflow
- use Claude when you want the bundled skills plus optional project MCP
- use Gemini when you want the same skills packaged in Gemini-compatible form
- use Copilot when you want repository-level instruction bundles inside a GitHub workflow

## Repo To Clone On Another Machine

Use:

[openai-curated-codex-plugins](https://github.com/punisher5700/openai-curated-codex-plugins)

Then run the install script that matches the tool on that machine.
