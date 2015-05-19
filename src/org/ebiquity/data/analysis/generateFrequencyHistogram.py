#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on May 18, 2015
@author: Prajit
Usage: python generateFrequencyHistogram.py
'''

import sys
import time
import databaseHandler

def doTask():
    dbHandle = databaseHandler.dbConnectionCheck()
    cursor = dbHandle.cursor()
    sqlStatement = "SELECT * FROM `app_perm_count`;"
    try:
        cursor.execute(sqlStatement)
        if cursor.rowcount > 0:
            queryOutput = cursor.fetchall()
            for row in queryOutput:
                appPkgName = row[0]
                permissionsCount = row[1]
                print appPkgName,permissionsCount
    except:
        print "Unexpected error:", sys.exc_info()[0]
        raise

def main(argv):
    if len(sys.argv) != 1:
        sys.stderr.write('Usage: python generateFrequencyHistogram.py\n')
        sys.exit(1)

    startTime = time.time()
    doTask()
    executionTime = str((time.time()-startTime)*1000)
    print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
    sys.exit(main(sys.argv))
