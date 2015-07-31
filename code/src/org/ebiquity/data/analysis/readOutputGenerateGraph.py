#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on July 31, 2015
@author: Prajit
Usage: python readOutputGenerateGraph.py username api_key fileToRead
'''

import sys
import time
import databaseHandler
import plotly.tools as tls
# Learn about API authentication here: https://plot.ly/python/getting-started
# Find your api_key here: https://plot.ly/settings/api
import plotly.plotly as py
from plotly.graph_objs import *
import json

# This is a plot for Goodness of Cluster measure using homogeneity_score, completeness_score
def generatePlot(username, api_key, clusterCountList, homogeneityScoreList, completenessScoreList, adjustedRandScoreList, adjustedMutualInfoScoreList, vMeasureScoreList):
    tls.set_credentials_file(username, api_key)
    trace0 = Bar(
        x=clusterCountList,
        y=homogeneityScoreList,
        name='Homogeneity Score',
        marker=Marker(
            color='rgb(0, 255, 0)'
        )
    )
    trace1 = Bar(
        x=clusterCountList,
        y=completenessScoreList,
        name='Completeness Score',
        marker=Marker(
            color='rgb(255, 0, 0)'
        )
    )
    data = Data([trace0,trace1])
    '''
    if len(adjustedRandScoreList) > 0:
        trace2 = Bar(
            x=clusterCountList,
            y=adjustedRandScoreList,
            name='V Measure Score',
            marker=Marker(
                color='rgb(0, 0, 255)'
            )
        )
        data = Data([trace0,trace1,trace2])
        if len(adjustedMutualInfoScoreList) > 0:
            trace3 = Bar(
                x=clusterCountList,
                y=adjustedMutualInfoScoreList,
                name='Adjusted Mutual Info Score',
                marker=Marker(
                    color='rgb(100, 100, 100)'
                )
            )
            data = Data([trace0,trace1,trace2,trace3])
            if len(adjustedRandScoreList) > 0:
                trace4 = Bar(
                    x=clusterCountList,
                    y=adjustedRandScoreList,
                    name='Adjusted Rand Score',
                    marker=Marker(
                        color='rgb(200, 200, 200)'
                    )
                )
                data = Data([trace0,trace1,trace2,trace3,trace4])
    '''
    layout = Layout(
        title='Number of Clusters vs Homogeneity and Completeness',
        xaxis=XAxis(
            title='Number of Clusters',
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
            title='Goodness Measures',
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
    plot_url = py.plot(fig, filename='cluster-measures')
    print "Check out the URL: "+plot_url+" for your plot"
  
def extractAppPermData():
    dbHandle = databaseHandler.dbConnectionCheck() #DB Open

    cursor = dbHandle.cursor()
    sqlStatement = "SELECT * FROM `app_perm_count_view`;"
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

    dbHandle.close() #DB Close
    
    return permCountDict
 
def plotResults(username, api_key, fileToRead):
    evaluatedClusterResultsDict = json.loads(open(fileToRead, 'r').read().decode('utf8'))
    clusterCountList = []
    homogeneityScoreList = []
    completenessScoreList = []
    adjustedRandScoreList = []
    adjustedMutualInfoScoreList = []
    vMeasureScoreList = []
    for clusterCount, loopInfo in evaluatedClusterResultsDict.iteritems():
        clusterCountList.append(int(clusterCount.replace("Loop","")))
        clusterInfo = loopInfo[1]
        if "adjusted_rand_score" in clusterInfo:
            print "In", clusterCount, "we have adjusted_rand_score of", clusterInfo["adjusted_rand_score"]
            adjustedRandScoreList.append(float(clusterInfo["adjusted_rand_score"]))
        if "adjusted_mutual_info_score" in clusterInfo:
            print "In", clusterCount, "we have adjusted_mutual_info_score of", clusterInfo["adjusted_mutual_info_score"]
            adjustedMutualInfoScoreList.append(float(clusterInfo["adjusted_mutual_info_score"]))
        if "homogeneity_score" in clusterInfo:
            print "In", clusterCount, "we have homogeneity_score of", clusterInfo["homogeneity_score"]
            homogeneityScoreList.append(float(clusterInfo["homogeneity_score"]))
        if "completeness_score" in clusterInfo:
            print "In", clusterCount, "we have completeness_score of", clusterInfo["completeness_score"]
            completenessScoreList.append(float(clusterInfo["completeness_score"]))
        if "v_measure_score" in clusterInfo:
            print "In", clusterCount, "we have v_measure_score of", clusterInfo["v_measure_score"]
            vMeasureScoreList.append(float(clusterInfo["v_measure_score"]))

    print clusterCountList, homogeneityScoreList, completenessScoreList, adjustedRandScoreList, adjustedMutualInfoScoreList, vMeasureScoreList
    generatePlot(username, api_key, clusterCountList, homogeneityScoreList, completenessScoreList, adjustedRandScoreList, adjustedMutualInfoScoreList, vMeasureScoreList)
    
def main(argv):
    if len(sys.argv) != 4:
        sys.stderr.write('Usage: python readOutputGenerateGraph.py username api_key fileToRead\n')
        sys.exit(1)

    startTime = time.time()
    plotResults(sys.argv[1], sys.argv[2], sys.argv[3])
    executionTime = str((time.time()-startTime)*1000)
    print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
    sys.exit(main(sys.argv))
