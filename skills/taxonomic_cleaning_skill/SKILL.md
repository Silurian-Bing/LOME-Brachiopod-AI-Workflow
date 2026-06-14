# Taxonomic Cleaning Skill

## Purpose

Resolve taxonomic names, synonym candidates, open nomenclature, doubtful identifications, and rank conflicts before downstream analysis.

## Trigger

Use this Skill after occurrence data have been imported and before stratigraphic binning or diversity analysis.

## Inputs

- source-preserving occurrence table;
- synonymy or authority table;
- open nomenclature rules;
- rank aggregation rule.

## Outputs

- cleaned occurrence table;
- taxonomic decision table;
- uncertain-record report.

## Core Code Policy

This Skill may call:

- `/Users/ice/Documents/Data/PBDB/dataclean2.R`
- `/Users/ice/Documents/Data/PBDB/ForNEE/input/3_dataclean.R`
- `/Users/ice/Documents/Data/PBDB/ForNEE/input/4_dataclean2.R`

The wrapper records decisions but does not copy unpublished curation logic.

