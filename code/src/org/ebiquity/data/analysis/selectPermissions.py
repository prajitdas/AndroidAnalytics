#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on August 18, 2015
@author: Prajit
Usage: python selectPermissions.py restrictionListSelection restrictionType
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

def extractAppPermisionVector(appId,permissionRestrictionList,restrictionType):
    dbHandle = databaseHandler.dbConnectionCheck() #DB Open
    cursor = dbHandle.cursor()
    
    permissionRestrictionSQLQueryList = databaseHandler.convertPythonListToSQLQueryList(permissionRestrictionList)
    if restrictionType == 'allow':
        # Get the complete permissions vector and then use that as the vector rep for each app
        # If the app has requested said permission then mark that as 1 or else let the vetor index for a permission remain zero
        # Select only permissions which have been allowed
        sqlStatement = "SELECT p.`id`, p.`name` FROM `appperm` a, `permissions` p WHERE a.`app_id` = "+str(appId)+" AND a.`perm_id` = p.`id` AND p.`name` IN ("+permissionRestrictionSQLQueryList+");"
        print sqlStatement
    else:
        # Get the complete permissions vector and then use that as the vector rep for each app
        # If the app has requested said permission then mark that as 1 or else let the vetor index for a permission remain zero
        # Select only permissions which have not been restricted
        sqlStatement = "SELECT p.`id`, p.`name` FROM `appperm` a, `permissions` p WHERE a.`app_id` = "+str(appId)+" AND a.`perm_id` = p.`id` AND p.`name` NOT IN ("+permissionRestrictionSQLQueryList+");"
        print sqlStatement
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
    
    dbHandle.close() #DB Close
    return permVector

def preProcess(restrictionListSelection):
    if restrictionListSelection == 'int':
        permissionRestrictionList = ['android.permission.INTERNET']
    elif restrictionListSelection == 'inet':
        permissionRestrictionList = ['android.permission.INTERNET','android.permission.ACCESS_NETWORK_STATE']
    return permissionRestrictionList

def main(argv):
    if len(sys.argv) != 3:
        sys.stderr.write('Usage: python selectApps.py restrictionListSelection restrictionType\n')
        sys.exit(1)
        
    startTime = time.time()
    permissionRestrictionList = preProcess(sys.argv[1])
    # Get a app permissions for apps based on allow restrict list 
    permDict = extractAppPermisionVector("10047",permissionRestrictionList,sys.argv[2])
    executionTime = str((time.time()-startTime)*1000)
    print "Execution time was: "+executionTime+" ms"
    print permDict

if __name__ == "__main__":
    sys.exit(main(sys.argv))
