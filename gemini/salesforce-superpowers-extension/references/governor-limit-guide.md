# Governor Limit Guide

Design assumptions:

- bulk input is normal
- repeated queries are dangerous
- CPU is often the hidden failure mode

Common fixes:

- query once, map results
- avoid nested scans
- move non-critical work async
- reduce duplicate automation passes
