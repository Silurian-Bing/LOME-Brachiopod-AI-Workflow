# Results

This folder contains public-demo intermediate numerical outputs from the workflow. These files sit between the raw demo data in `data/` and the demonstration figures in `figures/`: they show how database inputs can be transformed into auditable quality-control tables, spatial summaries, environmental context summaries, and PyRate reliability diagnostics.

The files are included as examples of workflow products, not as a complete archive of the unpublished research analysis.

## Included Content

The `intermediate_demo/` folder contains four groups of small tabular outputs:

- `standardization_qc/`: retention summaries, raw spatial-window summaries, standardized spatial-window summaries, and MST target settings.
- `spatial_qc/`: stage-level hexagon summaries and KDE/hex diagnostic summaries.
- `environment_context/`: stage-level environmental summaries used as contextual layers.
- `pyrate_qc/`: PyRate effective-sample-size diagnostics, model-inventory summaries, and a sanitized dataset-status table.

## Not Included

The following materials are deliberately excluded:

- final analytical tables;
- complete PyRate logs;
- PyRate-ready taxon input files;
- taxon lists;
- expert-curated occurrence tables;
- complete cell-level matrices used for final interpretation;
- final figure source data.

Final numerical results and complete reproducibility tables will be released after the associated research paper is published. The present folder is only a compact demonstration of the intermediate-result layer required by the RAG-Skill-Agent workflow.

