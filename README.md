# Platform IaC + CI/CD Portfolio

A portfolio project showcasing Infrastructure as Code, CI/CD operations, Python automation, SQL troubleshooting, and Databricks platform administration patterns.

## Highlights
- Terraform modules and environment layouts (simple + advanced)
- CI/CD pipeline for IaC validation and drift checks
- Python utilities for admin tasks and automation
- SQL scripts for platform diagnostics
- Runbooks and operational docs

## Project Structure
- `terraform/` IaC modules and environments
- `scripts/python/` automation tools
- `scripts/sql/` diagnostic queries
- `runbooks/` operational procedures
- `docs/` architecture and CI/CD notes

## Quick Start

### Terraform (dev)
```bash
cd terraform/environments/dev
terraform init
terraform plan
```

### CI/CD (local)
```bash
terraform fmt -check -recursive
terraform validate
```

### Python tools
```bash
cd scripts/python
python -m venv .venv
. .venv/Scripts/activate
pip install -r requirements.txt
python ticket_report.py --input sample_tickets.json
```

## Example Use Cases
- Validate and version IaC modules for data platform components
- Automate user persona and permission syncing
- Support tickets with SQL-based diagnostics
- Document operational runbooks for on-call and platform admin tasks

## Notes
- The Databricks pieces are templates and stubs for portfolio use.
- Replace placeholders with your real workspace IDs, tokens, and policies.