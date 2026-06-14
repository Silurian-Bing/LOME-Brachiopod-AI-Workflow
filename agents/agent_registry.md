# Agent Registry

This directory defines the agent layer for the proposed LOME brachiopod palaeobiogeography workflow. In this workflow, an Agent is not an autonomous person-like entity. It is a bounded workflow role defined by its task, input schema, permitted Skills, output format, review obligations, and logging requirements.

The current workflow uses ten agent specifications:

| Agent ID | File | Primary role |
|---|---|---|
| `coordinator_agent` | `coordinator_agent.md` | Decompose the research question, route tasks, enforce workflow order, and maintain the run state. |
| `literature_rag_agent` | `literature_rag_agent.md` | Retrieve and summarize literature evidence with citation-level traceability. |
| `database_agent` | `database_agent.md` | Query and integrate PBDB, GBDB, and curated local occurrence records. |
| `taxonomy_agent` | `taxonomy_agent.md` | Resolve synonymy, open nomenclature, taxonomic rank conflicts, and doubtful identifications. |
| `stratigraphy_agent` | `stratigraphy_agent.md` | Align stratigraphic units, age ranges, stage boundaries, and time bins. |
| `paleogeography_agent` | `paleogeography_agent.md` | Reconstruct palaeocoordinates and assign occurrences to spatial units. |
| `diversity_dynamics_agent` | `diversity_dynamics_agent.md` | Run diversity, sampling, and extinction/recovery analyses. |
| `figure_agent` | `figure_agent.md` | Generate auditable figures from approved intermediate data. |
| `review_agent` | `review_agent.md` | Perform adversarial checks on evidence, sampling, models, and interpretation. |
| `human_review_protocol` | `human_review_protocol.md` | Define the mandatory expert review and veto points. |

## Minimal Invocation Order

The default run order is:

1. `coordinator_agent`
2. `literature_rag_agent`
3. `database_agent`
4. `taxonomy_agent`
5. `stratigraphy_agent`
6. `paleogeography_agent`
7. `diversity_dynamics_agent`
8. `review_agent`
9. Human review
10. `figure_agent`
11. Final `review_agent`
12. Final human approval

The order may loop when conflicts are detected. For example, if `review_agent` identifies a sampling artefact or a taxonomic conflict, the coordinator must reopen the relevant upstream agent rather than suppress the disagreement.

## Required Run Evidence

A valid workflow run must provide:

- `workflow_manifest.yaml`: research question, data sources, Skill versions, model versions, run date, and operator.
- `execution_log.jsonl`: one machine-readable record for each Agent invocation.
- `agent_outputs/`: one output file per Agent invocation.
- `human_review.md`: mandatory expert decisions and unresolved issues.

Without these files, the workflow should be described as a conceptual design rather than an executed agent-assisted workflow.

