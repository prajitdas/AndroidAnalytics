'''
Created on January 2, 2017
@author: Prajit Kumar Das
Usage: python getCategoryInfoForApp.py
'''
import json
import sys
import time
import databaseHandler

def getData(app,dbHandle):
	appCategory = ''
	cursor = dbHandle.cursor()
#	sqlStatement = "SELECT app_pkg_name FROM `appdata` WHERE `app_pkg_name` LIKE '%"+searchString+"%' AND `still_in_googleplaystore` = 1 AND `paid` = 0;"
	sqlStatement = "SELECT c.name as category FROM  `appdata` a,  `appcategories` c WHERE a.app_pkg_name = '"+app+"' AND a.still_in_googleplaystore =1 AND a.paid = 0 AND c.id = a.app_category_id;"

	try:
		cursor.execute(sqlStatement)
		for categoryTuple in cursor:
			category = categoryTuple[0]
			appCategory = category.lower().replace(' ','_').replace('&','n')
	except:
		print 'Unexpected error in test:', sys.exc_info()[0]
		raise
	return appCategory

def writeCategoryJson(appList):
	dbHandle = databaseHandler.dbConnectionCheck() #DB Open
	mainDict = {}
	for app in appList:
		appDict = {}
		appDict["annotated_category"] = ''
		appDict["google_play_category"] = getData(app,dbHandle)
		mainDict[app] = appDict
	
	json.dump(mainDict, open('newcategory.json', 'w'), sort_keys = True, indent = 4)
	dbHandle.close() #DB Close

def main(argv):
	if len(sys.argv) != 2:
		sys.stderr.write('Usage: python getCategoryInfoForApp.py appList.json\n')
		sys.exit(1)

	jsonFile=sys.argv[1]
	jsonDict = {}
	try:
		jsonDict = json.loads(open(jsonFile).read())
	except:
		print "json was empty"

	# App package names for the search
	appList = jsonDict["packages"]

	startTime = time.time()
	writeCategoryJson(appList)
	executionTime = str((time.time()-startTime)*1000)
	print 'Execution time was: '+executionTime+' ms'

if __name__ == "__main__":
	sys.exit(main(sys.argv))