# Figure Generation Skill

## Purpose

Generate auditable figures from approved workflow outputs. This Skill creates visual products but must not alter analytical data.

## Trigger

Use this Skill when reviewed data tables or workflow structures need to be turned into manuscript figures.

## Inputs

- approved data table or workflow manifest;
- figure type;
- output format;
- caption brief;
- style settings.

## Outputs

- editable vector figure;
- raster preview;
- figure provenance table;
- caption draft.

## Core Code Policy

This Skill may call:

- `/Users/ice/Documents/Data/PBDB/ForNEE/scripts/27_main_fig1_ghost_province_projection.R`
- `/Users/ice/Documents/Data/PBDB/ForNEE/scripts/43_kde_hex_stage_maps.R`
- `/Users/ice/Documents/Data/PBDB/ForNEE/scripts/41_curate_formal_supplement_figures.R`
- local manuscript figure scripts under `/Users/ice/Documents/Papers/My Papers/Writting/AI agent/scripts/`

Research-specific figure code is referenced, not copied.

