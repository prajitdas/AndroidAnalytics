#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on Apr 4, 2015
@author: Prajit Kumar Das
Usage: python downloadAPKs.py
'''

import os 
import urllib2
import sys
import datetime
import databaseHandler
import _mysql_exceptions

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

# Update "downloaded" column to mark app has been downloaded
def updateDownloaded(dbHandle, tableId):
	sqlStatement = "UPDATE appurls SET downloaded=1 WHERE id="+str(tableId)+";"
	dbManipulateData(dbHandle, sqlStatement)

# Download APK
def downloadAPK(dbHandle, tableId, appPackageName):
	URLPrefix = "http://dl3.apk-dl.com/store/download/details?id="
	APKURL = URLPrefix+appPackageName

	# If the apps download directory doesn't exist just create it
	currentDirectory = os.getcwd()
	appsDownloadDirectory = currentDirectory+"/apps/"
	if not os.path.isdir(os.path.dirname(appsDownloadDirectory)):
		os.makedirs(appsDownloadDirectory)

	appDownloadFileLocation = appsDownloadDirectory+appPackageName+".apk"

	outFile = urllib2.urlopen(APKURL)
	apkFile = open(appDownloadFileLocation,'wb')
	apkFile.write(outFile.read())
	apkFile.close()

	if os.path.getsize(appDownloadFileLocation) < 5 * 1024:
		os.remove(appDownloadFileLocation)
	else:
		updateDownloaded(dbHandle, tableId)

# Get URLs for app downloading
def getAppURL(dbHandle):
	cursor = dbHandle.cursor()
	sqlStatement = "SELECT id, app_pkg_name FROM appurls WHERE downloaded = 0;"
	try:
		cursor.execute(sqlStatement)
		queryOutput = cursor.fetchall()
	except:
		print "Unexpected error:", sys.exc_info()[0]
		raise
	for row in queryOutput:
		downloadAPK(dbHandle,row[0],row[1])

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python downloadAPKs.py\n')
		sys.exit(1)

	dbHandle = databaseHandler.dbConnectionCheck() # DB Open

	getAppURL(dbHandle)
	startTime = datetime.datetime.now()
	endTime = datetime.datetime.now()
	executionTime = (endTime-startTime)
	print "Execution time was: "+str(executionTime)

	dbHandle.close() #DB Close

if __name__ == "__main__":
	sys.exit(main(sys.argv))
