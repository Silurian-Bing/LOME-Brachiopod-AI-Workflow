# Agent Invocation Protocol

This document defines how the Agent files in this directory should be used. The purpose is to make the agent layer observable and auditable. A claim that an Agent was used is only valid if the corresponding invocation record and output file exist.

## Invocation Modes

Three invocation modes are acceptable.

**Mode A: Manual LLM session**

A human operator opens an LLM session, pastes the relevant Agent file as the role specification, provides the required input bundle, and saves the Agent output plus a log entry. This is the simplest reproducible mode and is suitable for a manuscript supplement.

**Mode B: Scripted orchestrator**

A coordinator script reads `workflow_manifest.yaml`, loads each Agent file as a system or developer instruction, passes structured inputs to the model, calls Skills as tools, and writes `execution_log.jsonl`. This is the preferred GitHub implementation.

**Mode C: MCP/tool-based execution**

The coordinator connects Agents to external databases, local scripts, and computational Skills through MCP servers or equivalent tool wrappers. This mode is closest to a deployable research workflow, but it still must emit the same logs and output files.

## Visible or Hidden Calls

Agent calls do not need to be visually displayed in the manuscript. They must, however, be explicitly recorded in the supplementary material or GitHub repository. A figure shows the logic of the workflow; a log proves that the workflow was executed.

The manuscript can state:

> The Agent layer was implemented as a set of role-specific workflow specifications. Each invocation was recorded with input files, permitted Skills, model/tool versions, output files, and human review status.

## Required Log Schema

Each Agent call should append one JSON object to `execution_log.jsonl`:

```json
{
  "run_id": "lome_brachiopod_demo_001",
  "step_id": "S04",
  "agent_id": "taxonomy_agent",
  "timestamp": "2026-06-14T10:30:00+08:00",
  "input_files": [
    "data/processed/occurrences_raw.parquet",
    "rag/citation_map.csv"
  ],
  "skills_called": [
    "taxonomic_name_resolution_skill",
    "open_nomenclature_filter_skill"
  ],
  "output_files": [
    "runs/run_001/agent_outputs/taxonomy_agent_output.md",
    "runs/run_001/intermediate/taxonomy_cleaned_occurrences.parquet"
  ],
  "status": "completed_with_flags",
  "flags": [
    "cf_aff_records_present",
    "synonym_conflicts_require_human_review"
  ],
  "human_review_required": true
}
```

## Output Discipline

Every Agent output must include:

- task received;
- evidence used;
- Skills called;
- assumptions;
- output files generated;
- uncertainty or conflict notes;
- recommended next Agent;
- whether human review is required.

## Failure Handling

An Agent must report failure rather than invent an answer when:

- required data are unavailable;
- a citation cannot be traced to a source;
- a Skill fails validation;
- stratigraphic or taxonomic conflicts cannot be resolved automatically;
- a model result is highly sensitive to sampling or binning choices;
- the Agent is asked to make a final scientific interpretation beyond its assigned authority.

