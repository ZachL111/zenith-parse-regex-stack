# zenith-parse-regex-stack

`zenith-parse-regex-stack` explores parsers with a small Ruby codebase and local fixtures. The technical goal is to implement a Ruby parsers project for regex visual model generation, using layout fixtures and stable geometry snapshots.

## Purpose

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Zenith Parse Regex Stack Review Notes

The first comparison I would make is `token drift` against `token drift` because it shows where the rule is most opinionated.

## What Is Covered

- `fixtures/domain_review.csv` adds cases for token drift and grammar width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/zenith-parse-regex-walkthrough.md` walks through the case spread.
- The Ruby code includes a review path for `token drift` and `token drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Notes

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `token drift`, `grammar width`, `label quality`, and `error locality`.

The added Ruby path is deliberately direct, with fixtures doing most of the explaining.

## Command

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Audit Path

The check exercises the source code and the review fixture. `stale` is the high score at 213; `baseline` is the low score at 164.

## Limits

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
