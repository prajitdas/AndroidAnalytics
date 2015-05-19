#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on May 18, 2015
@author: Prajit
Usage: python generateFrequencyHistogram.py username api_key
'''

import sys
import time
import databaseHandler
import plotly.tools as tls
import plotly.plotly as py
from plotly.graph_objs import *

def extractAppPermData():
    dbHandle = databaseHandler.dbConnectionCheck()
    cursor = dbHandle.cursor()
    sqlStatement = "SELECT * FROM `app_perm_count`;"
    try:
        cursor.execute(sqlStatement)
        if cursor.rowcount > 0:
            queryOutput = cursor.fetchall()
            permCountDict = {}
            for row in queryOutput:
                permissionCount = row[1]
                if permCountDict.has_key(permissionCount):
                    currentValue = permCountDict[permissionCount]
                    permCountDict[permissionCount] = currentValue + 1
                else:
                    permCountDict[permissionCount] = 1
    except:
        print "Unexpected error:", sys.exc_info()[0]
        raise
    return permCountDict
 
def doTask(username, api_key):
    permCountDict = extractAppPermData()
    permCount = []
    permCountFreq = []
    for permissionCount, permissionCountFreq in permCountDict.iteritems():
        permCount.append(permissionCount)
        permCountFreq.append(permissionCountFreq)
    tls.set_credentials_file(username, api_key)
    data = Data([
        Bar(
            x=permCount,
            y=permCountFreq
        )
    ])
    plot_url = py.plot(data, filename='basic-bar')
    
def main(argv):
    if len(sys.argv) != 3:
        sys.stderr.write('Usage: python generateFrequencyHistogram.py username api_key\n')
        sys.exit(1)

    startTime = time.time()
    doTask(sys.argv[1], sys.argv[2])
    executionTime = str((time.time()-startTime)*1000)
    print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
    sys.exit(main(sys.argv))
