#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on August 18, 2015
@author: Prajit
Usage: python selectAppDescriptions.py
'''
import sys
import databaseHandler
import json
import os
import platform

def generateAppDict(dbHandle,sqlStatement):
	cursor = dbHandle.cursor()
	appDict = {}
	try:
		cursor.execute(sqlStatement)
		print "Extracting app package names and ids"
		if cursor.rowcount > 0:
			queryOutput = cursor.fetchall()
			for row in queryOutput:
				appDict[row[1]] = row[2]
	except:
		print "Unexpected error in extractAllApps:", sys.exc_info()[0]
		raise

	print "generateAppDict complete"
	return appDict

def getTopAppsFromDownloadedJSONs():
	# Detect operating system and takes actions accordingly
	osInfo = platform.system()
	currentDirectory = os.getcwd()
	if osInfo == 'Windows':
		topAppJsonsFrom42MattersAPIDirectory = currentDirectory+"\\topAppJsonsFrom42MattersAPI"
	elif osInfo == 'Linux' or osInfo == 'Darwin':
		topAppJsonsFrom42MattersAPIDirectory = currentDirectory+"/topAppJsonsFrom42MattersAPI"
	
	appNameList = []
	for filename in os.listdir(topAppJsonsFrom42MattersAPIDirectory):
		topAppDict = json.loads(open(os.path.join(topAppJsonsFrom42MattersAPIDirectory,filename), 'r').read().decode('utf8'))
		for appData in topAppDict['appList']:
			if 'package_name' in appData:
				packageName = str(appData['package_name'])
				#isDataCollected(dbHandle,packageName)
				appNameList.append(packageName) 

	return appNameList

def getSpecificCategoryAppsTopFewThousands(dbHandle,categoryId):
	sqlStatement = "SELECT a.`id`, a.`app_pkg_name`, a.`desc` FROM `appdata` a, `appurls` url, `appcategories` cat WHERE a.`app_pkg_name` = url.`app_pkg_name` AND url.`perm_extracted` = 1 AND a.`app_category_id` = "+str(categoryId)+" AND a.`app_category_id` = cat.`id` ORDER BY a.`installs` DESC, a.`review_rating` DESC, a.`review_count` DESC LIMIT 1000;"
	return generateAppDict(dbHandle,sqlStatement)

# Get a bunch of apps from which you want to get the permissions
# Select apps which have had their permissions extracted
def getTopApps(dbHandle):
	appCategorySQLQueryList = databaseHandler.convertPythonListToSQLQueryList(getTopAppsFromDownloadedJSONs())
	sqlStatement = "SELECT a.`id`, a.`app_pkg_name`, a.`desc` FROM `appdata` a, `appurls` url WHERE a.`app_pkg_name` = url.`app_pkg_name` AND url.`perm_extracted` = 1 AND a.`app_pkg_name` IN ("+appCategorySQLQueryList+");"
	return generateAppDict(dbHandle,sqlStatement)

def getCategoryApps(dbHandle,appCategoryList):
	appCategorySQLQueryList = databaseHandler.convertPythonListToSQLQueryList(appCategoryList)
	sqlStatement = "SELECT a.`id`, a.`app_pkg_name`, a.`desc` FROM `appdata` a, `appurls` url, `appcategories` cat WHERE a.`app_pkg_name` = url.`app_pkg_name` AND url.`perm_extracted` = 1 AND cat.`url` IN ("+appCategorySQLQueryList+") AND a.`app_category_id` = cat.`id`;"
	return generateAppDict(dbHandle,sqlStatement)

def getCategoryAppsTopFewThousands(dbHandle):
	appDict = {}
	sqlStatement = "select id from appcategories;"
	cursor = dbHandle.cursor()
	try:
		cursor.execute(sqlStatement)
		print "Extracting app package names and ids"
		if cursor.rowcount > 0:
			queryOutput = cursor.fetchall()
			for row in queryOutput:
				appDict.update(getSpecificCategoryAppsTopFewThousands(dbHandle,row[0]))
	except:
		print "Unexpected error in extractAllApps:", sys.exc_info()[0]
		raise
	return appDict

def getHMDAppsTopFewThousands(dbHandle,appCategoryList):
	appCategorySQLQueryList = databaseHandler.convertPythonListToSQLQueryList(appCategoryList)
	sqlStatement = "SELECT a.`id`, a.`app_pkg_name`, a.`desc` FROM `appdata` a, `appurls` url, `appcategories` cat WHERE a.`app_pkg_name` = url.`app_pkg_name` AND url.`perm_extracted` = 1 AND cat.`url` IN ("+appCategorySQLQueryList+") AND a.`app_category_id` = cat.`id` ORDER BY a.`installs` DESC, a.`review_rating` DESC, a.`review_count` DESC LIMIT 25000;"
	return generateAppDict(dbHandle,sqlStatement)

def getAllApps(dbHandle):
	sqlStatement = "SELECT a.`id`, a.`app_pkg_name`, a.`desc` FROM `appdata` a, `appurls` url WHERE a.`app_pkg_name` = url.`app_pkg_name` AND url.`perm_extracted` = 1;"
	return generateAppDict(dbHandle,sqlStatement)

'''
No longer necessary to call this
def isDataCollected(dbHandle,packageName):
	cursor = dbHandle.cursor()
	sqlStatement = "SELECT perm_extracted,parsed FROM `appurls` WHERE `app_pkg_name` = '"+packageName+"';"
	try:
		cursor.execute(sqlStatement)
		if cursor.rowcount == 0:
			print packageName,",error was: url not collected"
			return False
		else:
			queryOutput = cursor.fetchall()
			for row in queryOutput:
				if row[0] == 0:
					if row[1] == 0:
						print packageName,",error was: data and permissions not collected"
					else:
						print packageName,",error was: permissions not collected but data collected"
					return False
				else:
					if row[1] == 0:
						print packageName,",error was: permissions collected but data not collected"
						return False
					else:
						print packageName,"data and permissions collected"
						return True
	except:
		print "Unexpected error in isDataCollected:", sys.exc_info()[0]
		raise

def main(argv):
	dbHandle = databaseHandler.dbConnectionCheck() #DB Open
	for app in getTopAppsFromDownloadedJSONs():
		isDataCollected(dbHandle,app)
	dbHandle.close()
if __name__ == "__main__":
	sys.exit(main(sys.argv))
'''
