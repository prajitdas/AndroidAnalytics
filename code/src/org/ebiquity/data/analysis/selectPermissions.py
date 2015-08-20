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
        print "Unexpected error in getPermissionsCount:", sys.exc_info()[0]
        raise
    return permissionsCount

def generatePermVector(dbHandle, sqlStatement):
    cursor = dbHandle.cursor()
    try:
        cursor.execute(sqlStatement)
        permVector = [0] * getPermissionsCount(dbHandle)
        if cursor.rowcount > 0:
            queryOutput = cursor.fetchall()
            for row in queryOutput:
                permVector[row[0]] = 1
    except:
        print "Unexpected error in generatePermVector:", sys.exc_info()[0]
        raise

    return permVector

def extractAppPermisionVector(dbHandle, appId, permissionRestrictionList, restrictionType):
    permissionRestrictionSQLQueryList = databaseHandler.convertPythonListToSQLQueryList(permissionRestrictionList)
    if permissionRestrictionSQLQueryList == '':
        # Get the complete permissions vector and then use that as the vector rep for each app
        # If the app has requested said permission then mark that as 1 or else let the vetor index for a permission remain zero
        # Select no restrictions doesn't matter what restrictionType we have
        sqlStatement = "SELECT p.`id`, p.`name` FROM `appperm` a, `permissions` p WHERE a.`app_id` = "+str(appId)+" AND a.`perm_id` = p.`id`;"
    else:
        if restrictionType == 'allow':
            # Get the complete permissions vector and then use that as the vector rep for each app
            # If the app has requested said permission then mark that as 1 or else let the vetor index for a permission remain zero
            # Select only permissions which have been allowed
            sqlStatement = "SELECT p.`id`, p.`name` FROM `appperm` a, `permissions` p WHERE a.`app_id` = "+str(appId)+" AND a.`perm_id` = p.`id` AND p.`name` IN ("+permissionRestrictionSQLQueryList+");"
        else:
            # Get the complete permissions vector and then use that as the vector rep for each app
            # If the app has requested said permission then mark that as 1 or else let the vetor index for a permission remain zero
            # Select only permissions which have not been restricted
            sqlStatement = "SELECT p.`id`, p.`name` FROM `appperm` a, `permissions` p WHERE a.`app_id` = "+str(appId)+" AND a.`perm_id` = p.`id` AND p.`name` NOT IN ("+permissionRestrictionSQLQueryList+");"
    
    return generatePermVector(dbHandle, sqlStatement)
