#!/usr/bin/env Rscript

suppressPackageStartupMessages({
  library(jsonlite)
})

args <- commandArgs(trailingOnly = TRUE)
if (length(args) < 1) {
  stop("Usage: Rscript run_pbdb_query.R path/to/input.json")
}

cfg <- jsonlite::fromJSON(args[[1]])

if (!requireNamespace("paleobioDB", quietly = TRUE)) {
  stop("The paleobioDB package is required. Install it before running this wrapper.")
}

dir.create(cfg$output_dir, recursive = TRUE, showWarnings = FALSE)

records <- paleobioDB::pbdb_occurrences(
  base_name = cfg$base_name,
  min_ma = cfg$min_ma,
  max_ma = cfg$max_ma,
  show = cfg$show,
  vocab = cfg$vocab,
  limit = cfg$limit
)

stem <- paste0("pbdb_", gsub("[^A-Za-z0-9]+", "_", cfg$base_name), "_", cfg$max_ma, "_", cfg$min_ma)
csv_path <- file.path(cfg$output_dir, paste0(stem, "_raw.csv"))
meta_path <- file.path(cfg$output_dir, "pbdb_query_metadata.json")

write.csv(records, csv_path, row.names = FALSE)

meta <- list(
  skill_id = "pbdb_occurrence_query_skill",
  query = cfg,
  retrieval_time = as.character(Sys.time()),
  n_records = nrow(records),
  output_file = csv_path
)
jsonlite::write_json(meta, meta_path, pretty = TRUE, auto_unbox = TRUE)

cat("Wrote", csv_path, "with", nrow(records), "records\n")

