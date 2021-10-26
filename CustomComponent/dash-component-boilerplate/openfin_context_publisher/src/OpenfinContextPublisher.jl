
module OpenfinContextPublisher
using Dash

const resources_path = realpath(joinpath( @__DIR__, "..", "deps"))
const version = "0.0.1"

include("jl/''_openfincontextpublisher.jl")

function __init__()
    DashBase.register_package(
        DashBase.ResourcePkg(
            "openfin_context_publisher",
            resources_path,
            version = version,
            [
                DashBase.Resource(
    relative_package_path = "async-OpenfinContextPublisher.js",
    external_url = "https://unpkg.com/openfin_context_publisher@0.0.1/openfin_context_publisher/async-OpenfinContextPublisher.js",
    dynamic = nothing,
    async = :true,
    type = :js
),
DashBase.Resource(
    relative_package_path = "async-OpenfinContextPublisher.js.map",
    external_url = "https://unpkg.com/openfin_context_publisher@0.0.1/openfin_context_publisher/async-OpenfinContextPublisher.js.map",
    dynamic = true,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "openfin_context_publisher.min.js",
    external_url = nothing,
    dynamic = nothing,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "openfin_context_publisher.min.js.map",
    external_url = nothing,
    dynamic = true,
    async = nothing,
    type = :js
)
            ]
        )

    )
end
end
