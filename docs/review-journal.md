# Review Journal

The review surface for `zenith-parse-regex-stack` is deliberately narrow: one fixture, one scoring rule, and one local check.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its parsers focus without claiming live deployment or external usage.

## Cases

- `baseline`: `token drift`, score 164, lane `ship`
- `stress`: `grammar width`, score 164, lane `ship`
- `edge`: `label quality`, score 185, lane `ship`
- `recovery`: `error locality`, score 182, lane `ship`
- `stale`: `token drift`, score 213, lane `ship`

## Note

A future change should add new cases before it changes the scoring rule.
