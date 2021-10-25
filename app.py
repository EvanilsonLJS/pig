import dash
import dash_html_components as html
import dash_core_components as dcc
import plotly.graph_objects as go
import plotly.io as pio

from dash.dependencies import Output, Input
from plotly.subplots import make_subplots

from layout import *
from figures import *

pio.templates.default = "plotly_white"

external_stylesheets = [
    {
        "href": "https://fonts.googleapis.com/css2?family=Lato:wght@400;700&display=swap",
        "rel": "stylesheet",
        
    }
]

app = dash.Dash(__name__, external_stylesheets=external_stylesheets)
server = app.server

app.title = "Pig - Dashboard!"

child = []

child.append(CreateHeader())
child.append(CreateNavBar())
child.append(CreateGraph("fig1","fig 1",fig1))


app.layout = html.Div(children=child)

if __name__ == '__main__':
        app.run_server(debug=True)