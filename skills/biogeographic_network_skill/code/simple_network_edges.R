#!/usr/bin/env Rscript

suppressPackageStartupMessages({
  library(jsonlite)
  library(readr)
  library(dplyr)
  library(tidyr)
})

args <- commandArgs(trailingOnly = TRUE)
if (length(args) < 1) stop("Usage: Rscript simple_network_edges.R input.json")
cfg <- jsonlite::fromJSON(args[[1]])
dir.create(cfg$output_dir, recursive = TRUE, showWarnings = FALSE)

occs <- readr::read_csv(cfg$occurrence_file, show_col_types = FALSE)
required <- c(cfg$taxon_col, cfg$time_col, cfg$region_col)
missing <- setdiff(required, names(occs))
if (length(missing) > 0) stop("Missing columns: ", paste(missing, collapse = ", "))

presence <- occs %>%
  filter(!is.na(.data[[cfg$taxon_col]]), !is.na(.data[[cfg$region_col]]), !is.na(.data[[cfg$time_col]])) %>%
  distinct(time = .data[[cfg$time_col]], region = .data[[cfg$region_col]], taxon = .data[[cfg$taxon_col]]) %>%
  mutate(present = 1)

jaccard_pair <- function(a, b) {
  inter <- length(intersect(a, b))
  union <- length(union(a, b))
  if (union == 0) return(NA_real_)
  inter / union
}

edges <- presence %>%
  group_by(time, region) %>%
  summarise(taxa = list(unique(taxon)), n_taxa = n_distinct(taxon), .groups = "drop") %>%
  filter(n_taxa >= cfg$min_taxa_per_region) %>%
  group_by(time) %>%
  group_modify(function(.x, .y) {
    if (nrow(.x) < 2) return(tibble())
    pairs <- t(combn(seq_len(nrow(.x)), 2))
    tibble(
      region_a = .x$region[pairs[, 1]],
      region_b = .x$region[pairs[, 2]],
      similarity = mapply(jaccard_pair, .x$taxa[pairs[, 1]], .x$taxa[pairs[, 2]])
    )
  }) %>%
  ungroup()

readr::write_csv(edges, file.path(cfg$output_dir, "similarity_edges.csv"))
cat("Wrote", nrow(edges), "network edges\n")

