# RAG Knowledge Layer

This folder provides a public-safe demonstration RAG layer for the LOME brachiopod paleobiogeography workflow. It is derived from local research notes, but it does not copy full papers, proprietary PDFs, or long copyrighted passages.

The purpose is to show what a domain-specific RAG folder should contain for an auditable paleobiological workflow:

- a source inventory;
- a citation policy;
- a curated core bibliography;
- a list of records requiring further verification;
- knowledge cards organized by scientific theme;
- retrieval questions and example prompts;
- chunk metadata schemas;
- small demonstration chunks.

## Copyright and Scope

Full-text PDFs, published article scans, and full manuscript copies should not be stored here. For copyrighted literature, this folder stores only bibliographic metadata, short paraphrased notes, and claim-level summaries. If the workflow is executed locally by an authorized researcher, private PDFs can be indexed in a separate local-only corpus outside the public repository.

Two author papers may be useful for the private working corpus, but they are not included here as full text. They can be cited in the bibliography and represented by short knowledge cards.

## Default Retrieval Corpus

The default public-demo RAG corpus should index:

1. `knowledge_cards/*.md`
2. `bibliography/core_references.csv`
3. `demo_chunks/demo_lome_brachiopod_chunks.jsonl`
4. `query_bank/retrieval_questions.md`

The default corpus should not index:

- `bibliography/needs_verification.csv` as factual evidence;
- full research notes from the local Kimi workspace;
- local PDFs or Word documents;
- unpublished final datasets or result tables.

## Recommended Retrieval Strategy

Use a two-stage retrieval strategy:

1. **Question routing.** Classify the question as chronology/mechanism, brachiopod biogeography, methods/tools, cross-taxon comparison, South China context, or uncertainty/frontier.
2. **Evidence retrieval.** Retrieve 3-6 short chunks with explicit citation keys and uncertainty tags.
3. **Tool handoff.** If the question asks for PBDB/GBDB records, paleocoordinates, diversity curves, PyRate, or figure generation, call the corresponding Skill instead of answering from text alone.
4. **Review gate.** Any conclusion about mechanism, causality, or regional comparison should be passed to the review agent before manuscript use.

## Evidence Standards

Every RAG answer should distinguish:

- direct literature-supported statements;
- derived synthesis from multiple papers;
- workflow design choices;
- unresolved or disputed claims;
- items requiring manual bibliographic verification.

The most important rule is simple: if a reference is internally inconsistent or not yet verified, it can guide future searching but must not be cited as confirmed evidence.
