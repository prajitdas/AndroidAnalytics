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
import numpy as np

def writeToFile(idfPermissionsDict):    
    idfPermissionsDictJSONFile = "idfPermissionsDict.json"
    with open(idfPermissionsDictJSONFile, 'w') as f:
        print "Writing 'Inverse Document Frequency' of apps requesting a permission to a file"
        f.write(json.dumps(idfPermissionsDict))

def jaccardSimOperation(app1, app2, permissionsDict, idfPermissionsDictJSONRead):
    result = 0.0
    if app1 != app2:
        app1PermSet = permissionsDict[app1]
        app2PermSet = permissionsDict[app2]
        
        intersectionSet = app1PermSet.intersection(app2PermSet)
        unionSet = app1PermSet.union(app2PermSet)

        intersectionSumOfPermissionWeights = 0.0
        unionSumOfPermissionWeights = 0.0
        
#        for perm in intersectionSet:
#            if perm in idfPermissionsDictJSONRead:
#                intersectionSumOfPermissionWeights += idfPermissionsDictJSONRead[perm]
        #print "intersection done for:", app1, "and", app2

        for perm in unionSet:
            #if perm in idfPermissionsDictJSONRead:
            strperm = str(perm)
            unionSumOfPermissionWeights += idfPermissionsDictJSONRead[strperm]
            if perm in intersectionSet:
                intersectionSumOfPermissionWeights += idfPermissionsDictJSONRead[strperm]
        #print "union done for:", app1, "and", app2
        
#        print intersectionSumOfPermissionWeights
#        print unionSumOfPermissionWeights
        result = intersectionSumOfPermissionWeights/unionSumOfPermissionWeights
        #print "result computed for:", app1, "and", app2
#                 if app1 == 'com.facebook.katana' and app2 == 'com.instagram.android':
#                     print "fb and insta:", numerator/denominator
#                     print sorted(permissionsDict[app1])
#                     print sorted(permissionsDict[app2])
#                     print intersectionSet
#                     print app1PermSet.difference(app2PermSet)
#                     print app2PermSet.difference(app1PermSet)
#                 elif app1 == 'com.ubercab' and app2 == 'com.ubercab.driver':
#                     print "uber and uber driver:", numerator/denominator
#                     print sorted(permissionsDict[app1])
#                     print sorted(permissionsDict[app2])
#                     print intersectionSet
#                     print app1PermSet.difference(app2PermSet)
#                     print app2PermSet.difference(app1PermSet)
#                 elif app1 == 'com.ubercab' and app2 == 'com.facebook.katana':
#                     print "uber and facebook:", numerator/denominator
#                     print sorted(permissionsDict[app1])
#                     print sorted(permissionsDict[app2])
#                     print intersectionSet
#                     print app1PermSet.difference(app2PermSet)
#                     print app2PermSet.difference(app1PermSet)
#                 elif app1 == 'com.surpax.ledflashlight.panel' and app2 == 'com.facebook.katana':
#                     print "flash light and fb:", numerator/denominator
#                     print sorted(permissionsDict[app1])
#                     print sorted(permissionsDict[app2])
#                     print intersectionSet
#                     print app1PermSet.difference(app2PermSet)
#                     print app2PermSet.difference(app1PermSet)
#                 elif app1 == 'com.zynga.wwf2.free' and app2 == 'com.imangi.templerun':
#                     print "zynga and templerun:", numerator/denominator
#                     print sorted(permissionsDict[app1])
#                     print sorted(permissionsDict[app2])
#                     print intersectionSet
#                     print app1PermSet.difference(app2PermSet)
#                     print app2PermSet.difference(app1PermSet)
    return result

def computeJaccardMatrix(permissionsSet, permissionsDict):
    print "Inside computeJaccardMatrix"
    
    idfPermissionsDictJSONRead = {}
    numberOfApps = len(permissionsDict.keys())
    appVector = permissionsDict.keys()

    # Creates a list containing 5 lists initialized to 0
    #appMatrix = [[0 for x in range(numberOfApps)] for x in range(numberOfApps)]
    appMatrix = np.zeros((numberOfApps, numberOfApps))
    
    idfPermissionsDictJSONFile = "idfPermissionsDict.json"
    with open(idfPermissionsDictJSONFile, 'r') as f:
        idfPermissionsDictJSONRead = json.loads(f.read())
    
    # Parallelized solution
#    allzeniths, allazimuths = zip(*itertools.product(appVector, appVector))
#    appMatrix = map(jaccardSimOperation, allzeniths, allazimuths)
    
#    counter = 0
#    # Non parallel solution
#    for app1 in appVector:
#        for app2 in appVector:
#            counter += 1
#            appMatrix[appVector.index(app1)][appVector.index(app2)] = jaccardSimOperation(app1, app2)
#            if counter % 100000 == 0:
#                print "Computed JS for loops:", counter
    
    # reducing computation by half by replicating the upper half of the matrix
    counter = 0
    for i in range(len(appVector)):
        for j in range(i, len(appVector)):
            score  = jaccardSimOperation(appVector[i], appVector[j], permissionsDict, idfPermissionsDictJSONRead)
            appMatrix[i, j] = score
            if i!=j:
                appMatrix[j, i] = score
            counter += 1
            if counter % 100000 == 0:
                print "Computed JS for loops:", counter           
    
    
#    X = np.array(appMatrix)
#    X.shape = (numberOfApps,numberOfApps)
    print "computeJaccardMatrix complete"
    return appMatrix, appVector

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
#                 print row[0],row[1]
                '''
                Computing an "Inverse Document Frequency" of apps requesting a permission. 
                This will tell us if a particular permission is unique and rare or a popular one.
                If an app asks for permissions which are rare then they are outliers with respect to commonly asked permissions.
                This warrants a further look from our perspective.
                We are using permission ids to store less data.
                '''
                idfPermissionsDict[row[2]] = countOfApps/row[0]
                #print idfPermissionsDict[str(row[2])]
    except:
        print "Unexpected error in getAppCountRequestingPermissions:", sys.exc_info()[0]
        raise

    #print idfPermissionsDict
    writeToFile(idfPermissionsDict)
    print "Completed the IDF computation process"
#     return idfPermissionsDict
 
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
