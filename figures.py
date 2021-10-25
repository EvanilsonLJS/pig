import plotly.express as px
import pandas as pd

df = pd.DataFrame(dict(
        r=[1, 5, 2, 2, 3],
        theta=["Empreendedor","Tecnologia","Solução","Capital","Mercado"]))

fig1 = px.line_polar(df, r='r', theta='theta', line_close=True)
