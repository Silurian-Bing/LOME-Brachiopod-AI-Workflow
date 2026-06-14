# PyRate Pipeline Skill

## Purpose

Prepare and run PyRate-compatible birth-death analyses from approved occurrence tables, with full runtime and parameter logging.

## Trigger

Use this Skill only when the research question requires origination/extinction dynamics rather than simple diversity curves.

## Inputs

- PyRate-ready occurrence table;
- PyRate script path;
- q-shift file if used;
- number of generations;
- number of replicates;
- output directory.

## Outputs

- PyRate input files;
- MCMC logs;
- rate estimates;
- convergence summary;
- LTT outputs where appropriate.

## Core Code Policy

This Skill calls shell wrappers under:

- `/Users/ice/Documents/Data/PBDB/ForNEE/pyrate_shells/`
- `/Users/ice/Documents/Data/PBDB/Pyrate Analysis/Scripts/`

The repository wrapper records the call and environment but does not copy full PyRate project scripts.

