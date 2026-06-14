# Retrieval Question Bank

This file defines the preferred retrieval questions for the public-demo RAG layer. It is intended for retrieval testing, agent routing, and manuscript-support checks. Answers should cite only records in `bibliography/core_references.csv` unless a human reviewer explicitly promotes a record from `needs_verification.csv`.

## LOME Chronology and Mechanisms

1. What evidence supports treating the Late Ordovician mass extinction as a multi-phase event rather than a single instantaneous crisis?
2. How do glaciation, sea-level fall, warming, deglaciation, and redox change differ as explanations for the first and second extinction pulses?
3. Why does the rate of climate change matter for interpreting the tempo of extinction and ecological reorganization?
4. Which LOME mechanisms are supported by global proxy syntheses, and which are regionally heterogeneous?
5. What uncertainty remains when stage-level bins are used to study an event that may unfold at substantially finer temporal scales?

## Brachiopod Paleobiogeography

1. How did Hirnantian brachiopod faunas differ from pre-extinction Late Ordovician faunas in composition, geographic distribution, and ecological meaning?
2. What makes the Hirnantia fauna useful, but also potentially misleading, as a biogeographic marker?
3. How should a workflow distinguish taxonomic diversity loss from spatial reorganization of faunas?
4. Why are synonymy, open nomenclature, and higher-rank records especially important for global brachiopod analyses?
5. How do South China records help test whether LOME biogeographic change was globally uniform or regionally heterogeneous?

## Data, Tools, and Structured Evidence

1. Which parts of PBDB and GBDB should be treated as structured evidence rather than text to be embedded in a vector database?
2. When should a RAG agent stop answering and hand the task to a database or geospatial Skill?
3. What metadata are required for fossil occurrences to support paleobiogeographic reconstruction?
4. How do paleocoordinate reconstruction, equal-area gridding, and sampling correction change the interpretation of occurrence maps?
5. What information must be logged so that an AI-assisted paleobiogeographic analysis remains reproducible?

## Cross-Taxon Context

1. Which other fossil groups show biogeographic or ecological responses across the LOME that may help interpret brachiopod patterns?
2. Which cross-taxon comparisons are useful as independent evidence, and which risk mixing incompatible sampling structures?
3. How can graptolites, acritarchs, chitinozoans, corals, trilobites, cephalopods, and early vertebrates be used as contextual rather than controlling evidence?
4. What makes ecological selectivity difficult to infer from occurrence data alone?

## Agent Review Questions

1. Could an apparent faunal province shift be produced by sampling intensity rather than biological redistribution?
2. Are similarity patterns dominated by a few widespread taxa?
3. Does a diversity decline persist after sampling standardization?
4. Are regional comparisons using compatible time bins and paleogeographic reconstructions?
5. Is a mechanistic explanation supported by independent stratigraphic, geochemical, and paleobiological evidence?

## Tool Handoff Triggers

The retrieval agent should call the relevant Skill rather than answer from text alone when the user asks for:

- PBDB or GBDB downloads, filters, or field summaries;
- taxonomic synonymy cleaning or open-nomenclature decisions;
- GTS2020 binning or regional stratigraphic reconciliation;
- pyGPlates, GPlates, GPlately, paleocoordinates, or plate rotations;
- SQS, Chao-type richness estimators, divDyn, or PyRate outputs;
- map generation, equal-area hexagon gridding, KDE surfaces, or figure export;
- final scientific interpretation requiring adversarial review.

