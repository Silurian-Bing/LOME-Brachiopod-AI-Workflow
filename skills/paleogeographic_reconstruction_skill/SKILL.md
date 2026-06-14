# Palaeogeographic Reconstruction Skill

## Purpose

Validate palaeogeographic coordinates, plate assignments, and coordinate provenance before spatial standardization.

## Trigger

Use this Skill when occurrence records include present-day or palaeocoordinate fields and the workflow needs spatial analysis.

## Inputs

- binned occurrence table;
- coordinate column names;
- plate or region column names;
- plate model or palaeomap source statement.

## Outputs

- coordinate-validated table;
- coordinate quality report;
- plate-field comparison report.

## Core Code Policy

This Skill may call:

- `/Users/ice/Documents/Data/PBDB/ForNEE/scripts/11_compare_plate_fields_and_plot_windows.R`
- `/Users/ice/Documents/Data/PBDB/ForNEE/scripts/12_compare_olddata_golonka_paleomap.R`
- `/Users/ice/Documents/Data/PBDB/ForNEE/scripts/13_fix_south_china_golonka_coords.R`

The wrapper validates coordinate fields without copying the research-specific reconstruction code.

