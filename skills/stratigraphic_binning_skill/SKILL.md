# Stratigraphic Binning Skill

## Purpose

Assign occurrence records to documented time bins while preserving age uncertainty and original stratigraphic terms.

## Trigger

Use this Skill after taxonomic cleaning and before spatial or diversity analysis.

## Inputs

- taxonomically reviewed occurrence table;
- GTS2020 or selected time scale;
- bin definition table;
- maximum allowed temporal uncertainty.

## Outputs

- binned occurrence table;
- bin assignment decision table;
- age uncertainty report.

## Core Code Policy

This Skill may call:

- `/Users/ice/Documents/Data/PBDB/GTS2020.Rdata`
- `/Users/ice/Documents/Data/PBDB/Standard_t.R`
- `/Users/ice/Documents/Data/PBDB/dataclean2.R`

