#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on September 3, 2015
@author: Prajit
Usage: python readJsonDecode
'''
import NumpyEncoder as ne
import json
import numpy as np
import sys
import time
import weightedJaccardSimilarity as wjs
import databaseHandler

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

def getJaccardSimilarity(app1, app2):
    dbHandle = databaseHandler.dbConnectionCheck()
    appIdVectorSQLQueryList = "'"+app1+"','"+app2+"'"
    sqlStatement = "SELECT app.`app_pkg_name`, a.`perm_id` FROM `appperm` a, `appdata` app WHERE a.`app_id` = app.`id` AND app.`app_pkg_name` IN ("+appIdVectorSQLQueryList+");"
    permissionsSet, permissionsDict = generatePermVector(dbHandle, sqlStatement)
    return (wjs.computeJaccardMatrix(permissionsSet, permissionsDict)[0])[0][1]

def doTask():
    with open("clusters.json", 'r') as f:
        evaluatedClusterResultsDict = json.loads(f.read())

    # expected = np.arange(10000, dtype=np.float)
    print len(evaluatedClusterResultsDict["appVectors"])
    print type(evaluatedClusterResultsDict["appVectors"])
    #print evaluatedClusterResultsDict["appVectors"]
    result = ne.decodeNDArray(evaluatedClusterResultsDict["appVectors"])
    print result

    # None of the following assertions will be broken.
    # assert result.dtype == expected.dtype, "Wrong Type"
    # assert result.shape == expected.shape, "Wrong Shape"
    # assert np.allclose(expected, result), "Wrong Values"

def main(argv):
    if len(sys.argv) != 4:
        sys.stderr.write('Usage: python readJsonDecode.py app1 app2 app3\n')
        sys.exit(1)

    app1 = sys.argv[1]
    app2 = sys.argv[2]
    app3 = sys.argv[3]
    
    startTime = time.time()
    #doTask()
    dist1 = getJaccardSimilarity(app1, app2)
    dist2 = getJaccardSimilarity(app1, app3)
    distances = []
    distances['fbdist'] = dist1
    distances['flightdist'] = dist2
    print json.dumps(distances)
    #executionTime = str((time.time()-startTime)*1000)
    #print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
    sys.exit(main(sys.argv))

