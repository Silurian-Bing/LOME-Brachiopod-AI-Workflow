# Diversity Estimation Skill

## Purpose

Estimate diversity patterns under documented sampling-aware protocols and export diagnostic summaries.

## Trigger

Use this Skill after taxonomy, stratigraphy, and sampling structure have been reviewed.

## Inputs

- cleaned and binned occurrence table;
- taxon column;
- time-bin column;
- sampling protocol;
- optional spatial unit column.

## Outputs

- diversity estimates by bin;
- sampling diagnostics;
- sensitivity summary.

## Core Code Policy

This Skill may call:

- `/Users/ice/Documents/Data/PBDB/Divdyn_process.R`
- `/Users/ice/Documents/Data/PBDB/Chao1_bra_1MaBin.R`
- `/Users/ice/Documents/Data/PBDB/Diversity.R`
- `/Users/ice/Documents/Data/PBDB/ForNEE/scripts/38_supp_crisis_beta_controls.R`

