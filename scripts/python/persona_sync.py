import argparse
from typing import Dict, List


# Stub for Databricks persona/permission sync
# Replace with actual Databricks API calls

def sync_permissions(personas: List[Dict[str, str]]) -> None:
    for p in personas:
        print(f"Sync {p['name']} -> {p['role']}")


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--dry-run", action="store_true")
    args = parser.parse_args()

    personas = [
        {"name": "analytics_reader", "role": "read-only"},
        {"name": "platform_admin", "role": "admin"},
    ]

    if args.dry_run:
        print("Dry run: no changes applied")

    sync_permissions(personas)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())