# zenith-parse-regex-stack

`zenith-parse-regex-stack` explores parsers in Ruby. The repository keeps the core rule set compact, then surrounds it with examples that show how the decisions move.

## Zenith Parse Regex Stack Notes

The quickest review path is the verifier first, then the fixtures, then the operations note. That order makes it easy to see whether the code, data, and explanation still agree.

## Implementation Notes

The project is organized around a compact model rather than a large framework. Inputs are scored, classified, and checked against golden fixtures. The constants live in code and are mirrored in metadata so documentation drift is easy to catch. The Ruby code keeps the module small and leans on Minitest for direct fixture checks.

## Why This Exists

The repository exists to keep a technical idea small enough to reason about. The implementation avoids external dependencies where possible, then uses fixtures to make changes easy to review.

## Feature Notes

- Uses fixture data to keep error labels changes visible in code review.
- Includes extended examples for grammar boundaries, including `surge` and `degraded`.
- Documents golden examples tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.
- Stores project constants and verification metadata in `metadata/project.json`.

## Example Scenarios

The examples are meant to be readable before they are exhaustive. They cover enough variation to show how latency and risk can pull a decision below the threshold.

## Code Tour

- `lib`: library code
- `tests`: verification harness
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## Local Setup

The only required setup is the local Ruby toolchain. After cloning, stay in the repo root so fixture paths resolve correctly.

## Try It

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Tests

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Boundaries

The repository favors determinism over breadth. It does not pull live data, keep secrets, or depend on network access for verification.

## Roadmap

- Add a short report command that prints the score breakdown for a single scenario.
- Add malformed input fixtures so the failure path is as visible as the happy path.
- Split the scoring constants into a typed configuration object and validate it before use.
- Add one more parsers fixture that focuses on a malformed or borderline input.
