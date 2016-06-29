'''
Created on June 29, 2016
@author: Prajit Kumar Das
Usage: python storeData.py
'''
import requests
import json
import sys
import time
import databaseHandler

def getData(searchString,applist,dbHandle):
	cursor = dbHandle.cursor()
	sqlStatement = "SELECT app_name, app_pkg_name, version FROM `appdata` WHERE `app_pkg_name` LIKE '%"+searchString+"%' AND `still_in_googleplaystore` = 1;"
	try:
		cursor.execute(sqlStatement)
		currentApp = {}
		tempAppDict = {}
		for app_name, app_pkg_name, version in cursor:
			tempAppDict['packageName'] = app_pkg_name
			tempAppDict['app_name'] = app_name
			tempAppDict['version'] = str(version)
			currentApp[app_pkg_name] = tempAppDict
			applist.append(currentApp)
	except:
		print 'Unexpected error in test:', sys.exc_info()[0]
		raise
	return applist

def storeDataonServer(url,searchStrings):
	dbHandle = databaseHandler.dbConnectionCheck() #DB Open
	# jsonString = '''{"applist":
	#   [
	#	 {"ABC":{"packageName":"ABC","appName":"ABC","versionInfo":"ABC"}},
	#	 {"com.facebook.katana":{"packageName":"com.facebook.katana","appName":"Facebook","versionInfo":"1.0"}},
	#	 {"com.facebook.orca":{"packageName":"com.facebook.orca","appName":"Messenger","versionInfo":"1.0"}}
	#   ]
	# }'''

	applist = []
	jsonString = {}
	for searchString in searchStrings:
		applist = getData(searchString,applist,dbHandle)
	jsonString['applist'] = applist
	print jsonString

	# serverResponse = requests.post(url, jsonString)
	# print serverResponse
	dbHandle.close() #DB Close

def convertToSQLQueryList(searchString):
	return "%"+searchString.replace(' ','%')+"%"

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python storeData.py\n')
		sys.exit(1)

	url = 'https://9b5d5f5d.ngrok.io'
	searchStrings = []
	searchStrings.append(convertToSQLQueryList("alarm clock"))
	searchStrings.append(convertToSQLQueryList("wifi analyzer"))

	startTime = time.time()
	storeDataonServer(url,searchStrings)
	executionTime = str((time.time()-startTime)*1000)
	print 'Execution time was: '+executionTime+' ms'

if __name__ == "__main__":
	sys.exit(main(sys.argv))