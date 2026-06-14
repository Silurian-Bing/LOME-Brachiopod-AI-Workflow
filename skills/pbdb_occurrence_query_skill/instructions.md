# Instructions

1. Read the query parameters from `examples/example_input.json` or from the workflow manifest.
2. Query PBDB using `paleobioDB::pbdb_occurrences()` or call the local core script.
3. Save the raw result without column deletion.
4. Write a metadata file containing the query, retrieval date, PBDB vocabulary, package version, and output path.
5. Do not perform taxonomy cleaning or stratigraphic filtering in this Skill.

Recommended local source:

`/Users/ice/Documents/Data/PBDB/downloadpbdb.R`

The current local script demonstrates a Brachiopoda query over 459–439 Ma using `show = "full"`, `vocab = "pbdb"`, and `limit = "all"`.

