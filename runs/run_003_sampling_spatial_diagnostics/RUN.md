# Run 003: Sampling and Spatial-Diagnostic Check

## Purpose

Check whether the spatial analytical units were suitable for comparing paleobiogeographic patterns across time bins. The goal was not to produce a final result but to make sampling intensity, coordinate consistency, and equal-area spatial summarization visible before interpretation.

## Trigger

After the standardization correction, the workflow still needed a transparent diagnostic layer. Human review requested that spatial summaries avoid appearing as isolated scatter maps and instead show how records were converted into comparable spatial units.

## Agents and Skills

- `database_agent`: checked record counts and source coverage.
- `paleogeography_agent`: checked paleocoordinate reconstruction and regional assignment.
- `diversity_dynamics_agent`: checked whether spatial units could support diversity summaries.
- `figure_agent`: generated sampling and KDE/hex diagnostic views.
- `spatiotemporal_hex_standardization_skill`: assigned occurrence records to equal-area hexagonal units.
- `diversity_estimation_skill`: produced non-final richness and sampling summaries.
- `figure_generation_skill`: generated diagnostic maps and sampling panels.

## Execution Notes

The run verified that:

- external reconstruction software was available;
- the paleomap model could be accessed locally;
- post-standardization hex rows were generated;
- environmental context tables could be summarized across the focus interval;
- KDE surfaces and equal-area hexagons could be generated from the same standardized spatial units.

The KDE/hex layer was treated as a diagnostic visualization rather than as the primary inferential object. This prevented the figure from being over-interpreted as a final spatial classification.

## Human Review Notes

The reviewer requested that the workflow distinguish three levels:

1. raw occurrence and collection density;
2. standardized spatial assemblage units;
3. downstream interpretive summaries.

This distinction was important because the number of occupied hexagons is not equivalent to the number of occurrences, collections, or taxa.

## Decision

The spatial-diagnostic products were retained as workflow evidence but not promoted as final results. The public package includes selected PNG examples to show the spatial-standardization logic without releasing final analytical layers.

## Public-Safe Output

Relevant public-demo figures include:

- `fig_demo_05_kde_hex_three_stage.png`;
- `fig_demo_06_data_and_sampling.png`;
- `fig_demo_07_standardization_diagnostics.png`.

