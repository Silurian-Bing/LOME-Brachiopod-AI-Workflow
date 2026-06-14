# Biogeographic Network Skill

## Purpose

Build palaeobiogeographic similarity matrices and network summaries from approved occurrence, region, and time-bin data.

## Trigger

Use this Skill when the workflow needs to compare faunal similarity, regional connectivity, or network structure across time bins.

## Inputs

- occurrence table with taxon, time-bin, and spatial-unit fields;
- similarity metric;
- minimum sampling threshold;
- output directory.

## Outputs

- assemblage matrix;
- similarity matrix;
- network edge table;
- network diagnostics.

## Core Code Policy

This Skill may call:

- `/Users/ice/Documents/Data/PBDB/network.R`
- `/Users/ice/Documents/Data/PBDB/network global.R`
- `/Users/ice/Documents/Data/PBDB/compare_biogeography.R`
- `/Users/ice/Documents/Data/PBDB/ForNEE/scripts/20_beta_diversity_golonka_polygon.R`

Full analytical scripts remain external.

