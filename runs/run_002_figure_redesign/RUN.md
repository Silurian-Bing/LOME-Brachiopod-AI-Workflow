# Run 002: Figure Redesign and Supplement Curation

## Purpose

Reduce an over-expanded figure set into a smaller, publication-oriented diagnostic set. This run documents how human evaluation affected figure selection, figure design, and the boundary between main figures, supplementary figures, and archived diagnostics.

## Trigger

The first figure-generation pass produced too many figures. Several were analytically useful but visually redundant with the main panels. Human review also noted that some generated figures looked table-like, crowded, or insufficiently polished for a high-level manuscript.

## Agents and Skills

- `figure_agent`: reviewed candidate figures and proposed a reduced diagnostic set.
- `review_agent`: checked whether each figure had an independent evidential role.
- `coordinator_agent`: froze the figure categories and assigned redraw tasks.
- `figure_generation_skill`: regenerated selected panels with a cleaner visual grammar.
- `workflow_audit_skill`: recorded why some figures were archived rather than promoted.

## Human Review Notes

The review identified three problems:

- too many figures diluted the main line of argument;
- several supplementary candidates repeated the geometry or narrative function of main figures;
- some figures were technically correct but visually weak, especially those dominated by repeated line plots, dense numeric tables, or visually similar map panels.

## Decision

The figure set was reorganized around distinct public functions:

1. data scale and sampling units;
2. standardization diagnostics;
3. reference-field robustness;
4. retention-gap robustness;
5. compositional source partitioning;
6. null-model diagnostics;
7. crisis-interval control diagnostics;
8. PyRate transparency and reliability.

The redesign replaced several weak visual forms:

- repeated count trajectories became record-volume bars, dot plots, and unit-scale bubbles;
- table-like diagnostics became estimation displays and distributions;
- crowded temporal trajectories became phase portraits and compact control plots;
- simple PyRate tables became ESS skylines and interpretation-boundary diagrams.

## Public-Safe Output

The public `figures/demo_png` folder includes ten PNG examples selected from intermediate outputs. They are not final publication figures and do not include editable final panels.

