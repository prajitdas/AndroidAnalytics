'''
Created on June 26,2016
@author: Prajit Kumar Das

Usage: python clearEmptyRuns.py jsonFileToClear\n

Code to clear empty runs from JSON files.
'''
import json
import sys
import time

def	compareSyscalls(dict1, dict2):
	if len(dict1) != len(dict2):
		return False
	for call in dict1:
		if call in dict2:
			if dict1[call] != dict2[call]:
				return False
		else:
			return False
	return True

def removeDuplicateRuns(appDict):
	newAppDict = {}
	for app in appDict:
		keyList = appDict[app].keys()
		toRejectKeysList = []
		for i in range(len(keyList)):
			for j in range(i,len(keyList)):
				if i != j:
					if compareSyscalls(appDict[app][keyList[i]], appDict[app][keyList[j]]):
						toRejectKeysList.append(keyList[j])
		toRejectKeysList = list(set(toRejectKeysList))
		for key in keyList:
			if key not in toRejectKeysList:
				if app not in newAppDict:
					tempDict = {}
					tempDict[key] = appDict[app][key]
					newAppDict[app] = tempDict
				else:
					newAppDict[app][key] = appDict[app][key]
	return newAppDict

def clearEmptyRuns(jsonFileToClear):
	jsonDict = json.loads(open(jsonFileToClear,'r').read())

	modifiedDict = {}
	for app in jsonDict.iterkeys():
		if bool(jsonDict[app]):
			ticks = time.time()
			uniformString = str(ticks).replace(".","")
			runNumber = 'run'+uniformString
			tempDict = {}
			for run in jsonDict[app]:
				if not run.startswith('run'):
					tempDict[run] = jsonDict[app][run]
				else:
				 	if bool(jsonDict[app][run]):
				 		if app in modifiedDict:
				 			modifiedDict[app][run] = jsonDict[app][run]
				 		else:
				 			currentDict = {}
				 			currentDict[run] = jsonDict[app][run]
				 			modifiedDict[app] = currentDict
			if bool(tempDict):
				modifiedDict[app][runNumber] = tempDict
	modifiedDict = removeDuplicateRuns(modifiedDict)
	open(jsonFileToClear,'w').write(json.dumps(removeDuplicateRuns(modifiedDict),indent=4,sort_keys=True))

def main(argv):
	if len(sys.argv) != 2:
		sys.stderr.write('Usage: python clearEmptyRuns.py jsonFileToClear\n')
		sys.exit(1)

	jsonFileToClear = sys.argv[1]

	startTime = time.time()
	clearEmptyRuns(jsonFileToClear)
	executionTime = str((time.time()-startTime)*1000)
	print 'Execution time was:',executionTime,'ms'

if __name__ == "__main__":
	sys.exit(main(sys.argv))