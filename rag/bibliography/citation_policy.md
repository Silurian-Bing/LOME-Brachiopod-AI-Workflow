# Citation Policy

This RAG folder follows a conservative citation policy.

## Included in Core References

A reference can enter `core_references.csv` when:

- the local research notes provide a complete bibliographic record or a stable DOI;
- the same reference is not contradicted by another local note;
- the record is central to LOME, paleobiogeography, brachiopods, databases, or workflow tools;
- the RAG knowledge card paraphrases the result rather than reproducing copyrighted text.

## Kept Out of Default Retrieval

A reference is moved to `needs_verification.csv` when:

- DOI and title are inconsistent across local notes;
- publication year or journal is uncertain;
- the item is a preprint, news item, conference abstract, or reported as submitted;
- the title is too vague to identify confidently;
- the record may exist but should not yet be cited in a manuscript.

## Use in Generated Text

When drafting manuscript text, cite only entries from `core_references.csv` unless a human researcher has manually verified an item from `needs_verification.csv`.

Do not cite the local research notes themselves as scholarly sources. They are internal synthesis documents used to build the RAG layer.

