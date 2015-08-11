#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on May 18, 2015
@author: Prajit
Usage: python permissionsClustering.py username api_key
'''
# Start of code from: http://scikit-learn.org/stable/auto_examples/cluster/plot_kmeans_silhouette_analysis.html
from sklearn.datasets import make_blobs
from sklearn.cluster import KMeans
from sklearn.metrics import silhouette_samples, silhouette_score
from sklearn.metrics.pairwise import pairwise_distances

import numpy as np
# End of code from: http://scikit-learn.org/stable/auto_examples/cluster/plot_kmeans_silhouette_analysis.html

import sys
import time
import databaseHandler
import io
import json
import os
from os.path import isfile, join
import platform
import cPickle
#Use this for Python debug
#import pdb
import clusterEvaluation as clEval
import readOutputGenerateGraph as genGraph
import kMeansSilhouetteAnalysis as silsam

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
#             printpackageName,",error was: url not collected"
            return False
        else:
            queryOutput = cursor.fetchall()
            for row in queryOutput:
                if row[0] == 0:
#                     if row[1] == 0:
#                         printpackageName,",error was: data and permissions not collected"
#                     else:
#                         printpackageName,",error was: permissions not collected but data collected"
                    return False
                else:
                    if row[1] == 0:
#                         printpackageName,",error was: permissions collected but data not collected"
                        return False
                    else:
                        #printpackageName,"data and permissions collected"
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
    elif osInfo == 'Linux' or osInfo == 'Darwin':
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
            cPickle.dump(appMatrix, open(appMatrixFile, 'wb'))

    except:
        print "Unexpected error in generateAppMatrix:", sys.exc_info()[0]
        raise

    #Return app vector appMatrix will be read from File
    return appVector

def doTask(username, api_key, predictedClustersFile, appMatrixFile):
    dbHandle = databaseHandler.dbConnectionCheck() #DB Open

    #Generate app matrix file once
    appVector = generateAppMatrix(dbHandle,appMatrixFile)
    appMatrix = cPickle.load(open(appMatrixFile, 'rb'))
    newAppMatrix = np.array(appMatrix)
    '''
    sklearn.metrics.pairwise.pairwise_distances(X, Y=None, metric='euclidean', n_jobs=1, **kwds)
    We will now compute the pairwise distance metric for our input array.
    The distance metric options are:-
    From scikit-learn: ['cityblock', 'cosine', 'euclidean', 'l1', 'l2', 'manhattan']. These metrics support sparse matrix inputs.
    From scipy.spatial.distance: ['braycurtis', 'canberra', 'chebyshev', 'correlation', 'dice', 'hamming', 'jaccard', 'kulsinski', 
    'mahalanobis', 'matching', 'minkowski', 'rogerstanimoto', 'russellrao', 'seuclidean', 'sokalmichener', 'sokalsneath', 'sqeuclidean', 'yule']
    See the documentation for scipy.spatial.distance for details on these metrics. These metrics do not support sparse matrix inputs.
    '''
    metricList = ['cityblock', 'cosine', 'euclidean', 'l1', 'l2', 'manhattan']
    metricList = ['manhattan']
    for metric in metricList:
        X = pairwise_distances(newAppMatrix, metric=metric, n_jobs=4)
        
    #This is to generate the plots for small set of cluster numbers using kMeansSilhouetteAnalysis.py
    #     silsam.computeSilhouette(appMatrixFile)
    #     sys.exit(1)
    
        startingNumberOfClusters = 2 # This is very interesting the Silhouette Metric was giving an error because we were using minimum of 1 cluster.
        endingNumberOfClusters = 100
        loopCounter = startingNumberOfClusters
        evaluatedClusterResultsDict = {}
        # We want to verify if the number of clusters are "strong with this one" (or not)
        #Run clustering with a varying number of clusters
        for numberOfClusters in range(startingNumberOfClusters,endingNumberOfClusters):
            print "Running clustering algorithm with", numberOfClusters, "clusters"
    
            loopListEvaluatedCluster = []
            # Initialize the KMeansObject with numberOfClusters value 
            KMeansObject = KMeans(n_clusters=numberOfClusters, random_state=10)
            clusterLabelsAssigned = KMeansObject.fit_predict(X)
            
            counter = 0
            predictedClusters = {}
            for appName in appVector:
                predictedClusters[appName] = clusterLabelsAssigned[counter]
                counter = counter + 1
                
            loopListEvaluatedCluster.append(predictedClusters)
    
            #Clustering task is complete. Now evaluate
            clusterEvaluationResults = clEval.evaluateCluster(predictedClusters)
    
            loopListEvaluatedCluster.append(clusterEvaluationResults)
            
            # Start of code from: http://scikit-learn.org/stable/auto_examples/cluster/plot_kmeans_silhouette_analysis.html
            # The silhouette_score gives the average value for all the samples.
            # This gives a perspective into the density and separation of the formed
            # clusters
            silhouette_avg = silhouette_score(X, clusterLabelsAssigned, metric=metric) 
            clusterSilhouetteAverage = {}
            clusterSilhouetteAverage["silhouette_avg"] = silhouette_avg
            print "For number of clusters =", numberOfClusters, "The average silhouette_score is :", silhouette_avg
                    
            # Insert the silhouette_avg for the cluster into the Json for further evaluation
            loopListEvaluatedCluster.append(clusterSilhouetteAverage)
            # End of code from: http://scikit-learn.org/stable/auto_examples/cluster/plot_kmeans_silhouette_analysis.html        
                    
            stringLoopCounter = 'Loop'+str(loopCounter)
            evaluatedClusterResultsDict[stringLoopCounter] = loopListEvaluatedCluster
            loopCounter = loopCounter + 1
        
    #    printevaluatedClusterResultsDict
    #    Write the predicted clusters to a file
        print "Writing predicted clusters to a file"
        with io.open(predictedClustersFile, 'w', encoding='utf-8') as f:
            f.write(unicode(json.dumps(evaluatedClusterResultsDict, ensure_ascii=False)))
        dbHandle.close() #DB Close
        genGraph.plotSilhouetteSamples(username, api_key, predictedClustersFile)
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
