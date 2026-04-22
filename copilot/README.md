# Copilot Bundles

This directory packages your Salesforce and Superpowers workflows for GitHub Copilot.

It provides:

- repo-level Copilot instruction bundles
- install scripts that copy instructions into a target project's `.github/`
- a bundle catalog in `copilot/copilot-bundles.json`

Install all bundles into a project:

```bash
bash copilot/install-all.sh /absolute/path/to/project
```

Or install individually:

```bash
bash copilot/install-salesforce-skills.sh /absolute/path/to/project
bash copilot/install-superpowers.sh /absolute/path/to/project
```
