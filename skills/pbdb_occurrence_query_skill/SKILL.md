# PBDB Occurrence Query Skill

## Purpose

Retrieve PBDB occurrence records for a defined taxon and time interval while preserving query parameters, retrieval date, and original PBDB fields.

## Trigger

Use this Skill when an Agent needs PBDB occurrence data for brachiopods or another fossil group.

## Inputs

- `base_name`
- `min_ma`
- `max_ma`
- `show`
- `vocab`
- `limit`
- output directory

## Outputs

- raw PBDB CSV;
- query metadata JSON;
- field summary report.

## Core Code Policy

This Skill may call local core scripts such as:

- `/Users/ice/Documents/Data/PBDB/downloadpbdb.R`
- `/Users/ice/Documents/Data/PBDB/Pyrate Analysis/1_downloadpbdb.R`

The full local scripts are not copied into this repository.

