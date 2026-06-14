# Run 005: PyRate Reliability and Parameter-Boundary Review

## Purpose

Document how PyRate analyses were handled when convergence and effective-sample-size diagnostics required cautious interpretation. This run shows how a skill-generated macroevolutionary output was reviewed before being used in the manuscript workflow.

## Trigger

Human review found that PyRate outputs were informative but should not be presented as standalone proof of a specific paleobiogeographic mechanism. The main concern was uneven effective sample size across regional runs and the need to separate global context from regional descriptive comparison.

## Agents and Skills

- `diversity_dynamics_agent`: organized PyRate-ready inputs and interpreted rate summaries.
- `review_agent`: checked whether PyRate claims exceeded diagnostic support.
- `figure_agent`: redesigned PyRate transparency panels.
- `pyrate_pipeline_skill`: generated or wrapped PyRate-ready tables and run outputs.
- `figure_generation_skill`: produced ESS and reliability visualizations.
- `workflow_audit_skill`: recorded the interpretation boundary.

## Human Review Notes

The reviewer requested four changes:

1. Treat global PyRate output as macroevolutionary context rather than causal proof.
2. Treat regional PyRate contrasts as descriptive where effective sample sizes are uneven.
3. Avoid strong verbs such as "proves" or "reveals" for mechanism-level claims.
4. Add a transparency figure showing ESS, input-scale diagnostics, and the allowed interpretation range.

The review also noted that earlier short or exploratory runs should be treated as sensitivity checks or historical experiments, not as the primary analytical version.

## Decision

The workflow adopted an ESS-aware interpretation boundary:

- global PyRate runs can support broad diversity, origination, extinction, and net-diversification context;
- regional PyRate runs can be used to describe heterogeneity among regions;
- regional contrasts should not be treated as independent causal tests unless diagnostics are sufficient;
- PyRate figures must include reliability information rather than only visually attractive rate curves.

## Public-Safe Output

The public figure subset includes a non-final environmental/context figure and selected intermediate diagnostics. The complete PyRate logs, final regional metrics, and full publication panels are not included in this package.

