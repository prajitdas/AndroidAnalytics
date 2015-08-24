#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on August 18, 2015
@author: Prajit
Usage: python weightedJaccardSimilarity.py selectionType
'''
import sys
import time
import databaseHandler
import json
import os.path as path
import io

idfPermissionsDictJSONFile = "idfPermissionsDict.json"

def writeToFile(idfPermissionsDict):    
    if path.isfile(idfPermissionsDictJSONFile):
        with io.open(idfPermissionsDictJSONFile, 'r', encoding='utf-8') as f:
            idfPermissionsDictJSONRead = unicode(json.loads(f))
            if 'countOfApps' in idfPermissionsDictJSONRead:
                print idfPermissionsDictJSONRead['countOfApps']
    else:
        with io.open(idfPermissionsDictJSONFile, 'w', encoding='utf-8') as f:
            print "Writing 'Inverse Document Frequency' of apps requesting a permission to a file"
            f.write(unicode(json.dumps(idfPermissionsDict, ensure_ascii=False, encoding='utf-8')))

def computeJaccardMatrix(permissionsSet, permissionsDict):    
    numberOfPermissions = len(permissionsSet)
    numberOfApps = len(permissionsDict.keys())
    
    permissionsList = list(permissionsSet)
    appVector = permissionsDict.keys()

    
    return generatePermVector(dbHandle, sqlStatement)

def getCountOfAppPermissionsCollected(dbHandle):
    sqlStatement = "SELECT * FROM `count_of_app_perm_collected_view`;"
    cursor = dbHandle.cursor()
    try:
        print "Extracting count of app permissions collected"
        cursor.execute(sqlStatement)
        if cursor.rowcount > 0:
            queryOutput = cursor.fetchall()
            for row in queryOutput:
                countOfApps = row[0]
    except:
        print "Unexpected error in getCountOfAppPermissionsCollected:", sys.exc_info()[0]
        raise
    return float(countOfApps)

def getAppCountRequestingPermissions(dbHandle):
    sqlStatement = "SELECT * FROM `perm_app_count_view`;"
    countOfApps = getCountOfAppPermissionsCollected(dbHandle)
    cursor = dbHandle.cursor()
    idfPermissionsDict = {'countOfApps':countOfApps}
    try:
        print "Extracting app count requesting given permission"
        cursor.execute(sqlStatement)
        if cursor.rowcount > 0:
            queryOutput = cursor.fetchall()
            for row in queryOutput:
                '''
                Computing an "Inverse Document Frequency" of apps requesting a permission. 
                This will tell us if a particular permission is unique and rare or a popular one.
                If an app asks for permissions which are rare then they are outliers with respect to commonly asked permissions.
                This warrants a further look from our perspective.
                '''
                idfPermissionsDict[row[1]] = countOfApps/row[0]
    except:
        print "Unexpected error in getAppCountRequestingPermissions:", sys.exc_info()[0]
        raise
    
    writeToFile(idfPermissionsDict)
    return idfPermissionsDict

def main(argv):
    if len(sys.argv) != 1:
        sys.stderr.write('Usage: python weightedJaccardSimilarity.py\n')
        sys.exit(1)

    dbHandle = databaseHandler.dbConnectionCheck() #DB Open

    startTime = time.time()
    #Compute Jaccard Similarity
    getAppCountRequestingPermissions(dbHandle)
    executionTime = str((time.time()-startTime)*1000)
    print "Execution time was: "+executionTime+" ms"
    
    dbHandle.close() #DB Close

if __name__ == "__main__":
    sys.exit(main(sys.argv))
