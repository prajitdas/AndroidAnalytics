#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on August 3, 2015
@author: Prajit
Usage: python generatePermissionsRequestedByAppFrequencyHistogram.py username api_key
'''

from bs4 import BeautifulSoup
import urllib2
import sys
import databaseHandler
import time
import datetime
import traceback
import httplib
import xmltodict
import plotly.tools as tls
# Learn about API authentication here: https://plot.ly/python/getting-started
# Find your api_key here: https://plot.ly/settings/api
import plotly.plotly as py
from plotly.graph_objs import *

# This is a plot for Permissions count vs Frequency of apps requesting that many permissions
def generatePlot(username, api_key, permName, appCount):
    tls.set_credentials_file(username, api_key)
    tracePerm = Bar(
        x=permName,
        y=appCount,
        name='App frequency count',
        marker=Marker(
            color='rgb(55, 83, 100)'
        )
    )
    data = Data([tracePerm])
    layout = Layout(
        title='Permission vs App frequency count',
        xaxis=XAxis(
            title='Permission',
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

# Hit a URL, extract permissions from the url
def crawlUrl(dbHandle, urlExtract):
    headers = { 'User-Agent' : 'Mozilla/5.0' }
    req = urllib2.Request(urlExtract, None, headers)
    try: 
        page = urllib2.urlopen(req).read()
        xmlParsedDict = xmltodict.parse(page)
        print xmlParsedDict
        
    except urllib2.HTTPError, e:
        print 'HTTPError = ', str(e.code)
        #This is risky!!!!
        # June 19, 2015: Yes, this was risky commenting out this piece of code - Prajit
        # Don't be ridiculous, once you have collected some data you should not be deleting that data, right?
        # Have to monitor this properly
        #sqlStatement = "DELETE FROM `appurls` WHERE `app_url` = '"+urlExtract+"';"
        #databaseHandler.dbManipulateData(dbHandle, sqlStatement)
    except urllib2.URLError, e:
        print 'URLError = ' + str(e.reason)
    except httplib.HTTPException, e:
        print 'HTTPException'
    except Exception:
        print 'generic exception: ' + traceback.format_exc()
 
def doTask(username, api_key):
    dbHandle = databaseHandler.dbConnectionCheck() #DB Open

#     crawlUrl(dbHandle, "https://raw.githubusercontent.com/android/platform_frameworks_base/master/core/res/AndroidManifest.xml")    
#     sys.exit(1)

    cursor = dbHandle.cursor()
    sqlStatement = "SELECT * FROM `perm_app_count_view` LIMIT 50;"
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
