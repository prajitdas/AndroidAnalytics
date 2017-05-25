'''
Created on July 28, 2016
@author: Prajit Kumar Das
Usage: python getAppsByCategoryInfo.py
'''
import json
import sys
import time
import databaseHandler

def getData(searchString,dbHandle):
	appDict = {}
	cursor = dbHandle.cursor()
#	sqlStatement = "SELECT app_pkg_name FROM `appdata` WHERE `app_pkg_name` LIKE '%"+searchString+"%' AND `still_in_googleplaystore` = 1 AND `paid` = 0;"
	sqlStatement = "SELECT a.app_pkg_name as app_pkg_name, c.name as category FROM  `appdata` a,  `appcategories` c WHERE a.app_pkg_name LIKE  '%"+searchString+"%' AND a.still_in_googleplaystore =1 AND a.paid =0 AND c.id = a.app_category_id;"

	try:
		cursor.execute(sqlStatement)
		for app_pkg_name, category in cursor:
			tempAppInfoDict = {}
			tempAppInfoDict['google_play_category'] = category.lower().replace(' ','_').replace('&','n')
			tempAppInfoDict['annotated_category'] = searchString.replace('%','_')
			appDict[app_pkg_name] = tempAppInfoDict
	except:
		print 'Unexpected error in test:', sys.exc_info()[0]
		raise
	return appDict

def writeCategoryJson(searchStringList):
	dbHandle = databaseHandler.dbConnectionCheck() #DB Open
	mainDict = {}
	for searchString in searchStringList:
		appDict = getData(searchString,dbHandle)
		# pp(appDict)
		for app in appDict:
			# print app
			mainDict[app] = appDict[app]
	
	json.dump(mainDict, open('category.json', 'w'), sort_keys = True, indent = 4)
	dbHandle.close() #DB Close

def writeCategoryJsonFromCSV():
	json.dump(mainDict, open('category.json', 'w'), sort_keys = True, indent = 4)

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python getAppsByCategoryInfo.py\n')
		sys.exit(1)

	# Search strings for the app search
	searchStringList = []
	searchStringList.append("Alarm clock".replace(' ','%').lower())
	searchStringList.append("Battery saver".replace(' ','%').lower())
	searchStringList.append("Drink Recipes".replace(' ','%').lower())
	searchStringList.append("File Explorer".replace(' ','%').lower())
	searchStringList.append("Lunar Calendar".replace(' ','%').lower())
	searchStringList.append("PDF Reader".replace(' ','%').lower())
	searchStringList.append("Scientific Calculator".replace(' ','%').lower())
	searchStringList.append("To Do List".replace(' ','%').lower())
	searchStringList.append("Video playback".replace(' ','%').lower())
	searchStringList.append("Wifi Analyzer".replace(' ','%').lower())

	startTime = time.time()
	writeCategoryJson(searchStringList)
	executionTime = str((time.time()-startTime)*1000)
	print 'Execution time was: '+executionTime+' ms'

if __name__ == "__main__":
	main(sys.argv)