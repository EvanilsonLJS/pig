import dash
import dash_html_components as html
import dash_core_components as dcc
import plotly.graph_objects as go
import plotly.io as pio

from dash.dependencies import Output, Input
from plotly.subplots import make_subplots

external_stylesheets = [
    {
        "href": "https://fonts.googleapis.com/css2?family=Lato:wght@400;700&display=swap",
        "rel": "stylesheet",
    },
]

app = dash.Dash(__name__, external_stylesheets=external_stylesheets)
app = app.server

app.title = "Pig - Dashboard!"

app.layout = html.Div(html.H1("Hello World"))

if __name__ == '__main__':
        app.run_server(debug=True)