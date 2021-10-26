import dash
from numpy import number
import openfin_context_publisher
import openfin_context_subscriber
import dash_core_components as dcc
import dash_html_components as html
from dash.dependencies import Input, Output
import plotly.express as px

import pandas as pd

df = pd.read_csv(
    'https://raw.githubusercontent.com/plotly/datasets/master/gapminderDataFiveYear.csv')

app = dash.Dash(__name__)
app.config.suppress_callback_exceptions = True


app.layout = html.Div([
    # represents the URL bar, doesn't render anything
    dcc.Location(id='url', refresh=False),
    # dcc.Link('Navigate to "/OpenFinSubscriber"', href='/OpenFinSubscriber'),
    # html.Br(),
    # dcc.Link('Navigate to "/OpenFinPublisher"', href='/OpenFinPublisher'),
    # content will be rendered in this element
    html.Div(id='page-content')
])


@app.callback(Output('graph-with-slider', 'figure'),
              [Input('OpenfinContextSubscriber', 'currentContext')])
def update_graph(selected_year):
    if selected_year is None:
        return px.scatter(df, x="gdpPercap", y="lifeExp",
                          size="pop", color="continent", hover_name="country",
                          log_x=True, size_max=55)
    app.logger.info(df.year.min())
    app.logger.info(selected_year)
    filtered_df = df[df.year == int(selected_year)]
    app.logger.info(filtered_df)
    fig = px.scatter(filtered_df, x="gdpPercap", y="lifeExp",
                     size="pop", color="continent", hover_name="country",
                     log_x=True, size_max=55)

    fig.update_layout(transition_duration=500)

    return fig


@app.callback(Output('page-content', 'children'),
              [Input('url', 'pathname')])
def display_page(pathname):
    if pathname == '/OpenFinPublisher':
        return html.Div([
            openfin_context_publisher.OpenfinContextPublisher(
                id='OpenfinContextPublisher',
                contextTopic='OpenFin_Context',
                items=[str(year) for year in df['year'].unique()]
            )
        ])
    else:
        return html.Div([
            dcc.Graph(id='graph-with-slider'),
            openfin_context_subscriber.OpenfinContextSubscriber(
                id='OpenfinContextSubscriber',
                contextTopic='OpenFin_Context'
            )
        ])


if __name__ == '__main__':
    app.run_server(debug=False)
