#!/usr/bin/env Rscript

suppressPackageStartupMessages({
  library(jsonlite)
  library(readr)
  library(dplyr)
})

args <- commandArgs(trailingOnly = TRUE)
if (length(args) < 1) stop("Usage: Rscript import_sources.R path/to/input.json")

cfg <- jsonlite::fromJSON(args[[1]])
dir.create(cfg$output_dir, recursive = TRUE, showWarnings = FALSE)

read_source <- function(path, source_name) {
  tbl <- readr::read_csv(path, show_col_types = FALSE)
  tbl %>%
    mutate(
      source_database = source_name,
      source_file = path,
      source_row_id = row_number()
    )
}

gbdb <- read_source(cfg$gbdb_file, "GBDB")
local <- read_source(cfg$local_file, "LOCAL_CURATED")

readr::write_csv(gbdb, file.path(cfg$output_dir, "gbdb_imported.csv"))
readr::write_csv(local, file.path(cfg$output_dir, "local_imported.csv"))
readr::write_csv(bind_rows(gbdb, local), file.path(cfg$output_dir, "combined_source_preserving.csv"))

cat("Imported", nrow(gbdb), "GBDB rows and", nrow(local), "local rows\n")

