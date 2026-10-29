# Build the manual: julia --project=docs docs/make.jl
using Documenter, Almanac

DocMeta.setdocmeta!(Almanac, :DocTestSetup, :(using Almanac); recursive=true)

makedocs(;
    sitename="Almanac.jl",
    modules=[Almanac],
    format=Documenter.HTML(; prettyurls=get(ENV, "CI", "false") == "true",
        size_threshold=600_000, size_threshold_warn=300_000),
    pages=[
        "Home" => "index.md",
        "First session" => "tutorial.md",
        "Tasks" => [
            "howto/contexts.md",
            "howto/derivatives.md",
            "howto/tables.md",
            "howto/events.md",
            "howto/writing.md",
        ],
        "Explanation" => [
            "explanation/cspice.md",
            "explanation/coverage.md",
        ],
        "Reference" => [
            "reference/kernels.md",
            "reference/time.md",
            "reference/states.md",
            "reference/frames.md",
            "reference/geometry.md",
            "reference/events.md",
            "reference/math.md",
            "reference/files.md",
            "reference/ek.md",
        ],
    ],
    checkdocs=:exports,
)

deploydocs(; repo="github.com/Orbitology/Almanac.jl.git", devbranch="main")
