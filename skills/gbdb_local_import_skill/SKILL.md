# GBDB and Local Import Skill

## Purpose

Import GBDB-derived and curated local occurrence records into the same workflow without erasing their source-specific fields.

## Trigger

Use this Skill when PBDB records must be integrated with GBDB records or with a researcher-curated dataset.

## Inputs

- GBDB CSV or RData path;
- local curated dataset path;
- schema mapping file;
- output directory.

## Outputs

- imported source tables;
- schema mapping report;
- combined but source-preserving table.

## Core Code Policy

This Skill may call:

- `/Users/ice/Documents/Data/PBDB/GBDBcombine.R`
- `/Users/ice/Documents/Data/PBDB/Pyrate Analysis/GBDB/GBDBcombine.R`
- `/Users/ice/Documents/Data/PBDB/Pyrate Analysis/GBDB/GBDB2PBDB.R`

Full research scripts are referenced, not copied.

