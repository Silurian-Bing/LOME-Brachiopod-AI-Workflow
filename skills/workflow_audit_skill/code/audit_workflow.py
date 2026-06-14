#!/usr/bin/env python3

import csv
import json
import sys
from pathlib import Path
from datetime import datetime

if len(sys.argv) < 2:
    raise SystemExit("Usage: python audit_workflow.py input.json")

cfg = json.loads(Path(sys.argv[1]).read_text())
root = Path(cfg["workflow_root"])
required = cfg.get("required_files", [])

missing = []
present = []
for rel in required:
    path = root / rel
    if path.exists():
        present.append(rel)
    else:
        missing.append(rel)

out_dir = root / "audit"
out_dir.mkdir(parents=True, exist_ok=True)

with (out_dir / "missing_required_files.csv").open("w", newline="") as f:
    writer = csv.writer(f)
    writer.writerow(["missing_file"])
    for item in missing:
        writer.writerow([item])

summary = {
    "skill_id": "workflow_audit_skill",
    "timestamp": datetime.now().isoformat(),
    "run_id": cfg.get("run_id"),
    "n_required": len(required),
    "n_present": len(present),
    "n_missing": len(missing),
    "status": "pass" if not missing else "fail"
}
(out_dir / "audit_summary.json").write_text(json.dumps(summary, indent=2, ensure_ascii=False))

report = [
    "# Workflow Audit Report",
    "",
    f"Run ID: {cfg.get('run_id')}",
    f"Status: {summary['status']}",
    f"Required files: {len(required)}",
    f"Present files: {len(present)}",
    f"Missing files: {len(missing)}",
    ""
]
if missing:
    report.append("## Missing Files")
    report.extend(f"- {item}" for item in missing)
else:
    report.append("All required files are present.")

(out_dir / "workflow_audit_report.md").write_text("\\n".join(report))
print(json.dumps(summary, indent=2))

