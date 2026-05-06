# Zenith Parse Regex Stack Walkthrough

This note is the quickest way to read the extra review model in `zenith-parse-regex-stack`.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | token drift | 164 | ship |
| stress | grammar width | 164 | ship |
| edge | label quality | 185 | ship |
| recovery | error locality | 182 | ship |
| stale | token drift | 213 | ship |

Start with `stale` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

`stale` is the optimistic case; use it to make sure the scoring path still rewards strong signal.
