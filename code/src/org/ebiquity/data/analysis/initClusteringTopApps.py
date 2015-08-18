#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on May 18, 2015
@author: Prajit
Usage: python topAppsPermissionsClustering.py username api_key
'''
import numpy as np
import sys
import time
import databaseHandler
import io
import runClustering as runCl
import selectPermissions
import cPickle

def initClusteringTopApps(username, api_key, predictedClustersFile, appMatrixFile):
    dbHandle = databaseHandler.dbConnectionCheck() #DB Open

    #Generate app matrix file once
    appVector, appMatrix = selectPermissions.generateAppMatrix(dbHandle)

    #Once the whole matrix is created then dump to a file
    #Write the app permissions matrix to a file            
    cPickle.dump(appMatrix, open(appMatrixFile, 'wb'))
    appMatrix = cPickle.load(open(appMatrixFile, 'rb'))
    newAppMatrix = np.array(appMatrix)

    runCl.processMatrix(username, api_key, None, predictedClustersFile, newAppMatrix, appVector)
    dbHandle.close() #DB Close

def preProcess():
    ticks = time.time()
    appMatrixFile = "appMatrix"+str(ticks)+".txt"
    text_file = open(appMatrixFile, "w")
    text_file.write("")
    text_file.close()
    
    predictedClustersFile = "predictedClusters"+str(ticks)+".json"
    text_file = open(predictedClustersFile, "w")
    text_file.write("")
    text_file.close()
    
    return appMatrixFile, predictedClustersFile

def main(argv):
    if len(sys.argv) != 3:
        sys.stderr.write('Usage: python topAppsPermissionsClustering.py username api_key\n')
        sys.exit(1)
        
    appMatrixFile, predictedClustersFile = preProcess()
    
    startTime = time.time()
    initClusteringTopApps(sys.argv[1], sys.argv[2], predictedClustersFile, appMatrixFile)
    executionTime = str((time.time()-startTime)*1000)
    print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
    sys.exit(main(sys.argv))
