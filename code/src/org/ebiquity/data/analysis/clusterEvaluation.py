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
from sklearn import metrics
import io
import json

def getCategoryNumbers(appNames,dbHandle):
    appList = '\'' + '\',\''.join(appNames) + '\''
    cursor = dbHandle.cursor()
    
    appCategoriesDict = {}
    labels_true = []
    sqlStatement = "SELECT `app_pkg_name`,`app_category_id` FROM `appdata` WHERE `app_pkg_name` IN ("+appList+");"
    try:
        cursor.execute(sqlStatement)
        if cursor.rowcount > 0:
            queryOutput = cursor.fetchall()
            for row in queryOutput:
                appCategoriesDict[row[0]] = int(row[1])
    except:
        print "Unexpected error in getCategoryNumber:", sys.exc_info()[0]
        raise
    
    keylist = appCategoriesDict.keys()
    keylist.sort()
    for key in keylist:
        labels_true.append(appCategoriesDict[key])
    return labels_true
 
def getLabelsTrue(clusterInfo):
    dbHandle = databaseHandler.dbConnectionCheck() #DB Open
    
    labels_pred = []
    appNames = []
    keylist = clusterInfo.keys()
    keylist.sort()
    for key in keylist:
        labels_pred.append(clusterInfo[key])
        appNames.append(key)

    labels_true = getCategoryNumbers(appNames,dbHandle)
    
    print "labels predicted: "+ str(labels_pred)
    print "labels true: " + str(labels_true)
    print "adjusted_rand_score: " + str(metrics.adjusted_rand_score(labels_true, labels_pred))
    print "adjusted_mutual_info_score: " + str(metrics.adjusted_mutual_info_score(labels_true, labels_pred))
    print "homogeneity_completeness_v_measure: " + str(metrics.homogeneity_completeness_v_measure(labels_true, labels_pred))

    dbHandle.close() #DB Close

def doTask(predictedClustersFile):
    getLabelsTrue(json.loads(open(predictedClustersFile, 'r').read().decode('utf8')))
    
def main(argv):
    if len(sys.argv) != 2:
        sys.stderr.write('Usage: python permissionsClustering.py username api_key\n')
        sys.exit(1)

    startTime = time.time()
    doTask(sys.argv[1])
    executionTime = str((time.time()-startTime)*1000)
    print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
    sys.exit(main(sys.argv))
