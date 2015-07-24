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

	#Headers added because of HTTP 404 errors
	headers = { 'User-Agent' : 'Mozilla/5.0' }
	req = urllib2.Request(APKURL, None, headers)
	print "Downloading: ", APKURL

	# If the apps download directory doesn't exist just create it
	currentDirectory = os.getcwd()
	appsDownloadDirectory = currentDirectory+"/apps/"
	if not os.path.isdir(os.path.dirname(appsDownloadDirectory)):
		os.makedirs(appsDownloadDirectory)

	appDownloadFileLocation = appsDownloadDirectory+appPackageName+".apk"

	outFile = urllib2.urlopen(req)
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
	downloadCounter = 0
	for row in queryOutput:
		downloadCounter += 1
		downloadAPK(dbHandle,row[0],row[1])
		#After downloading 100 apps sleep for an hour
		if downloadCounter == 100:
			downloadCounter = 0
			time.sleep(3600)

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
