# Example Invocation Record

This file illustrates how an Agent call should be documented. It is not a real run result. A real repository should place these records under `runs/run_001/`.

## Example: Taxonomy Agent Call

### Human-facing description

The Coordinator Agent assigns the taxonomic cleaning task to `taxonomy_agent` after occurrence records have been retrieved by `database_agent`. The Taxonomy Agent receives the raw occurrence table, literature claim table, and synonymy rules. It calls the taxonomic cleaning Skills and emits a decision table. If uncertain records affect downstream diversity or spatial pattern, human review is required.

### Machine-readable log entry

```json
{
  "run_id": "lome_brachiopod_demo_001",
  "step_id": "S04",
  "agent_id": "taxonomy_agent",
  "agent_spec": "agents/taxonomy_agent.md",
  "timestamp": "2026-06-14T10:30:00+08:00",
  "input_files": [
    "runs/run_001/intermediate/occurrences_raw.parquet",
    "runs/run_001/agent_outputs/literature_rag_agent_output.md",
    "data/curated/synonymy_table.csv"
  ],
  "skills_called": [
    "taxonomic_name_resolution_skill",
    "synonymy_table_lookup_skill",
    "open_nomenclature_filter_skill",
    "rank_consistency_check_skill"
  ],
  "output_files": [
    "runs/run_001/agent_outputs/taxonomy_agent_output.md",
    "runs/run_001/intermediate/occurrences_taxonomy_cleaned.parquet",
    "runs/run_001/intermediate/taxonomic_decision_table.csv"
  ],
  "status": "completed_with_flags",
  "flags": [
    "open_nomenclature_present",
    "synonymy_conflict_affects_two_time_bins"
  ],
  "human_review_required": true,
  "next_agent": "stratigraphy_agent"
}
```

## What This Proves

This record proves only that a bounded workflow role was invoked with specified inputs and outputs. It does not prove that the scientific conclusion is correct. Scientific validity still depends on Skill implementation, data provenance, review logs, and human approval.

## What Should Not Be Claimed

Do not claim that the Agent autonomously solved taxonomy. The correct claim is:

> The taxonomic cleaning step was performed through a role-defined Agent that called documented Skills and produced a decision table for expert review.

