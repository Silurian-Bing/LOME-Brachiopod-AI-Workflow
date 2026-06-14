# Instructions

1. Load each source table separately.
2. Add `source_database`, `source_file`, and `source_record_id` before any merge.
3. Apply the schema mapping file only to create harmonized columns.
4. Preserve all original columns with a source prefix if necessary.
5. Export source-specific and combined tables.
6. Produce a missing-field report for the Database Agent.

