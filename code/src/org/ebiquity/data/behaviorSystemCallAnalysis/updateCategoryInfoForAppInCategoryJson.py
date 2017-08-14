'''
Created on January 2, 2017
@author: Prajit Kumar Das
Usage: python updateCategoryInfoForAppInCategoryJson.py
'''
import json
import sys
import time
import databaseHandler

def getData(app,dbHandle):
	appCategory = ""
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

def writeCategoryJson(jsonDict):
	dbHandle = databaseHandler.dbConnectionCheck() #DB Open
	copyDict = jsonDict
	for app in jsonDict:
		if jsonDict[app]["google_play_category"] == "":
			print "Trying to update data for: "+app
			category = getData(app,dbHandle)
			if category != "":
				copyDict[app]["google_play_category"] = category
				print "Updated data for: "+app
	
	json.dump(copyDict, open('newcategory.json', 'w'), sort_keys = True, indent = 4)
	dbHandle.close() #DB Close

def main(argv):
	if len(sys.argv) != 2:
		sys.stderr.write('Usage: python updateCategoryInfoForAppInCategoryJson.py category.json\n')
		sys.exit(1)

	jsonFile=sys.argv[1]
	jsonDict = {}
	try:
		jsonDict = json.loads(open(jsonFile).read())
	except:
		print "json was empty"

	startTime = time.time()
	writeCategoryJson(jsonDict)
	executionTime = str((time.time()-startTime)*1000)
	print 'Execution time was: '+executionTime+' ms'

if __name__ == "__main__":
	main(sys.argv)