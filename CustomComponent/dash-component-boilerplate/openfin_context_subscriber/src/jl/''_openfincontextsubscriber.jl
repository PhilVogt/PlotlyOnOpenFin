# AUTO GENERATED FILE - DO NOT EDIT

export ''_openfincontextsubscriber

"""
    ''_openfincontextsubscriber(;kwargs...)

An OpenfinContextSubscriber component.
ExampleComponent is an example component.
It takes a property, `label`, and
displays it.
It renders an input with the property `value`
which is editable by the user.
Keyword arguments:
- `id` (String; optional): The ID used to identify this component in Dash callbacks.
- `contextTopic` (String; required): The value for the OpenFin topic to publish values onto.
- `currentContext` (String; optional): The context passed back out when the OpenFin subscription gets called back.
"""
function ''_openfincontextsubscriber(; kwargs...)
        available_props = Symbol[:id, :contextTopic, :currentContext]
        wild_props = Symbol[]
        return Component("''_openfincontextsubscriber", "OpenfinContextSubscriber", "openfin_context_subscriber", available_props, wild_props; kwargs...)
end

