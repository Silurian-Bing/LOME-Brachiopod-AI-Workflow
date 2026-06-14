# Skill Registry

This directory defines the Skill layer for the LOME brachiopod palaeobiogeography workflow. A Skill is a bounded, reusable operation with explicit inputs, outputs, quality checks, and provenance requirements. It is not an Agent. Agents plan, call, and review Skills; Skills perform specific data or computational tasks.

Core source code for the ongoing research project remains outside this repository under:

`/Users/ice/Documents/Data/PBDB`

For copyright, unpublished-data, and research-priority reasons, these Skill folders include documentation, wrappers, examples, and interface contracts rather than copying the full research codebase.

## Skill List

| Skill ID | Purpose | Core local code referenced |
|---|---|---|
| `pbdb_occurrence_query_skill` | Query PBDB occurrence records. | `/Users/ice/Documents/Data/PBDB/downloadpbdb.R`, `/Users/ice/Documents/Data/PBDB/Pyrate Analysis/1_downloadpbdb.R` |
| `gbdb_local_import_skill` | Import GBDB and local curated data. | `/Users/ice/Documents/Data/PBDB/GBDBcombine.R`, `/Users/ice/Documents/Data/PBDB/Pyrate Analysis/GBDB/` |
| `taxonomic_cleaning_skill` | Clean names, synonyms, open nomenclature, and rank conflicts. | `/Users/ice/Documents/Data/PBDB/dataclean2.R`, `/Users/ice/Documents/Data/PBDB/ForNEE/input/3_dataclean.R` |
| `stratigraphic_binning_skill` | Align age ranges and assign time bins. | `/Users/ice/Documents/Data/PBDB/GTS2020.Rdata`, `/Users/ice/Documents/Data/PBDB/Standard_t.R` |
| `paleogeographic_reconstruction_skill` | Validate palaeocoordinates and plate fields. | `/Users/ice/Documents/Data/PBDB/ForNEE/scripts/11_compare_plate_fields_and_plot_windows.R` |
| `spatiotemporal_hex_standardization_skill` | Run spatial-temporal standardization and equal-area hex assignment. | `/Users/ice/Documents/Data/PBDB/ForNEE/scripts/01_standardize_hex_and_prepare_pyrate.R` |
| `diversity_estimation_skill` | Estimate diversity under sampling-aware protocols. | `/Users/ice/Documents/Data/PBDB/Divdyn_process.R`, `/Users/ice/Documents/Data/PBDB/Chao1_bra_1MaBin.R` |
| `pyrate_pipeline_skill` | Prepare and run PyRate analyses. | `/Users/ice/Documents/Data/PBDB/ForNEE/pyrate_shells/`, `/Users/ice/Documents/Data/PBDB/Pyrate Analysis/make_PyRate_file.R` |
| `biogeographic_network_skill` | Build similarity and network analyses. | `/Users/ice/Documents/Data/PBDB/network.R`, `/Users/ice/Documents/Data/PBDB/network global.R` |
| `figure_generation_skill` | Generate auditable maps, curves, and workflow figures. | `/Users/ice/Documents/Data/PBDB/ForNEE/scripts/27_main_fig1_ghost_province_projection.R`, `/Users/ice/Documents/Data/PBDB/ForNEE/scripts/43_kde_hex_stage_maps.R` |
| `workflow_audit_skill` | Validate outputs, logs, and review gates. | Wrapper-only; no core research code copied. |

## Minimal Skill Contract

Each Skill folder contains:

- `SKILL.md`: short user-facing manual.
- `instructions.md`: operational instructions.
- `trigger.md`: when the Skill should and should not be called.
- `quality_standards.md`: validation checks and failure modes.
- `examples/`: small input and output examples.
- `code/`: lightweight wrapper or pseudo-wrapper.

