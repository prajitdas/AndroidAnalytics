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
import databaseHandler
import time

# Update "downloaded" column to mark app has been downloaded
def updateDownloaded(dbHandle, tableId):
	sqlStatement = "UPDATE appurls SET downloaded=1 WHERE id="+str(tableId)+";"
	databaseHandler.dbManipulateData(dbHandle, sqlStatement)

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

def doTask():
	dbHandle = databaseHandler.dbConnectionCheck() # DB Open
	getAppURL(dbHandle)
	dbHandle.close() #DB Close

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python downloadAPKs.py\n')
		sys.exit(1)

	startTime = time.time()
	doTask()
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	sys.exit(main(sys.argv))
