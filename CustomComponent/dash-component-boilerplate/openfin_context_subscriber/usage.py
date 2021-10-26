import openfin_context_subscriber
import dash
from dash.dependencies import Input, Output
import dash_html_components as html

app = dash.Dash(__name__)

app.layout = html.Div([
    openfin_context_subscriber.OpenfinContextSubscriber(
        id='input',
        contextTopic='OpenFin_Context'
    ),
    html.Div(id='output')
])


@app.callback(
    Output('output', 'children'),
    [Input('input', 'currentContext')])
def display_output(value):
    return 'You have entered {}'.format(value)


if __name__ == '__main__':
    app.run_server(debug=True)
