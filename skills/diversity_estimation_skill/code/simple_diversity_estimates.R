#!/usr/bin/env Rscript

suppressPackageStartupMessages({
  library(jsonlite)
  library(readr)
  library(dplyr)
})

args <- commandArgs(trailingOnly = TRUE)
if (length(args) < 1) stop("Usage: Rscript simple_diversity_estimates.R input.json")
cfg <- jsonlite::fromJSON(args[[1]])
dir.create(cfg$output_dir, recursive = TRUE, showWarnings = FALSE)

occs <- readr::read_csv(cfg$occurrence_file, show_col_types = FALSE)
required <- c(cfg$taxon_col, cfg$time_col)
missing <- setdiff(required, names(occs))
if (length(missing) > 0) stop("Missing columns: ", paste(missing, collapse = ", "))

raw <- occs %>%
  filter(!is.na(.data[[cfg$taxon_col]]), !is.na(.data[[cfg$time_col]])) %>%
  group_by(.data[[cfg$time_col]]) %>%
  summarise(
    n_occurrences = n(),
    observed_taxa = n_distinct(.data[[cfg$taxon_col]]),
    .groups = "drop"
  ) %>%
  rename(time_bin = 1)

readr::write_csv(raw, file.path(cfg$output_dir, "diversity_raw_by_stage.csv"))
cat("Wrote raw diversity estimates\n")

