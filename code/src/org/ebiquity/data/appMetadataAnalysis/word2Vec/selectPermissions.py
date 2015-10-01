#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on August 18, 2015
@author: Prajit
Usage: python selectPermissions.py restrictionListSelection restrictionType
'''
import sys
import databaseHandler

def computeMatrix(permissionsSet, permissionsDict):
    numberOfPermissions = len(permissionsSet)
    numberOfApps = len(permissionsDict.keys())
    
    permissionsList = list(permissionsSet)
    appVector = permissionsDict.keys()

    # Creates a list containing 5 lists initialized to 0
    appMatrix = [[0 for x in range(numberOfPermissions)] for x in range(numberOfApps)]
    for app in appVector:
        for perm in permissionsDict[app]:
            appMatrix[appVector.index(app)][permissionsList.index(perm)] = 1

    return appVector, appMatrix

def generatePermVector(dbHandle, sqlStatement):
    cursor = dbHandle.cursor()
    permissionsSet = set()
    permissionsDict = {}
    try:
        cursor.execute(sqlStatement)
        print "Extracting app permissions"
        if cursor.rowcount > 0:
            queryOutput = cursor.fetchall()
            for row in queryOutput:
                permissionsSet.add(row[1])
                if permissionsDict.has_key(row[0]):
                    permissionsDict[row[0]].add(row[1]) # We are using permission ids to store less data
                else:
                    permissionsDict[row[0]] = set([row[1]]) # We are using permission ids to store less data

    except:
        print "Unexpected error in generatePermVector:", sys.exc_info()[0]
        raise
    
    print "generatePermVector complete"
    return permissionsSet, permissionsDict

def getSQLStatement(dbHandle, appIdVector, permissionRestrictionList, restrictionType):
    permissionRestrictionSQLQueryList = databaseHandler.convertPythonListToSQLQueryList(permissionRestrictionList)
    appIdVectorSQLQueryList = databaseHandler.convertPythonListToSQLQueryList(appIdVector)
    if permissionRestrictionSQLQueryList == '':
        # Get the complete permissions vector and then use that as the vector rep for each app
        # If the app has requested said permission then mark that as 1 or else let the vetor index for a permission remain zero
        # Select no restrictions doesn't matter what restrictionType we have
        #sqlStatement = "SELECT app.`app_pkg_name`, p.`name` FROM `appperm` a, `permissions` p, `appdata` app WHERE a.`perm_id` = p.`id` AND a.`app_id` = app.`id` AND a.`app_id` IN ("+appIdVectorSQLQueryList+");"
        sqlStatement = "SELECT app.`app_pkg_name`, a.`perm_id` FROM `appperm` a, `appdata` app WHERE a.`app_id` = app.`id` AND a.`app_id` IN ("+appIdVectorSQLQueryList+");"
    else:
        if restrictionType == 'allow':
            # Get the complete permissions vector and then use that as the vector rep for each app
            # If the app has requested said permission then mark that as 1 or else let the vetor index for a permission remain zero
            # Select only permissions which have been allowed
            sqlStatement = "SELECT app.`app_pkg_name`, a.`perm_id` FROM `appperm` a, `permissions` p, `appdata` app WHERE a.`perm_id` = p.`id` AND a.`app_id` = app.`id` AND a.`app_id` IN ("+appIdVectorSQLQueryList+") AND p.`name` IN ("+permissionRestrictionSQLQueryList+");"
        else:
            # Get the complete permissions vector and then use that as the vector rep for each app
            # If the app has requested said permission then mark that as 1 or else let the vetor index for a permission remain zero
            # Select only permissions which have not been restricted
            sqlStatement = "SELECT app.`app_pkg_name`, a.`perm_id` FROM `appperm` a, `permissions` p, `appdata` app WHERE a.`perm_id` = p.`id` AND a.`app_id` = app.`id` AND a.`app_id` IN ("+appIdVectorSQLQueryList+") AND p.`name` NOT IN ("+permissionRestrictionSQLQueryList+");"
    
    return sqlStatement
