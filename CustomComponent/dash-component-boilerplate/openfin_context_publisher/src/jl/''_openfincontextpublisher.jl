# AUTO GENERATED FILE - DO NOT EDIT

export ''_openfincontextpublisher

"""
    ''_openfincontextpublisher(;kwargs...)

An OpenfinContextPublisher component.
ExampleComponent is an example component.
It takes a property, `label`, and
displays it.
It renders an input with the property `value`
which is editable by the user.
Keyword arguments:
- `id` (String; optional): The ID used to identify this component in Dash callbacks.
- `contextTopic` (String; required): The value for the OpenFin topic to publish values onto.
- `items` (Array; required): The items to render in the dropdown. When the selection is changed, the selected
value will be published on the OpenFin Application bus, on the contextTopic to all 
subscribers.
- `selectedItem` (String; optional): The value passed back out when selection changes.
"""
function ''_openfincontextpublisher(; kwargs...)
        available_props = Symbol[:id, :contextTopic, :items, :selectedItem]
        wild_props = Symbol[]
        return Component("''_openfincontextpublisher", "OpenfinContextPublisher", "openfin_context_publisher", available_props, wild_props; kwargs...)
end

