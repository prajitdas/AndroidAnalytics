#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on May 18, 2015
@author: Prajit
Usage: python permissionsClustering.py username api_key
'''
# Start of code from: http://scikit-learn.org/stable/auto_examples/cluster/plot_kmeans_silhouette_analysis.html
from __future__ import print_function
# End of code from: http://scikit-learn.org/stable/auto_examples/cluster/plot_kmeans_silhouette_analysis.html

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

# Start of code from: http://scikit-learn.org/stable/auto_examples/cluster/plot_kmeans_silhouette_analysis.html
from sklearn.datasets import make_blobs
import sklearn.cluster as skcl
from sklearn.metrics import silhouette_samples, silhouette_score

import matplotlib.pyplot as plt
import matplotlib.cm as cm
import numpy as np
# End of code from: http://scikit-learn.org/stable/auto_examples/cluster/plot_kmeans_silhouette_analysis.html

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
        print("Unexpected error in extractPermisionVector:", sys.exc_info()[0])
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
        print("Unexpected error in extractPermisionVector:", sys.exc_info()[0])
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
        print("Unexpected error in generateAppMatrix:", sys.exc_info()[0])
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
        print("Extracting app data")
        if cursor.rowcount > 0:
            queryOutput = cursor.fetchall()
            appMatrix = []
            appVector =[]
            for row in queryOutput:
                permVector = extractAppPermisionVector(dbHandle,row[0])
                appVector.append(row[1])
#                 print("Extracting permission data for app:", row[1]
                appMatrix.append(permVector)
                #Write the app permissions matrix to a file
#                 print("Writing app permission vector to a file"
                with io.open(appMatrixFile, 'a', encoding='utf-8') as f:
                    f.write(unicode(permVector))
                    f.write(unicode("\n"))
    except:
        print("Unexpected error in generateAppMatrix:", sys.exc_info()[0])
        raise

#     printappVector
#     printappNameList
#     print("\n\n\n"

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
        # Start of code from: http://scikit-learn.org/stable/auto_examples/cluster/plot_kmeans_silhouette_analysis.html
        # Create a subplot with 1 row and 2 columns
        fig, (ax1, ax2) = plt.subplots(1, 2)
        fig.set_size_inches(18, 7)
    
        # The 1st subplot is the silhouette plot
        # The silhouette coefficient can range from -1, 1 but in this example all
        # lie within [-0.1, 1]
        ax1.set_xlim([-0.1, 1])
        # The (numberOfClusters+1)*10 is for inserting blank space between silhouette
        # plots of individual clusters, to demarcate them clearly.
        ax1.set_ylim([0, len(X) + (numberOfClusters + 1) * 10])
        # End of code from: http://scikit-learn.org/stable/auto_examples/cluster/plot_kmeans_silhouette_analysis.html

        print("Running clustering algorithm with", numberOfClusters, "clusters")
        loopListEvaluatedCluster = []
        # Initialize the KMeansObject with numberOfClusters value 
        KMeansObject = skcl.KMeans(numberOfClusters)
        clusterLabelsAssigned = KMeansObject.fit_predict(appMatrix)
        counter = 0
        predictedClusters = {}
        for appName in appVector:
            predictedClusters[appName] = clusterLabelsAssigned[counter]
            counter = counter + 1
            
        loopListEvaluatedCluster.append(predictedClusters)
#         printpredictedClusters
#         for appPerm in appMatrix:
#            printappPerm
        # permCount = []
        # permCountFreq = []
        # for permissionCount, permissionCountFreq in permCountDict.iteritems():
        #     permCount.append(permissionCount)
        #     permCountFreq.append(permissionCountFreq)
        # generatePlot(username, api_key, permCount, permCountFreq)
    
        #Clustering task is complete. Now evaluate
#         evaluationOutput = clEval.evaluateCluster(json.loads(open(predictedClustersFile, 'r').read().decode('utf8')))
        clusterEvaluationResults = clEval.evaluateCluster(predictedClusters)
#         printclusterEvaluationResults["adjusted_rand_score"]
#         printclusterEvaluationResults["adjusted_mutual_info_score"]
#         printclusterEvaluationResults["homogeneity_score"]
#         printclusterEvaluationResults["completeness_score"]
#         printclusterEvaluationResults["v_measure_score"]

        loopListEvaluatedCluster.append(clusterEvaluationResults)

        # Start of code from: http://scikit-learn.org/stable/auto_examples/cluster/plot_kmeans_silhouette_analysis.html
        # The silhouette_score gives the average value for all the samples.
        # This gives a perspective into the density and separation of the formed
        # clusters
        silhouette_avg = silhouette_score(appMatrix, clusterLabelsAssigned)
        clusterSilhouetteAverage = {}
        clusterSilhouetteAverage["silhouette_avg"] = silhouette_avg
        print("For number of clusters =", numberOfClusters,
              "The average silhouette_score is :", silhouette_avg)
    
        # Compute the silhouette scores for each sample
        sample_silhouette_values = silhouette_samples(appMatrix, clusterLabelsAssigned)
        print(sample_silhouette_values)
    
        y_lower = 10
        for i in range(numberOfClusters):
            # Aggregate the silhouette scores for samples belonging to
            # cluster i, and sort them
            ith_cluster_silhouette_values = \
                sample_silhouette_values[clusterLabelsAssigned == i]
    
            ith_cluster_silhouette_values.sort()
    
            size_cluster_i = ith_cluster_silhouette_values.shape[0]
            y_upper = y_lower + size_cluster_i
    
            color = cm.spectral(float(i) / numberOfClusters)
            ax1.fill_betweenx(np.arange(y_lower, y_upper),
                              0, ith_cluster_silhouette_values,
                              facecolor=color, edgecolor=color, alpha=0.7)
    
            # Label the silhouette plots with their cluster numbers at the middle
            ax1.text(-0.05, y_lower + 0.5 * size_cluster_i, str(i))
    
            # Compute the new y_lower for next plot
            y_lower = y_upper + 10  # 10 for the 0 samples
    
        ax1.set_title("The silhouette plot for the various clusters.")
        ax1.set_xlabel("The silhouette coefficient values")
        ax1.set_ylabel("Cluster label")
    
        # The vertical line for average silhoutte score of all the values
        ax1.axvline(x=silhouette_avg, color="red", linestyle="--")
    
        ax1.set_yticks([])  # Clear the yaxis labels / ticks
        ax1.set_xticks([-0.1, 0, 0.2, 0.4, 0.6, 0.8, 1])
    
        # 2nd Plot showing the actual clusters formed
        colors = cm.spectral(clusterLabelsAssigned.astype(float) / numberOfClusters)
        ax2.scatter(appMatrix[:, 0], appMatrix[:, 1], marker='.', s=30, lw=0, alpha=0.7,
                    c=colors)
    
        # Labeling the clusters
        centers = KMeansObject.cluster_centers_
        # Draw white circles at cluster centers
        ax2.scatter(centers[:, 0], centers[:, 1],
                    marker='o', c="white", alpha=1, s=200)
    
        for i, c in enumerate(centers):
            ax2.scatter(c[0], c[1], marker='$%d$' % i, alpha=1, s=50)
    
        ax2.set_title("The visualization of the clustered data.")
        ax2.set_xlabel("Feature space for the 1st feature")
        ax2.set_ylabel("Feature space for the 2nd feature")
    
        plt.suptitle(("Silhouette analysis for KMeans clustering on sample data "
                      "with numberOfClusters = %d" % numberOfClusters),
                     fontsize=14, fontweight='bold')
    
        plt.show()
        # End of code from: http://scikit-learn.org/stable/auto_examples/cluster/plot_kmeans_silhouette_analysis.html
        
        # Insert the silhouette_avg for the cluster into the Json for further evaluation
        loopListEvaluatedCluster.append(clusterSilhouetteAverage)
        
        stringLoopCounter = 'Loop'+str(loopCounter)
        evaluatedClusterResultsDict[stringLoopCounter] = loopListEvaluatedCluster
        loopCounter = loopCounter + 1
    
#    printevaluatedClusterResultsDict
#    Write the predicted clusters to a file
    print("Writing predicted clusters to a file")
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
    print("Execution time was: "+executionTime+" ms")

if __name__ == "__main__":
    sys.exit(main(sys.argv))
