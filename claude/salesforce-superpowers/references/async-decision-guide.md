# Async Decision Guide

Use Queueable for:

- deferred processing
- chained async work
- callouts with structured payloads

Use Batch for:

- very large data volumes
- chunked processing

Use Scheduled only for:

- time-based execution that truly must run on a schedule
