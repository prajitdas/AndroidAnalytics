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
import sklearn.cluster as skcl
import io
import json
import os
from os.path import isfile, join
import platform
import clusterEvaluation as clEval
#Use this for Python debug
#import pdb
import readOutputGenerateGraph as genGraph

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

def isDataCollected(packageName,dbHandle):
    cursor = dbHandle.cursor()
    sqlStatement = "SELECT perm_extracted,parsed FROM `appurls` WHERE `app_pkg_name` = '"+packageName+"';"
    try:
        cursor.execute(sqlStatement)
        if cursor.rowcount == 0:
#             print packageName,",error was: url not collected"
            return False
        else:
            queryOutput = cursor.fetchall()
            for row in queryOutput:
                if row[0] == 0:
#                     if row[1] == 0:
#                         print packageName,",error was: data and permissions not collected"
#                     else:
#                         print packageName,",error was: permissions not collected but data collected"
                    return False
                else:
                    if row[1] == 0:
#                         print packageName,",error was: permissions collected but data not collected"
                        return False
                    else:
                        #print packageName,"data and permissions collected"
                        return True
    except:
        print "Unexpected error in generateAppMatrix:", sys.exc_info()[0]
        raise

def getTopAppsFromDownloadedJSONs(dbHandle):
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
                packageName = str(appData['package_name'])
                isDataCollected(packageName,dbHandle)
                processedPackageName = str('\'')+packageName+str('\',')
                appNameList.append(processedPackageName) 

    return ''.join(appNameList)[:-1]
    
def generateAppMatrix(dbHandle,appMatrixFile):
    cursor = dbHandle.cursor()
    
    appNameList = getTopAppsFromDownloadedJSONs(dbHandle)
    #sys.exit(1)
    # Get a bunch of apps from which you want to get the permissions
    # Select apps which have had their permissions extracted
    sqlStatement = "SELECT a.`id`, a.`app_pkg_name` FROM `appdata` a, `appurls` url WHERE a.`app_pkg_name` = url.`app_pkg_name` AND url.`perm_extracted` = 1 AND a.`app_pkg_name` IN ("+appNameList+");"
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
#                 print "Extracting permission data for app:", row[1]
                appMatrix.append(permVector)
                #Write the app permissions matrix to a file
#                 print "Writing app permission vector to a file"
                with io.open(appMatrixFile, 'a', encoding='utf-8') as f:
                    f.write(unicode(permVector))
                    f.write(unicode("\n"))
    except:
        print "Unexpected error in generateAppMatrix:", sys.exc_info()[0]
        raise

#     print appVector
#     print appNameList
#     print "\n\n\n"

    #Return app matrix and app vector
    return appMatrix, appVector
 
def doTask(username, api_key, predictedClustersFile, appMatrixFile):
    dbHandle = databaseHandler.dbConnectionCheck() #DB Open

    #Generate app matrix file once
    appMatrix, appVector = generateAppMatrix(dbHandle,appMatrixFile)

    startingNumberOfClusters = 1
    endingNumberOfClusters = 100
    loopCounter = startingNumberOfClusters
    evaluatedClusterResultsDict = {}
    # We want to verify if the number of clusters are "strong with this one" (or not)
    #Run clustering with a varying number of clusters
    for numberOfClusters in range(startingNumberOfClusters,endingNumberOfClusters):
        loopListEvaluatedCluster = []
        KMeansObject = skcl.KMeans(numberOfClusters)
        print "Running clustering algorithm with", numberOfClusters, "clusters"
        clusters = KMeansObject.fit_predict(appMatrix)
        counter = 0
        predictedClusters = {}
        for appName in appVector:
            predictedClusters[appName] = clusters[counter]
            counter = counter + 1
            
        loopListEvaluatedCluster.append(predictedClusters)
#         print predictedClusters
    #     for appPerm in appMatrix:
    #         print appPerm
        # permCount = []
        # permCountFreq = []
        # for permissionCount, permissionCountFreq in permCountDict.iteritems():
        #     permCount.append(permissionCount)
        #     permCountFreq.append(permissionCountFreq)
        # generatePlot(username, api_key, permCount, permCountFreq)
    
        #Clustering task is complete. Now evaluate
#         evaluationOutput = clEval.evaluateCluster(json.loads(open(predictedClustersFile, 'r').read().decode('utf8')))
        clusterEvaluationResults = clEval.evaluateCluster(predictedClusters)

#         print clusterEvaluationResults["adjusted_rand_score"]
#         print clusterEvaluationResults["adjusted_mutual_info_score"]
#         print clusterEvaluationResults["homogeneity_score"]
#         print clusterEvaluationResults["completeness_score"]
#         print clusterEvaluationResults["v_measure_score"]

        loopListEvaluatedCluster.append(clusterEvaluationResults)
        
        stringLoopCounter = 'Loop'+str(loopCounter)
        evaluatedClusterResultsDict[stringLoopCounter] = loopListEvaluatedCluster
        loopCounter = loopCounter + 1
    
#     print evaluatedClusterResultsDict
    #Write the predicted clusters to a file
    print "Writing predicted clusters to a file"
    with io.open(predictedClustersFile, 'w', encoding='utf-8') as f:
        f.write(unicode(json.dumps(evaluatedClusterResultsDict, ensure_ascii=False)))
    dbHandle.close() #DB Close
    genGraph.plotResults(username, api_key, predictedClustersFile)

def main(argv):
    if len(sys.argv) != 3:
        sys.stderr.write('Usage: python permissionsClustering.py username api_key\n')
        sys.exit(1)
        
    ticks = time.time()
    appMatrixFile = "appMatrix"+str(ticks)+".txt"
    predictedClustersFile = "predictedClusters"+str(ticks)+".json"

    text_file = open(appMatrixFile, "w")
    text_file.write("")
    text_file.close()
    
    text_file = open(predictedClustersFile, "w")
    text_file.write("")
    text_file.close()
        
    startTime = time.time()
    doTask(sys.argv[1], sys.argv[2], predictedClustersFile,appMatrixFile)
    executionTime = str((time.time()-startTime)*1000)
    print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
    sys.exit(main(sys.argv))