# Copilot Salesforce Superpowers Bundle

This directory packages the merged Salesforce Superpowers workflow for GitHub Copilot.

It provides:

- repo-level Copilot instructions
- an install script that copies instructions into a target project's `.github/`
- a bundle catalog in `copilot/copilot-bundles.json`

Install into a project:

```bash
bash copilot/install-all.sh /absolute/path/to/project
```

Or:

```bash
bash copilot/install-salesforce-superpowers.sh /absolute/path/to/project
```
