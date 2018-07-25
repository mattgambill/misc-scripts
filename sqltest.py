import mysql.connector
import pandas as pd
import warnings
import plotly.plotly as py
from plotly.graph_objs import *
warnings.filterwarnings('ignore', message='numpy.dtype size changed')
warnings.filterwarnings('ignore', message='numpy.ufunc size changed')
cnx = mysql.connector.connect(user='engineering',
                              password='burgundy&1923T',
                              host='127.0.0.1', database='world')

cursor = cnx.cursor()
cursor.execute('select Name, Continent, Population, LifeExpectancy, GNP from country'
               )
rows = cursor.fetchall()

print rows

df = pd.DataFrame([[ij for ij in i] for i in rows])

df.rename(columns={
    0: 'Name',
    1: 'Continent',
    2: 'Population',
    3: 'LifeExpectancy',
    4: 'GNP',
    }, inplace=True)
df = df.sort_values(['LifeExpectancy'], ascending=[1])
country_names = df['Name']
for i in range(len(country_names)):
    try:
        country_names[i] = str(country_names[i]).decode('utf-8')
    except:
        country_names[i] = 'Country name decode error'

trace1 = Scatter(x=df['LifeExpectancy'], y=df['GNP'],
                 text=country_names, mode='markers')
layout = Layout(xaxis=XAxis(title='Life Expectancy'),
                yaxis=YAxis(type='log', title='GNP'))
data = Data([trace1])
fig = Figure(data=data, layout=layout)
py.iplot(fig, filename='world GNP vs life expectancy')

cnx.close()
