'''
Created on July 12,2017
@author: Prajit Kumar Das

Usage: python getAppPermDataFromServer.py\n
'''
import os
import json
import sys
import time
import databaseHandler as db

def getAppPermData(dbHandle,appList):
	appDict = {}
	cursor = dbHandle.cursor(buffered=True)
	sqlStatement = "select a.app_pkg_name, b.name from appdata a, permissions b, appperm c where a.id = c.app_id and b.id = c.perm_id and a.id in (select id from appdata where app_pkg_name in("+appList+"));"
	print sqlStatement
	try:
		cursor.execute(sqlStatement)
		resultSet = cursor.fetchall()
		for row in resultSet:
			pkgName = str(row[0])
			permission = str(row[1])
			if pkgName in appDict:
				permissions = appDict[pkgName]["permissions"]
				permissions.append(permission)
				appDict[pkgName]["permissions"] = permissions
			else:
				appDict[pkgName] = {}
				permissions = []
				permissions.append(permission)
				appDict[pkgName]["permissions"] = permissions

	except:
		print('Unexpected error: '+str(sys.exc_info()[0]))
	cursor.close()
	return appDict

def getAppCatData(dbHandle,appList,appDict):
	cursor = dbHandle.cursor(buffered=True)
	sqlStatement = "select app_pkg_name, google_play_category, annotated_category from annotations where app_pkg_name in("+appList+")"
	try:
		cursor.execute(sqlStatement)
		resultSet = cursor.fetchall()
		for row in resultSet:
			pkgName = str(row[0])
			google_play_category = str(row[1])
			annotated_category = str(row[2])
			appDict[pkgName]["annotated_category"] = annotated_category
			appDict[pkgName]["google_play_category"] = google_play_category
	except:
		print "Unexpected error:", str(sys.exc_info()[0]), pkgName
	cursor.close()
	return appDict

def getAppList():
	toprocessDict=json.loads(open("toprocess.json","r").read())
	appList='"'
	appList=appList+'","'.join(toprocessDict["packages"])
	appList = appList+'"'
	return appList

def main(argv):
	startTime = time.time()
	dbHandle = db.dbConnectionCheck()
	appList = getAppList()
	appDict = getAppPermData(dbHandle,appList)
	appDict = getAppCatData(dbHandle,appList,appDict)
	dbHandle.close()
	open("data.json","w").write(json.dumps(appDict, indent=4))
	executionTime = str((time.time()-startTime)/60)
	print 'Execution time was: '+executionTime+' minutes'

if __name__ == "__main__":
	main(sys.argv)
