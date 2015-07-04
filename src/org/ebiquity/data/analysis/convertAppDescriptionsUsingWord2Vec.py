#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on May 18, 2015
@author: Prajit
Usage: python generateFrequencyHistogram.py username api_key
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
def generatePlot(username, api_key, permCount, permCountFreq):
    tls.set_credentials_file(username, api_key)
    trace = Bar(
        x=permCount,
        y=permCountFreq,
        name='App frequency',
        marker=Marker(
            color='rgb(55, 83, 109)'
        )
    )
    data = Data([trace])
    layout = Layout(
        title='App Frequency vs Permissions requested',
        xaxis=XAxis(
            title='Number of Permissions requested',
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
  
def extractAppPermData():
    dbHandle = databaseHandler.dbConnectionCheck()
    cursor = dbHandle.cursor()
    sqlStatement = "SELECT * FROM `app_perm_count`;"
    try:
        cursor.execute(sqlStatement)
        if cursor.rowcount > 0:
            queryOutput = cursor.fetchall()
            permCountDict = {}
            for row in queryOutput:
                permissionCount = row[1]
                if permCountDict.has_key(permissionCount):
                    currentValue = permCountDict[permissionCount]
                    permCountDict[permissionCount] = currentValue + 1
                else:
                    permCountDict[permissionCount] = 1
    except:
        print "Unexpected error:", sys.exc_info()[0]
        raise
    return permCountDict
 
def doTask(username, api_key):
    permCountDict = extractAppPermData()
    permCount = []
    permCountFreq = []
    for permissionCount, permissionCountFreq in permCountDict.iteritems():
        permCount.append(permissionCount)
        permCountFreq.append(permissionCountFreq)
    generatePlot(username, api_key, permCount, permCountFreq)
    
def main(argv):
    if len(sys.argv) != 3:
        sys.stderr.write('Usage: python generateFrequencyHistogram.py username api_key\n')
        sys.exit(1)

    startTime = time.time()
    doTask(sys.argv[1], sys.argv[2])
    executionTime = str((time.time()-startTime)*1000)
    print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
    sys.exit(main(sys.argv))

-- --------------------------------------------------------

--
-- View app_desc_pkg_name_view
--

CREATE VIEW `app_desc_pkg_name_view` AS
SELECT `app_pkg_name`, `desc`
FROM `appdata`
WHERE `desc` IS IN English;