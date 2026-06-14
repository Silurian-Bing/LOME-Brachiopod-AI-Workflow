# Human Review Protocol

## Purpose

This file defines the points at which human palaeontological expertise must intervene. In this workflow, human review is not an optional final polish. It is a mandatory part of the evidential chain.

## Mandatory Review Gates

### Gate 1: Research Question Approval

The human researcher confirms:

- the scientific question;
- target interval;
- taxonomic scope;
- disclosure limits for unpublished data;
- acceptable output types.

### Gate 2: Taxonomic Approval

The human researcher reviews:

- synonymy decisions;
- `cf.` and `aff.` handling;
- doubtful records;
- rank aggregation;
- records excluded from analysis.

No downstream diversity or palaeogeographic analysis should be treated as final before this gate is passed.

### Gate 3: Stratigraphic Approval

The human researcher reviews:

- time-bin definitions;
- regional-to-global correlations;
- records overlapping multiple bins;
- key boundary assignments;
- exclusions due to poor temporal resolution.

### Gate 4: Spatial and Sampling Approval

The human researcher reviews:

- plate model or palaeocoordinate source;
- grid resolution;
- sampling-intensity diagnostics;
- sparse regions;
- records with poor coordinate quality.

### Gate 5: Model and Interpretation Approval

The human researcher reviews:

- model choice;
- parameter settings;
- uncertainty estimates;
- sensitivity tests;
- whether a result is descriptive, inferential, or interpretive.

### Gate 6: Final Manuscript/Figure Approval

The human researcher reviews:

- final figures;
- captions;
- data and code availability statements;
- unresolved limitations;
- claims that may reveal unpublished sensitive details.

## Required Human Review Record

`human_review.md` must contain:

```markdown
# Human Review Record

## Run ID

## Reviewer

## Review Date

## Gate Reviewed

## Materials Reviewed

## Decision

Accepted / Accepted with revision / Rejected / Requires rerun

## Required Changes

## Notes on Uncertainty

## Signature or Initials
```

## Veto Conditions

The human reviewer must veto or require rerun when:

- taxonomy is unstable enough to alter the main result;
- stratigraphic correlation is not adequate for the proposed time bin;
- sampling bias explains the claimed pattern more plausibly than biological signal;
- model output is being interpreted beyond its assumptions;
- data provenance cannot be traced;
- unpublished data would be exposed beyond the intended scope.

