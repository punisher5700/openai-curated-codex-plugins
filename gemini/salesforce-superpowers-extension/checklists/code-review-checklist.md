# Code Review Checklist

- Solution matches the right Salesforce tool choice.
- Bulk safety is preserved.
- Security model is preserved.
- Apex API-version-sensitive security defaults are checked when relevant.
- Data operations have explicit user-mode or justified system-mode intent.
- Automation conflicts are considered.
- Integration and async side effects are considered.
- Tests are meaningful and not only coverage-driven.
- Claims about local behavior are supported by inspected code or artifacts.
- Unknown org-specific assumptions are called out instead of invented.
