'''
Created on January 2, 2017
@author: Prajit Kumar Das
Usage: python extractEmptyGooglePlayStoreCategoryAppsFromJson.py
'''
import json
import sys
import time

def writeCategoryJson(jsonDict):
	appDict = {}
	appList = []
	for app in jsonDict:
		if jsonDict[app]["google_play_category"] == "":
			appList.append(app)

	appDict["packages"] = appList
	json.dump(appDict, open('newcategory.json', 'w'), sort_keys = True, indent = 4)

def main(argv):
	if len(sys.argv) != 2:
		sys.stderr.write('Usage: python extractEmptyGooglePlayStoreCategoryAppsFromJson.py category.json\n')
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
	sys.exit(main(sys.argv))