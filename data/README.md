# Data

This folder contains public-demo input data for the LOME brachiopod AI-assisted workflow. The files are intended to demonstrate how the RAG-Skill-Agent workflow can be connected to paleobiological databases, not to reproduce the unpublished final analysis.

## Included demo data

- `raw_public_demo/pbdb_occurrences_raw_demo.csv`: a small raw PBDB export used as a lightweight example input.
- `raw_public_demo/gbdb_occurrences_raw_selected_demo.csv`: an original GBDB-derived table with selected fields used as a workflow demonstration input.

## Not included

The following materials are deliberately excluded:

- expert-curated taxonomic tables;
- cleaned, strict-filtered, standardized, merged, or final occurrence tables;
- unpublished local synonymy and stratigraphic correction files;
- final analytical datasets supporting the associated research paper.

These exclusions are intentional. The present repository documents the workflow architecture and provides limited public-demo inputs only. Final data products, complete reproducibility tables, and publication-ready analytical datasets will be released after the associated research paper is published.

## Use in the workflow

The demo data can be passed to the database, taxonomy, stratigraphy, paleogeography, diversity, and audit skills. For full research execution, the skills are designed to call authorized local core scripts and data resources that are not included in this public-demo package.

