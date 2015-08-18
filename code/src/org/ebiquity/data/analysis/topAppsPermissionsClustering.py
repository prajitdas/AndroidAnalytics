#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on May 18, 2015
@author: Prajit
Usage: python topAppsPermissionsClustering.py username api_key
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
import clusterEvaluation as clEval
import readOutputGenerateGraph as genGraph
import kMeansSilhouetteAnalysis as silsam
import selectPermissions
import cPickle

def doTask(username, api_key, predictedClustersFile, appMatrixFile):
    dbHandle = databaseHandler.dbConnectionCheck() #DB Open

    #Generate app matrix file once
    appVector, appMatrix = selectPermissions.generateAppMatrix(dbHandle)

    #Once the whole matrix is created then dump to a file
    #Write the app permissions matrix to a file            
    cPickle.dump(appMatrix, open(appMatrixFile, 'wb'))
    appMatrix = cPickle.load(open(appMatrixFile, 'rb'))
    newAppMatrix = np.array(appMatrix)

    genGraph.processMatrix(username, api_key, None, predictedClustersFile, newAppMatrix, appVector)
    dbHandle.close() #DB Close

def main(argv):
    if len(sys.argv) != 3:
        sys.stderr.write('Usage: python topAppsPermissionsClustering.py username api_key\n')
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
    doTask(sys.argv[1], sys.argv[2], predictedClustersFile, appMatrixFile)
    executionTime = str((time.time()-startTime)*1000)
    print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
    sys.exit(main(sys.argv))
