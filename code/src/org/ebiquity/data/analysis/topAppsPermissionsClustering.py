#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on May 18, 2015
@author: Prajit
Usage: python permissionsClustering.py username api_key
'''

import sys
import time
import databaseHandler
import plotly.tools as tls
# Learn about API authentication here: https://plot.ly/python/getting-started
# Find your api_key here: https://plot.ly/settings/api
import plotly.plotly as py
from plotly.graph_objs import *
import sklearn.cluster as skcl
import io
import json
import os
from os.path import isfile, join
import platform
#Use this for Python debug
#import pdb

# This is a plot for Permissions count vs Frequency of apps requesting that many permissions
def generatePlot(username, api_key, permCount, permCountFreq):
    tls.set_credentials_file(username, api_key)
    trace = Bar(
        x=permCount,
        y=permCountFreq,
        name='App Permission frequency of Medical Apps',
        marker=Marker(
            color='rgb(55, 83, 109)'
        )
    )
    data = Data([trace])
    layout = Layout(
        title='App Frequency vs Permission requested',
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

def getPermissionsCount(dbHandle):
    cursor = dbHandle.cursor()
    sqlStatement = "SELECT count(*) FROM `permissions`;"
    permissionsCount = 0
    try:
        cursor.execute(sqlStatement)
        if cursor.rowcount > 0:
            queryOutput = cursor.fetchall()
            for row in queryOutput:
                permissionsCount = row[0]
    except:
        print "Unexpected error in extractPermisionVector:", sys.exc_info()[0]
        raise
    return permissionsCount

def extractAppPermisionVector(dbHandle,appId):
    cursor = dbHandle.cursor()
    # Get the complete permissions vector and then use that as the vector rep for each app
    # If the app has requested said permission then mark that as 1 or else let the vetor index for a permission remain zero
    sqlStatement = "SELECT p.`id`, p.`name` FROM `appperm` a, `permissions` p WHERE a.`app_id` = "+str(appId)+" AND a.`perm_id` = p.`id`;"
    #sqlStatement = "SELECT p.`id` FROM `appperm` a, `permissions` p WHERE a.`app_id` = "+str(appId)+" AND a.`perm_id` = p.`id`;"
    try:
        cursor.execute(sqlStatement)
        permVector = [0] * getPermissionsCount(dbHandle)
        if cursor.rowcount > 0:
            queryOutput = cursor.fetchall()
            for row in queryOutput:
                permVector[row[0]] = 1
    except:
        print "Unexpected error in extractPermisionVector:", sys.exc_info()[0]
        raise
    
    return permVector

def getTopAppsFromDownloadedJSONs():
    # Detect operating system and takes actions accordingly
    osInfo = platform.system()
    currentDirectory = os.getcwd()
    if osInfo == 'Windows':
        topAppJsonsFrom42MattersAPIDirectory = currentDirectory+"\\topAppJsonsFrom42MattersAPI"
    elif osInfo == 'Linux':
        topAppJsonsFrom42MattersAPIDirectory = currentDirectory+"/topAppJsonsFrom42MattersAPI"
    
    appNameList = []
    for filename in os.listdir(topAppJsonsFrom42MattersAPIDirectory):
        topAppDict = json.loads(open(os.path.join(topAppJsonsFrom42MattersAPIDirectory,filename), 'r').read().decode('utf8'))
        for appData in topAppDict['appList']:
            if 'package_name' in appData:
                pkgName = str('\'')+str(appData['package_name'])+str('\',')
                print pkgName
                appNameList.append(pkgName) 

    return ''.join(appNameList)
    
def generateAppMatrix(dbHandle):
    cursor = dbHandle.cursor()
    
    appNameList = getTopAppsFromDownloadedJSONs()
    # Get a bunch of apps from which you want to get the permissions
    # Select apps which have had their permissions extracted
    sqlStatement = "SELECT a.`id`, a.`app_pkg_name` FROM `appdata` a, `appurls` url WHERE a.`app_pkg_name` = url.`app_pkg_name` AND url.`perm_extracted` = 1 AND a.`app_pkg_name` IN '"+appNameList+"';"
    try:
        cursor.execute(sqlStatement)
        print "Extracting app data"
        if cursor.rowcount > 0:
            queryOutput = cursor.fetchall()
            appMatrix = []
            appVector =[]
            for row in queryOutput:
                permVector = extractAppPermisionVector(dbHandle,row[0])
                appVector.append(row[1])
                print "Extracting permission data for app:", row[1]
                appMatrix.append(permVector)
                #Write the app permissions matrix to a file
                print "Writing app permission vector to a file"
                with io.open('appMatrix.txt', 'a', encoding='utf-8') as f:
                    f.write(unicode(permVector))
                    f.write(unicode("\n"))
    except:
        print "Unexpected error in generateAppMatrix:", sys.exc_info()[0]
        raise

    return appMatrix, appVector
 
def doTask():#username, api_key):
    dbHandle = databaseHandler.dbConnectionCheck() #DB Open

    numberOfClusters = 50
    appMatrix, appVector = generateAppMatrix(dbHandle)
    KMeansObject = skcl.KMeans(numberOfClusters)
    print "Running clustering algorithm"
    clusters = KMeansObject.fit_predict(appMatrix)
    counter = 0
    predictedClusters = {}
    for appName in appVector:
        predictedClusters[appName] = clusters[counter]
        counter = counter + 1

    print predictedClusters
    #Write the predicted clusters to a file
    print "Writing predicted clusters to a file"
    with io.open('predictedClusters.txt', 'w', encoding='utf-8') as f:
        f.write(unicode(json.dumps(predictedClusters, ensure_ascii=False)))
#     for appPerm in appMatrix:
#         print appPerm
    # permCount = []
    # permCountFreq = []
    # for permissionCount, permissionCountFreq in permCountDict.iteritems():
    #     permCount.append(permissionCount)
    #     permCountFreq.append(permissionCountFreq)
    # generatePlot(username, api_key, permCount, permCountFreq)

    dbHandle.close() #DB Close
    
def main(argv):
    if len(sys.argv) != 1:#3:
        sys.stderr.write('Usage: python permissionsClustering.py username api_key\n')
        sys.exit(1)
        
    ticks = time.time()
    appMatrixFile = "appMatrix"+str(ticks)+".txt"
    predictedClustersFile = "predictedClusters"+str(ticks)+".txt"

    text_file = open(appMatrixFile, "w")
    text_file.write("")
    text_file.close()
    
    text_file = open(predictedClustersFile, "w")
    text_file.write("")
    text_file.close()
        
    startTime = time.time()
    doTask()#sys.argv[1], sys.argv[2])
    executionTime = str((time.time()-startTime)*1000)
    print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
    sys.exit(main(sys.argv))
