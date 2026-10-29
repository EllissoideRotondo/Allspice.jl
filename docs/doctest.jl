# Run the doctests of the docstrings only, without a build of the manual:
#     julia --project=docs docs/doctest.jl
using Documenter, Almanac
DocMeta.setdocmeta!(Almanac, :DocTestSetup, :(using Almanac); recursive=true)
doctest(Almanac; manual=false)
