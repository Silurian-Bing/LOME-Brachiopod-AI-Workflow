#!/usr/bin/env Rscript

suppressPackageStartupMessages({
  library(jsonlite)
  library(readr)
  library(dplyr)
})

args <- commandArgs(trailingOnly = TRUE)
if (length(args) < 1) stop("Usage: Rscript validate_paleocoordinates.R input.json")
cfg <- jsonlite::fromJSON(args[[1]])
dir.create(cfg$output_dir, recursive = TRUE, showWarnings = FALSE)

occs <- readr::read_csv(cfg$occurrence_file, show_col_types = FALSE)

lng <- cfg$paleolng_col
lat <- cfg$paleolat_col
plate <- cfg$plate_col
missing <- setdiff(c(lng, lat, plate), names(occs))
if (length(missing) > 0) stop("Missing columns: ", paste(missing, collapse = ", "))

out <- occs %>%
  mutate(
    paleolng_valid = !is.na(.data[[lng]]) & .data[[lng]] >= -180 & .data[[lng]] <= 180,
    paleolat_valid = !is.na(.data[[lat]]) & .data[[lat]] >= -90 & .data[[lat]] <= 90,
    plate_valid = !is.na(.data[[plate]]) & .data[[plate]] != "" & .data[[plate]] != "not computable using this model",
    coordinate_quality = case_when(
      paleolng_valid & paleolat_valid & plate_valid ~ "usable",
      paleolng_valid & paleolat_valid ~ "coordinate_only",
      TRUE ~ "not_usable"
    )
  )

readr::write_csv(out, file.path(cfg$output_dir, "occurrences_coordinate_validated.csv"))
readr::write_csv(out %>% count(coordinate_quality), file.path(cfg$output_dir, "coordinate_quality_report.csv"))

writeLines(
  c(
    "# Plate and Coordinate Source Report",
    "",
    paste("Coordinate source:", cfg$coordinate_source),
    paste("Palaeolongitude column:", lng),
    paste("Palaeolatitude column:", lat),
    paste("Plate column:", plate)
  ),
  file.path(cfg$output_dir, "plate_source_report.md")
)

cat("Coordinate validation complete\n")

