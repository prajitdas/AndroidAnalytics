#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on Apr 4, 2015
@author: Prajit Kumar Das
Usage: python createDatbase.py
'''

from org.ebiquity.data.collection import databaseHandler
import sys
import time
import os
import platform

def doTask():
    dbHandle = org.ebiquity.data.collection.databaseHandler.dbConnectionCheck() # DB Open

    # If the apps download directory doesn't exist just create it
    currentDirectory = os.getcwd()

    osInfo = platform.system()
    if osInfo == 'Windows':
        sqlScriptPath = currentDirectory+"\\sqlScripts\\ddl.sql"
    elif osInfo == 'Linux':
        sqlScriptPath = currentDirectory+"/sqlScripts/ddl.sql"
    else:
        sys.stderr.write('The current os not supported at the moment.\n')
        sys.exit(1)

    runSQLFile(sqlScriptPath, dbHandle)    
    
    dbHandle.close() #DB Close

def runSQLFile(sqlScriptPath, dbHandle):
    for sqlStatement in file(sqlScriptPath).read().split(';'):
        org.ebiquity.data.collection.databaseHandler.dbManipulateData(dbHandle, sqlStatement)

def main(argv):
    if len(sys.argv) != 1:
        sys.stderr.write('Usage: python createDatbase.py\n')
        sys.exit(1)

    startTime = time.time()
    doTask()
    executionTime = str((time.time()-startTime)*1000)
    print "Execution time was: "+executionTime+" ms"
    
if __name__ == "__main__":
    main()
