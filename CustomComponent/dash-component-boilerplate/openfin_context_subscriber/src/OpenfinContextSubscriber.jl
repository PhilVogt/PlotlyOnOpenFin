
module OpenfinContextSubscriber
using Dash

const resources_path = realpath(joinpath( @__DIR__, "..", "deps"))
const version = "0.0.1"

include("jl/''_openfincontextsubscriber.jl")

function __init__()
    DashBase.register_package(
        DashBase.ResourcePkg(
            "openfin_context_subscriber",
            resources_path,
            version = version,
            [
                DashBase.Resource(
    relative_package_path = "async-OpenfinContextSubscriber.js",
    external_url = "https://unpkg.com/openfin_context_subscriber@0.0.1/openfin_context_subscriber/async-OpenfinContextSubscriber.js",
    dynamic = nothing,
    async = :true,
    type = :js
),
DashBase.Resource(
    relative_package_path = "async-OpenfinContextSubscriber.js.map",
    external_url = "https://unpkg.com/openfin_context_subscriber@0.0.1/openfin_context_subscriber/async-OpenfinContextSubscriber.js.map",
    dynamic = true,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "openfin_context_subscriber.min.js",
    external_url = nothing,
    dynamic = nothing,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "openfin_context_subscriber.min.js.map",
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
