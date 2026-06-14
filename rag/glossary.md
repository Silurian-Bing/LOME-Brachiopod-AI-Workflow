# Glossary

## AI-ready evidence chain

A curated sequence linking primary records, derived research interpretations, analytical outputs, and review logs. In this workflow, the term emphasizes provenance, uncertainty, and auditability rather than simply converting documents into vectorized text.

## RAG boundary

The point at which retrieval should stop answering from text and hand the task to a structured database, geospatial tool, statistical script, or review agent.

## Structured occurrence evidence

Fossil occurrence records whose fields, relationships, and metadata carry scientific meaning. Examples include taxon names, collection IDs, stratigraphic bins, paleocoordinates, references, and collection-level environmental fields.

## Skill

A reusable execution unit with defined inputs, outputs, trigger conditions, examples, and quality standards. In this workflow, Skills handle PBDB/GBDB access, taxonomic cleaning, stratigraphic calibration, paleogeographic reconstruction, diversity estimation, PyRate-style analysis, and figure generation.

## Review agent

An adversarial quality-control role that checks whether a proposed interpretation could be produced by sampling bias, taxonomy, time-bin choices, paleogeographic model choice, or unsupported causal inference.

## Default index

The public-safe set of files that may be used by a demonstration RAG system without private PDFs, full copyrighted articles, or unpublished curated datasets.

