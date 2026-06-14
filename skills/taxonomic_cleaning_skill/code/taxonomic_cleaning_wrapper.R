#!/usr/bin/env Rscript

suppressPackageStartupMessages({
  library(jsonlite)
  library(readr)
  library(dplyr)
  library(stringr)
})

args <- commandArgs(trailingOnly = TRUE)
if (length(args) < 1) stop("Usage: Rscript taxonomic_cleaning_wrapper.R input.json")
cfg <- jsonlite::fromJSON(args[[1]])
dir.create(cfg$output_dir, recursive = TRUE, showWarnings = FALSE)

occs <- readr::read_csv(cfg$occurrence_file, show_col_types = FALSE)

name_col <- if ("genus" %in% names(occs)) "genus" else if ("taxon_name" %in% names(occs)) "taxon_name" else NA_character_
if (is.na(name_col)) stop("No genus or taxon_name column found.")

out <- occs %>%
  mutate(
    original_taxon_name = .data[[name_col]],
    taxon_name_clean_candidate = str_squish(as.character(.data[[name_col]])),
    open_nomenclature_flag = str_detect(taxon_name_clean_candidate, regex("\\\\b(cf|aff)\\\\.|\\\\?", ignore_case = TRUE))
  )

decisions <- out %>%
  transmute(
    source_database,
    source_row_id,
    original_taxon_name,
    proposed_name = taxon_name_clean_candidate,
    decision_type = if_else(open_nomenclature_flag, "flag_open_nomenclature", "pass_through"),
    human_review_required = open_nomenclature_flag
  )

readr::write_csv(out, file.path(cfg$output_dir, "occurrences_taxonomy_cleaned.csv"))
readr::write_csv(decisions, file.path(cfg$output_dir, "taxonomic_decision_table.csv"))

cat("Flagged", sum(out$open_nomenclature_flag, na.rm = TRUE), "open nomenclature records\n")

