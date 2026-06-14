# Spatiotemporal Hex Standardization Skill

## Purpose

Standardize occurrences across time and space, assign records to comparable spatial units, and prepare PyRate-ready tables when required.

## Trigger

Use this Skill after taxonomy, stratigraphy, and coordinate validation have passed review.

## Inputs

- coordinate-validated occurrence table;
- stage-bin definition;
- palaeocoordinate columns;
- grid resolution;
- output directory.

## Outputs

- standardized occurrence table;
- hex-grid assignment table;
- sampling-intensity summary;
- optional PyRate input table.

## Core Code Policy

This Skill primarily calls:

`/Users/ice/Documents/Data/PBDB/ForNEE/scripts/01_standardize_hex_and_prepare_pyrate.R`

It may also call:

- `/Users/ice/Documents/Data/PBDB/spacetimestand2.R`
- `/Users/ice/Documents/Data/PBDB/spacetimewind.R`
- `/Users/ice/Documents/Data/PBDB/ForNEE/scripts/17_build_hex_and_pyrate_from_polygon_standardized.R`

The full research script remains external.

