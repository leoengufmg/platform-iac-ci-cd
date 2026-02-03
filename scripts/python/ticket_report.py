import argparse
import json
from pathlib import Path


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", required=True)
    args = parser.parse_args()

    data = json.loads(Path(args.input).read_text(encoding="utf-8"))
    total = len(data)
    by_type = {}
    for t in data:
        by_type[t.get("type", "unknown")] = by_type.get(t.get("type", "unknown"), 0) + 1

    print(f"Total tickets: {total}")
    for k, v in sorted(by_type.items()):
        print(f"{k}: {v}")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())