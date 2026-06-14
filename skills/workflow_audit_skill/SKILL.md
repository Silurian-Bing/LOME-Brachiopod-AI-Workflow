# Workflow Audit Skill

## Purpose

Check whether the workflow has enough files, logs, metadata, and review records to support the claim that a RAG-Skill-Agent workflow was executed.

## Trigger

Use this Skill before manuscript submission, GitHub release, or Zenodo archiving.

## Inputs

- workflow root directory;
- required file checklist;
- run ID.

## Outputs

- audit report;
- missing-file list;
- warning list;
- pass/fail recommendation.

## Core Code Policy

This is a wrapper-only Skill. It does not call unpublished research code.

