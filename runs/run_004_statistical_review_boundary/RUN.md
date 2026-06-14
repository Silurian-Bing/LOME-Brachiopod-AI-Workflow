# Run 004: Statistical Review and Interpretation Boundary

## Purpose

Record an independent statistical review that prevented the workflow from presenting descriptive patterns as stronger inferential claims. This run is included to show how the review agent and human reviewer can constrain downstream writing and figure interpretation.

## Trigger

An internal review found that several claims in an early manuscript draft exceeded the available statistical support. The concern was not that the analyses were useless, but that the evidential hierarchy needed to be stated more carefully.

## Agents and Skills

- `review_agent`: performed adversarial checks against overclaiming.
- `diversity_dynamics_agent`: checked diversity and beta-diversity interpretation.
- `figure_agent`: checked whether captions matched the evidential strength.
- `workflow_audit_skill`: logged claims that required downgrading or additional robustness checks.
- `biogeographic_network_skill`: marked several spatial-composition results as descriptive unless tested by additional null models.

## Human Review Notes

The statistical reviewer identified the following issues:

- one retention-gap metric had a potential positive-bias risk because local and broader reference pools were not independent;
- later time bins should be described as showing weaker affinity patterns unless directly supported by dedicated null models;
- pairwise distance-decay summaries needed caution because pairwise comparisons are non-independent and sample sizes differ across bins;
- several terms implying direct biological mechanism should be softened unless supported by occurrence histories or formal tests;
- figure captions needed to match the more cautious interpretation.

## Decision

The manuscript logic and workflow outputs were reorganized into a layered evidence model:

1. strict null-supported spatial recurrence, where available;
2. descriptive broader affinity patterns;
3. beta-diversity and distance-decay summaries as spatial-structure context;
4. macroevolutionary rate analyses as background rather than direct mechanism proof.

The reviewer also requested future robustness checks:

- size-matched random reference pools;
- alternative reference-field contrasts;
- prevalence-weighted draws;
- leave-one-cell-out checks;
- removal of broad-ranging genera;
- bootstrap or permutation support for distance-decay summaries.

## Public-Safe Output

This run does not release the underlying final metrics. It releases the audit decision: statistical language must be tiered, and descriptive outputs must not be treated as causal proof.

