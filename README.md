# Platform IaC + CI/CD Portfolio

![CI](https://github.com/leoengufmg/platform-iac-ci-cd/actions/workflows/ci.yml/badge.svg)
![Terraform](https://img.shields.io/badge/Terraform-1.5+-blueviolet)
![Python](https://img.shields.io/badge/Python-3.10+-blue)

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

### Terraform Pipeline (local)
```bash
cd terraform/environments/dev
terraform init -backend=false
terraform validate
terraform plan
```

### Drift Detection (extend)
1. Add a scheduled GitHub Actions workflow (e.g., nightly).
2. Run `terraform plan -detailed-exitcode` against `prod` with remote state.
3. Publish the plan output as an artifact and alert on exit code `2`.

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