#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on Apr 4, 2015
@author: Prajit Kumar Das
Usage: python createDatbase.py
'''

import databaseHandler
import sys
import time
import _mysql_exceptions
import os
import platform

# Fire an DML SQL statement and commit data
def dbManipulateData(dbHandle, sqlStatement):
    cursor = dbHandle.cursor()
    try:
        cursor.execute('SET NAMES utf8;')
        cursor.execute('SET CHARACTER SET utf8;')
        cursor.execute('SET character_set_connection=utf8;')
        cursor.execute(sqlStatement)
        dbHandle.commit()
    except _mysql_exceptions.IntegrityError:
        print "data already there"
    except:
        print "Unexpected error:", sys.exc_info()[0]
        raise
    return cursor.lastrowid

def runSQLFile(sqlScriptPath, dbHandle):
    for sqlStatement in file(sqlScriptPath).read().split(';'):
        dbManipulateData(dbHandle, sqlStatement)

def main(argv):
    if len(sys.argv) != 1:
        sys.stderr.write('Usage: python createDatbase.py\n')
        sys.exit(1)

    dbHandle = databaseHandler.dbConnectionCheck() # DB Open

    startTime = time.time()
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
    
    executionTime = str((time.time()-startTime)*1000)
    print "Execution time was: "+executionTime+" ms"
    
    dbHandle.close() #DB Close
    
if __name__ == "__main__":
    main()
