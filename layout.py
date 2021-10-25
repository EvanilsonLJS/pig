import plotly.graph_objects as go
import dash_core_components as dcc
import dash_html_components as html


def CreateHeader():
        return html.Div(
                className="header",
                children=[
                        html.H1(
                                className="header-title",
                                children="PIG"
                        )
                ]
        )        

def CreateNavBar():
        child = []
        child.append(CreateNavBarItem("Startup_1"))
        child.append(CreateNavBarItem("Startup_2"))

        return html.Div(
                className="w3-bar w3-border w3-light-grey",
                children=child
        )

def CreateNavBarItem(content:str):
        return html.Div(
                className="w3-bar-item w3-button",
                children=[content]
        )

def CreateMenu(children,className="menu-body"):
        return html.Div(
                className=className,
                children=children
        )


def CreateGraph(id,title,fig=go.Figure()):
        return html.Div(
                className="wrapper",
                children=[

                        html.Div(
                                className="card",
                                children=[
                                        html.Div(children=title, className="menu-card"),
                                        dcc.Graph(
                                        id=id,
                                        config={"displayModeBar": False},
                                        figure=fig
                                        )
                                ]
                        )
                ]
        )