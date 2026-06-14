# Knowledge Card 03: Methods, Databases, and Tools

## Scope

This card summarizes methods and infrastructure needed for a reproducible RAG-Skill-Agent paleobiogeographic workflow.

## Core Claims

PBDB is a community-built occurrence-level data infrastructure. It should be accessed as a structured database through its API or tool layer rather than flattened into text chunks. Its relational structure, references, taxonomic records, collections, stratigraphy, and coordinates are part of the evidence chain (`uhen_etal_2023_pbdb`).

Paleogeographic reconstruction should be handled by specialized tools rather than by language-model inference. GPlates and related programmatic tools provide the standard bridge between modern coordinates, plate models, and deep-time spatial analysis (`muller_etal_2018_gplates`; `mather_etal_2023_gplately`).

Paleobiogeographic similarity metrics require explicit assumptions. Jaccard, Dice/Sorensen, Simpson, beta-diversity components, and network metrics respond differently to uneven richness, sampling intensity, and spatial grain. RAG should retrieve method definitions and warnings, while Skill modules should perform the actual calculation.

Sampling standardization is not optional. SQS, coverage-based rarefaction, bootstrap routines, and spatial standardization are needed because fossil occurrence records are shaped by sampling, outcrop, taxonomic practice, and database history.

Network analysis and NMDS can reveal structure that simple maps cannot, but they are sensitive to the definition of regions, taxonomic level, similarity metric, and sampling filters.

## Retrieval Tags

- PBDB
- GBDB
- API
- GPlates
- pyGPlates
- GPlately
- SQS
- NMDS
- network analysis
- similarity coefficient
- sampling bias
- standardization

## Use in Manuscript

Use this card to explain why RAG alone is insufficient. Literature retrieval can anchor concepts, but structured databases and mathematical analysis must be called through Skill modules.

## Review Gate

If an answer contains a computed diversity value, paleocoordinate, cluster assignment, network metric, PyRate rate, or figure, it must cite the Skill/output file that generated it, not only a RAG source.

