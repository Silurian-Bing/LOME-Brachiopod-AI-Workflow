#!/usr/bin/env python3

import json
import sys
from pathlib import Path
from datetime import datetime

if len(sys.argv) < 2:
    raise SystemExit("Usage: python write_figure_provenance.py input.json")

cfg = json.loads(Path(sys.argv[1]).read_text())
out_dir = Path(cfg["output_dir"])
out_dir.mkdir(parents=True, exist_ok=True)

provenance = {
    "skill_id": "figure_generation_skill",
    "timestamp": datetime.now().isoformat(),
    "figure_type": cfg.get("figure_type"),
    "input_file": cfg.get("input_file"),
    "formats": cfg.get("formats", []),
    "note": "This wrapper records figure provenance. Core plotting is handled by approved local scripts."
}

(out_dir / "figure_provenance.json").write_text(json.dumps(provenance, indent=2, ensure_ascii=False))
print(f"Wrote {out_dir / 'figure_provenance.json'}")

