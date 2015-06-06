#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on May 16, 2015
@author: Prajit Kumar Das

Usage: python getPermissions.py\n

This is working now!!!
'''
import time
import sys
import databaseHandler

from GooglePlayAPI import permissions

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

def extractPermissionsInfo(dbHandle,pkgName):
	if isAPKPermissionsAlreadyInTable(dbHandle,pkgName) == True:
		print "Moving on to extracting permissions for the next app. This one is already in the database."
	else:
		# Extract permissions using the API and store in the DB
		pkgNameList=[]
		pkgNameList.append(pkgName)
		listOfPermissions = permissions.getPackagePermission(pkgNameList)
#		print listOfPermissions
		
		for permissionName in listOfPermissions:
			dbHandle = databaseHandler.dbConnectionCheck()
	
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
				sqlStatement = "INSERT INTO `appperm`(`app_id`,`perm_id`) VALUES ("+str(appId)+","+str(permissionId)+");"
				print sqlStatement
				databaseHandler.dbManipulateData(dbHandle, sqlStatement)
			else:
				print "Moving on to the next app. This app has not been extracted from Google Play Store."

def extractBulkPermissions(dbHandle,pkgNameList):
	for pkgName in pkgNameList:
		if isAPKPermissionsAlreadyInTable(dbHandle,pkgName) == True:
			print "Moving on to decompiling the next app. This one is already in the database."
			pkgNameList.remove(pkgName)
	print pkgNameList
	# Extract permissions using the API and store in the DB
	permissionListDict = permissions.getPackagePermission(pkgNameList)
	
	for appName, permissionList in permissionListDict.iteritems():
		print appName, permissionList
# 		dbHandle = databaseHandler.dbConnectionCheck()
# 
# 		# See if the permission is in the table if not insert it and get its id
# 		sqlStatementPermName = "SELECT id FROM `permissions` WHERE `name` = '"+permissionName+"';"
# 		permissionId = getPermissionId(dbHandle,sqlStatementPermName,permissionName)
# 
# 		# Find the App's Id in the DB
# 		# Assumption is that the crawlURL has already extracted all information about the app and the same is in the appdata table
# 		# If that is not true this step will fail and we will
# 		sqlStatementAppPkgName = "SELECT id FROM `appdata` WHERE `app_pkg_name` = '"+pkgName+"';"
# 		appId = getAppId(dbHandle,sqlStatementAppPkgName,pkgName)
# 		if appId > 0:
# 			# Insert the App_Id and corresponding Perm_Id in to the DB
# 			sqlStatement = "INSERT INTO `appperm`(`app_id`,`perm_id`) VALUES ("+str(appId)+","+str(permissionId)+");"
# 			databaseHandler.dbManipulateData(dbHandle, sqlStatement)
# 		else:
# 			print "Moving on to the next app"

# Update "downloaded" column should be permissions_extracted column, but its okay for the moment, to mark permissions have been extracted
def updateDownloaded(dbHandle, tableId):
	sqlStatement = "UPDATE `appurls` SET `downloaded`=1 WHERE `id`="+str(tableId)+";"
	databaseHandler.dbManipulateData(dbHandle, sqlStatement)

def doTask():
	dbHandle = databaseHandler.dbConnectionCheck() # DB Open
# TEST CODE FOR ONE APP
# 	extractPermissionsInfo(dbHandle,"a.a.a.A")
# 	extractPermissionsInfo(dbHandle,"com.expedia.bookings")
#	extractPermissionsInfo(dbHandle,"com.ioob.openmovies")
#	sys.exit(0)
# TEST CODE FOR ONE APP

	cursor = dbHandle.cursor()
	sqlStatement = "SELECT `id`, `app_pkg_name` FROM `appurls` WHERE `downloaded` = 0;"
	# We are not limiting at the moment
	# LIMIT 50000,5;"
	try:
		cursor.execute(sqlStatement)
		queryOutput = cursor.fetchall()
	except:
		print "Unexpected error:", sys.exc_info()[0]
		raise
	pkgNameList = []
	for row in queryOutput:
		pkgNameList.append(row[1])
 		extractPermissionsInfo(dbHandle,row[1])
 		updateDownloaded(dbHandle,row[0])
# 	print pkgNameList

'''
Bulk permissions extraction code might get complicated. 
We will have to see this later.
'''
#	extractBulkPermissions(dbHandle,pkgNameList)

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python getPermissions.py\n')
		sys.exit(1)
		
	startTime = time.time()
# 	while(1):
	doTask()
# 		time.sleep(3600)
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	sys.exit(main(sys.argv))
