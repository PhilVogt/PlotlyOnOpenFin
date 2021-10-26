# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class OpenfinContextPublisher(Component):
    """An OpenfinContextPublisher component.
ExampleComponent is an example component.
It takes a property, `label`, and
displays it.
It renders an input with the property `value`
which is editable by the user.

Keyword arguments:

- id (string; optional):
    The ID used to identify this component in Dash callbacks.

- contextTopic (string; required):
    The value for the OpenFin topic to publish values onto.

- items (list; required):
    The items to render in the dropdown. When the selection is
    changed, the selected  value will be published on the OpenFin
    Application bus, on the contextTopic to all   subscribers.

- selectedItem (string; optional):
    The value passed back out when selection changes."""
    @_explicitize_args
    def __init__(self, id=Component.UNDEFINED, contextTopic=Component.REQUIRED, selectedItem=Component.UNDEFINED, items=Component.REQUIRED, **kwargs):
        self._prop_names = ['id', 'contextTopic', 'items', 'selectedItem']
        self._type = 'OpenfinContextPublisher'
        self._namespace = 'openfin_context_publisher'
        self._valid_wildcard_attributes =            []
        self.available_properties = ['id', 'contextTopic', 'items', 'selectedItem']
        self.available_wildcard_properties =            []
        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs
        args = {k: _locals[k] for k in _explicit_args if k != 'children'}
        for k in ['contextTopic', 'items']:
            if k not in args:
                raise TypeError(
                    'Required argument `' + k + '` was not specified.')
        super(OpenfinContextPublisher, self).__init__(**args)
