#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on August 18, 2015
@author: Prajit
Usage: python selectApps.py selectionType
'''
import sys
import time
import databaseHandler
import io
import json
import os
from os.path import isfile, join
import platform
import selectApps

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

def preProcess():
    permissionRestrictionList = []
    #permissionRestrictionList = ['android.permission.INTERNET','android.permission.ACCESS_NETWORK_STATE']
    if not permissionRestrictionList:
        permissionRestrictionListString = ''
    else:
        permissionRestrictionListString = '\'' + '\',\''.join(permissionRestrictionList) + '\''

    ticks = time.time()
    appMatrixFile = "appMatrix"+str(ticks)+".txt"
    text_file = open(appMatrixFile, "w")
    text_file.write("")
    text_file.close()
    
    predictedClustersFile = "predictedClusters"+str(ticks)+".json"
    text_file = open(predictedClustersFile, "w")
    text_file.write("")
    text_file.close()
    
    return appCategoryList, permissionRestrictionListString, appMatrixFile, predictedClustersFile

def main(argv):
    if len(sys.argv) != 2:
        sys.stderr.write('Usage: python selectApps.py selectionType\n')
        sys.exit(1)
        
    dbHandle = databaseHandler.dbConnectionCheck() #DB Open
    startTime = time.time()
    appCategoryList = preProcess(sys.argv[1])
    # Get a bunch of apps from which you want to get the permissions
    # Select apps which have had their permissions extracted
    if appCategoryList[0] == 'top':
        appDict = getTopApps(dbHandle)
    elif appCategoryList[0] == 'all':
        appDict = getAllApps(dbHandle)
    else:
        appDict = getCategoryApps(dbHandle,appCategoryList)
    executionTime = str((time.time()-startTime)*1000)
    print "Execution time was: "+executionTime+" ms"
    print appDict
    dbHandle.close() #DB Close

if __name__ == "__main__":
    sys.exit(main(sys.argv))
