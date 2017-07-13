'''
Created on July 12,2017
@author: Prajit Kumar Das

Usage: python runMalwareClassifier.py\n
'''
import os
import json
import sys
import time
import databaseHandler as db

def getDBData():
	appDict = {}
	dbHandle=db.dbConnectionCheck()
	cursor=dbHandle.cursor(buffered=True)
	sqlStatement="select a.app_pkg_name, b.name from appdata a, permissions b, appperm c where a.id = c.app_id and b.id = c.perm_id and a.id in (select id from appdata order by installs desc, review_rating desc);"
	try:
		cursor.execute(sqlStatement)
		resultSet = cursor.fetchall()
		for row in resultSet:
			pkgName = str(row[0])
			permission = str(row[1])
			if pkgName in appDict:
				permissions = appDict[pkgName]
				permissions.append(permission)
				appDict[pkgName] = permissions
			else:
				permissions = []
				permissions.append(permission)
				appDict[pkgName] = permissions

	except:
		print('Unexpected error: '+str(sys.exc_info()[0]))
	cursor.close
	dbHandle.close()
	return appDict

def main(argv):
	startTime = time.time()
	open("data.json","w").write(json.dumps(getDBData(), indent=4))
	executionTime = str((time.time()-startTime)/60)
	print 'Execution time was: '+executionTime+' minutes'

if __name__ == "__main__":
	main(sys.argv)
