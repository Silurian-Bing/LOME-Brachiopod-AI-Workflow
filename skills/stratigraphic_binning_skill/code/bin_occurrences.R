#!/usr/bin/env Rscript

suppressPackageStartupMessages({
  library(jsonlite)
  library(readr)
  library(dplyr)
  library(purrr)
})

args <- commandArgs(trailingOnly = TRUE)
if (length(args) < 1) stop("Usage: Rscript bin_occurrences.R input.json")
cfg <- jsonlite::fromJSON(args[[1]])
dir.create(cfg$output_dir, recursive = TRUE, showWarnings = FALSE)

occs <- readr::read_csv(cfg$occurrence_file, show_col_types = FALSE)
bins <- as_tibble(cfg$bins)

required <- c("max_ma", "min_ma")
missing <- setdiff(required, names(occs))
if (length(missing) > 0) stop("Missing age columns: ", paste(missing, collapse = ", "))

assign_bins <- function(max_ma, min_ma) {
  hit <- bins %>% filter(max_ma >= .env$min_ma, min_ma <= .env$max_ma)
  paste(hit$name, collapse = ";")
}

out <- occs %>%
  mutate(
    max_ma = as.numeric(max_ma),
    min_ma = as.numeric(min_ma),
    assigned_bins = purrr::map2_chr(max_ma, min_ma, assign_bins),
    multi_bin_flag = grepl(";", assigned_bins)
  )

readr::write_csv(out, file.path(cfg$output_dir, "occurrences_binned.csv"))
readr::write_csv(out %>% filter(multi_bin_flag), file.path(cfg$output_dir, "multi_bin_records.csv"))

cat("Binned", nrow(out), "records; multi-bin records:", sum(out$multi_bin_flag, na.rm = TRUE), "\n")

