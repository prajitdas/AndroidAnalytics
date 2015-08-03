#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on August 3, 2015
@author: Prajit
Usage: python generatePermissionsRequestedByAppFrequencyHistogram.py username api_key
'''

import sys
import time
import databaseHandler
import plotly.tools as tls
# Learn about API authentication here: https://plot.ly/python/getting-started
# Find your api_key here: https://plot.ly/settings/api
import plotly.plotly as py
from plotly.graph_objs import *

# This is a plot for Permissions count vs Frequency of apps requesting that many permissions
def generatePlot(username, api_key, permName, appCount):
    tls.set_credentials_file(username, api_key)
    trace = Bar(
        x=permCount,
        y=appCount,
        name='App frequency',
        marker=Marker(
            color='rgb(55, 83, 109)'
        )
    )
    data = Data([trace])
    layout = Layout(
        title='App Frequency vs Permissions requested',
        xaxis=XAxis(
            title='Permissions requested',
            titlefont=Font(
                size=16,
                color='rgb(107, 107, 107)'
            ),
            tickfont=Font(
                size=14,
                color='rgb(107, 107, 107)'
            )
        ),
        yaxis=YAxis(
            title='App frequency',
            titlefont=Font(
                size=16,
                color='rgb(107, 107, 107)'
            ),
            tickfont=Font(
                size=14,
                color='rgb(107, 107, 107)'
            )
        ),
        legend=Legend(
            x=0,
            y=1.0,
            bgcolor='rgba(255, 255, 255, 0)',
            bordercolor='rgba(255, 255, 255, 0)'
        ),
        barmode='group',
        bargap=0.15,
        bargroupgap=0.1
    )
    fig = Figure(data=data, layout=layout)
    plot_url = py.plot(fig, filename='style-bar')
    print "Check out the URL: "+plot_url+" for your plot"
 
def doTask(username, api_key):
    dbHandle = databaseHandler.dbConnectionCheck() #DB Open

    cursor = dbHandle.cursor()
    sqlStatement = "SELECT * FROM `perm_app_count_view`;"
    try:
        cursor.execute(sqlStatement)
        if cursor.rowcount > 0:
            queryOutput = cursor.fetchall()
            appCount = []
            permName = []
            for row in queryOutput:
                appCount.append(row[0])
                permName.append(row[1])
    except:
        print "Unexpected error:", sys.exc_info()[0]
        raise

    dbHandle.close() #DB Close

    generatePlot(username, api_key, permName, appCount)
    
def main(argv):
    if len(sys.argv) != 3:
        sys.stderr.write('Usage: python generatePermissionsRequestedByAppFrequencyHistogram.py username api_key\n')
        sys.exit(1)

    startTime = time.time()
    doTask(sys.argv[1], sys.argv[2])
    executionTime = str((time.time()-startTime)*1000)
    print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
    sys.exit(main(sys.argv))
