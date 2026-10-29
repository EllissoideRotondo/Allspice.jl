# Almanac.jl

Native Julia port of CSPICE N0067. `CONTRACT.md` records the internal interfaces.

Use the skills whenever you change an exported name, a docstring, the README, the manual or a test. The global skills hold the general rules; the project skills add the rules of this repository:

- `julia-docstrings`, `julia-manual`, `julia-readme`, with `almanac-docs`: docstrings, the Documenter manual, the README.
- `julia-doc-reader-review` (agent `julia-doc-reader`): independent reader review after a documentation change; `almanac-docs` says what the reader gets.
- `julia-tests`, with `almanac-tests`: test design, regression tests, trimming.
- `julia-dependencies`: every environment (root, `test`, `docs`) on the latest versions that `[compat]` allows, checked before a test run or a measurement.

Commands:

```sh
julia --startup-file=no test/parallel.jl [group ...]     # tests
julia --project=docs docs/make.jl                                    # manual and doctests
```
