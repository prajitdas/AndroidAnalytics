#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on June 29, 2015
@author: Prajit Kumar Das

Usage: python getAppJSONs.py\n

One time extraction code for data from Playdrone data set.
'''
import time
import sys
import databaseHandler
import json
import os
import urllib2

# Download Playdrone App Metadata JSON
def downloadAppJSON(JSONUrl, appJSONDownloadFileLocation):
	#Headers added because of HTTP 404 errors
	headers = { 'User-Agent' : 'Mozilla/5.0' }
	req = urllib2.Request(JSONUrl, None, headers)
	print "Downloading: ", JSONUrl

	outFile = urllib2.urlopen(req)
	jsonFile = open(appJSONDownloadFileLocation,'wb')
	jsonFile.write(outFile.read())
	jsonFile.close()

def readAppJSONForPermissionInfo(JSONUrl, app_pkg_name):
	# If the apps download directory doesn't exist just create it
	currentDirectory = os.getcwd()
	appJSONDownloadDirectory = currentDirectory+"/appJSONs/"
	if not os.path.isdir(os.path.dirname(appJSONDownloadDirectory)):
		os.makedirs(appJSONDownloadDirectory)
	appJSONDownloadFileLocation = appJSONDownloadDirectory+app_pkg_name+".json"
	downloadAppJSON(JSONUrl, appJSONDownloadFileLocation)

def extractPermissionInfo(appJSONDownloadFileLocation):
	appJSONDownloadFileLocation = 'appJSONs/com.google.android.youtube.json'
	for appinfo in json.loads(open(appJSONDownloadFileLocation, 'r').read().decode('utf8')):
		#print type(appinfo)
		print appinfo
		#print appinfo['details']
		#print appinfo["details"]

def doTask():
	dbHandle = databaseHandler.dbConnectionCheck() # DB Open

	#Created a view for this data, i.e. valid_app_playdrone_metadata_url_view using that now
	#sqlStatement = "SELECT a.`playdrone_metadata_url`, a.`app_pkg_name` FROM `appurls` a, `appdata` b WHERE `playdrone_metadata_url` IS NOT NULL AND a.`app_pkg_name` = b.`app_pkg_name`;"
	sqlStatement = "SELECT * FROM `valid_app_playdrone_metadata_url_view`;"
	cursor = dbHandle.cursor()
	try:
		cursor.execute(sqlStatement)
		queryOutput = cursor.fetchall()
	except:
		print "Unexpected error:", sys.exc_info()[0]
		raise
	for row in queryOutput:
		readAppJSONForPermissionInfo(row[0],row[1])
		sys.exit(1)

	dbHandle.close() #DB Close

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python getAppJSONs.py\n')
		sys.exit(1)

	startTime = time.time()
	#doTask()
	extractPermissionInfo("")
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	sys.exit(main(sys.argv))
