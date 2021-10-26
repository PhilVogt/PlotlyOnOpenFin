import openfin_context_publisher
import dash
from dash.dependencies import Input, Output
import dash_html_components as html

app = dash.Dash(__name__)

app.layout = html.Div([
    openfin_context_publisher.OpenfinContextPublisher(
        id='input',
        contextTopic='OpenFin_Context',
        items=['1', '2', '3', '4']
    ),
    html.Div(id='output')
])


@app.callback(
    Output('output', 'children'),
    [Input('input', 'selectedItem')])
def display_output(value):
    return 'You have entered {}'.format(value)


if __name__ == '__main__':
    app.run_server(debug=True)
