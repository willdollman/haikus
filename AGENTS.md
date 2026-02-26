# Repository Guide

## Purpose

This repository contains haikus about different countries.

## Naming Convention

- Save each haiku as `$country.txt` (for example, `canada.txt`, `india.txt`, `brazil.txt`).

## Content Rules

- Each haiku file must be exactly 3 lines.

## Testing

- Run `./scripts/test-haikus.sh`.
- The test script checks each `*.txt` haiku file and fails if any file is not exactly 3 lines.

## Formatting

- Run `./scripts/format-haikus.sh`.
- The formatter removes trailing commas from every haiku line in each `*.txt` file.
