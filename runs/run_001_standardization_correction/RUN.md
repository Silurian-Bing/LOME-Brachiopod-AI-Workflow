# Run 001: Spatial-Standardization Correction

## Purpose

Correct an early spatial-standardization workflow that produced maps and analytical units inconsistent with the established Ordovician-Silurian mapping framework. This run documents how human review changed the computational route before downstream paleobiogeographic interpretation.

## Trigger

Human review found that the earlier pipeline looked computationally valid but was not comparable with the existing research workflow. The main symptoms were:

- the wrong paleocoordinate fields had been used;
- broad time bins were used where a finer mapping framework was required;
- standardized outputs were compared directly against raw diversity maps;
- global or plate-level standardization was used where moving regional windows were more appropriate;
- the minimum-spanning-tree target was too aggressive and removed too many spatial cells.

## Agents and Skills

- `coordinator_agent`: split the correction into coordinate, binning, standardization, and audit tasks.
- `database_agent`: checked field availability in PBDB and GBDB-derived inputs.
- `stratigraphy_agent`: checked the time-bin framework and stage mapping.
- `paleogeography_agent`: checked paleocoordinate fields and region-window assignment.
- `review_agent`: compared the corrected route against the established workflow.
- `stratigraphic_binning_skill`: rebuilt the time-bin mapping table.
- `paleogeographic_reconstruction_skill`: used the corrected paleocoordinate fields.
- `spatiotemporal_hex_standardization_skill`: rebuilt the spatial analytical layer.
- `workflow_audit_skill`: recorded the mismatch and correction.

## Human Review Notes

The earlier route was rejected because it created severe under-retention in some post-crisis bins and made the new maps visually incomparable with the existing reference maps. The reviewer requested that raw mapping outputs and standardized analytical outputs be kept separate rather than treated as interchangeable products.

## Decision

The workflow was revised as follows:

1. Use the better-aligned paleocoordinate fields for spatial reconstruction.
2. Keep the established fine-bin mapping layer as a baseline visual reference.
3. Use standardization as a second analytical layer rather than as a replacement for raw paleogeographic maps.
4. Apply regional-window standardization instead of a global or single-plate routine.
5. Relax the MST target to avoid excessive loss of spatial cells.

## Public-Safe Output

This run produced corrected instructions for the standardization skills and a diagnostic requirement: every standardized spatial dataset must be accompanied by retention summaries, before/after footprint checks, and low-sampling flags.

No final curated dataset is included in this public package.

