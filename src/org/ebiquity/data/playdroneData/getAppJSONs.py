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

def isAPKPermissionsAlreadyInTable(dbHandle,pkgName):
	cursor = dbHandle.cursor()
	sqlStatement = "SELECT COUNT(a.app_id) FROM `appperm` a, `appdata` b WHERE a.app_id = b.id AND b.app_pkg_name = '"+pkgName+"';"
	try:
		cursor.execute(sqlStatement)
		queryOutput = cursor.fetchall()
		for row in queryOutput:
			if row[0] > 0:
				return True
			return False
	except:
		print "Unexpected error:", sys.exc_info()[0]
		raise

def getAppId(dbHandle,sqlStatement,pkgName):
	cursor = dbHandle.cursor()
	try:
		cursor.execute(sqlStatement)
		if cursor.rowcount > 0:
			queryOutput = cursor.fetchall()
			for row in queryOutput:
				appId = row[0]
		else:
			print "Probably the app data for: "+pkgName+" has not been collected because we could not find that app in the database:", sys.exc_info()[0]
			return -1
	except:
		print "Unexpected error:", sys.exc_info()[0]
		raise
	return appId

def getPermissionId(dbHandle,sqlStatement,permissionName):
	cursor = dbHandle.cursor()
	try:
		cursor.execute(sqlStatement)
		if cursor.rowcount > 0:
			# If permission is found permission table great, just return the permission id to be inserted into the appperm table
			queryOutput = cursor.fetchall()
			for row in queryOutput:
				permissionId = row[0]
		else:
			# If permission is NOT found permission table then insert it in the table and return the permission id to be inserted into the appperm table
			# We are inserting protection level as signature by default.
			# The data quality can be improved further by analyzing the apks or 
			# by carrying out post analysis on the `AndroidManifest.xml file <https://raw.githubusercontent.com/android/platform_frameworks_base/master/core/res/AndroidManifest.xml>`_
			sqlStatement = "INSERT INTO `permissions`(`name`,`protection_level`) VALUES ('"+permissionName+"','signature');"
			permissionId = databaseHandler.dbManipulateData(dbHandle, sqlStatement)
	except:
		print "Unexpected error:", sys.exc_info()[0]
		raise
	return permissionId

# Permission info extraction from the App JSON on Playdrone dataset
def extractPermissionInfo(dbHandle, appJSONDownloadFileLocation, pkgName):
	appInfoDict = json.loads(open(appJSONDownloadFileLocation, 'r').read().decode('utf8'))
	if 'details' in appInfoDict:
		details = appInfoDict['details']
		if 'app_details' in details:
			app_details = details['app_details']
			if 'permission' in app_details:
				permissionList = app_details['permission']
				for permissionName in permissionList:
					# See if the permission is in the table if not insert it and get its id
					sqlStatementPermName = "SELECT id FROM `permissions` WHERE `name` = '"+permissionName+"';"
					permissionId = getPermissionId(dbHandle,sqlStatementPermName,permissionName)
			
					# Find the App's Id in the DB
					# Assumption is that the crawlURL has already extracted all information about the app and the same is in the appdata table
					# If that is not true this step will fail and we will have to skip and go to the next app
					sqlStatementAppPkgName = "SELECT id FROM `appdata` WHERE `app_pkg_name` = '"+pkgName+"';"
					appId = getAppId(dbHandle,sqlStatementAppPkgName,pkgName)
						
					if appId > 0:
						# Insert the App_Id and corresponding Perm_Id in to the DB
						sqlStatement = "INSERT INTO `appperm`(`app_id`,`perm_id`) VALUES ("+str(appId)+","+str(permissionId)+") ON DUPLICATE KEY UPDATE `app_id`='"+str(appId)+"',`perm_id`='"+str(permissionId)+"';"
						print sqlStatement
						databaseHandler.dbManipulateData(dbHandle, sqlStatement)
					else:
						print "Moving on to the next app. This app has not been extracted from Google Play Store."

# Download Playdrone App Metadata JSON
def downloadAppJSON(dbHandle, JSONUrl, appJSONDownloadFileLocation, app_pkg_name):
	#Headers added because of HTTP 404 errors
	headers = { 'User-Agent' : 'Mozilla/5.0' }
	req = urllib2.Request(JSONUrl, None, headers)
	print "Downloading: ", JSONUrl

	outFile = urllib2.urlopen(req)
	jsonFile = open(appJSONDownloadFileLocation,'wb')
	jsonFile.write(outFile.read())
	jsonFile.close()
	extractPermissionInfo(dbHandle, appJSONDownloadFileLocation, app_pkg_name)

def readAppJSONForPermissionInfo(dbHandle, JSONUrl, app_pkg_name):
	# If the apps download directory doesn't exist just create it
	currentDirectory = os.getcwd()
	appJSONDownloadDirectory = currentDirectory+"/appJSONs/"
	if not os.path.isdir(os.path.dirname(appJSONDownloadDirectory)):
		os.makedirs(appJSONDownloadDirectory)
	appJSONDownloadFileLocation = appJSONDownloadDirectory+app_pkg_name+".json"
	downloadAppJSON(dbHandle, JSONUrl, appJSONDownloadFileLocation, app_pkg_name)

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
		# If we want to update the permissions that we have not extracted we must avoid doing the following as it will skip an app if even a single permission for it has been extracted before.
		# For the time being we are doing this so that we are not blocked by the servers.
		if isAPKPermissionsAlreadyInTable(dbHandle,pkgName) == True:
			print "Moving on to extracting permissions for the next app. This one is already in the database."
		else:
			readAppJSONForPermissionInfo(dbHandle,row[0],row[1])

	dbHandle.close() #DB Close

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python getAppJSONs.py\n')
		sys.exit(1)

	startTime = time.time()
	doTask()
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	sys.exit(main(sys.argv))
