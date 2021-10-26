# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class OpenfinContextSubscriber(Component):
    """An OpenfinContextSubscriber component.
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

- currentContext (string; optional):
    The context passed back out when the OpenFin subscription gets
    called back."""
    @_explicitize_args
    def __init__(self, id=Component.UNDEFINED, contextTopic=Component.REQUIRED, currentContext=Component.UNDEFINED, **kwargs):
        self._prop_names = ['id', 'contextTopic', 'currentContext']
        self._type = 'OpenfinContextSubscriber'
        self._namespace = 'openfin_context_subscriber'
        self._valid_wildcard_attributes =            []
        self.available_properties = ['id', 'contextTopic', 'currentContext']
        self.available_wildcard_properties =            []
        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs
        args = {k: _locals[k] for k in _explicit_args if k != 'children'}
        for k in ['contextTopic']:
            if k not in args:
                raise TypeError(
                    'Required argument `' + k + '` was not specified.')
        super(OpenfinContextSubscriber, self).__init__(**args)
