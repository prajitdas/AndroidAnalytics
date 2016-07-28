'''
Created on June 26,2016
@author: Prajit Kumar Das

Usage: python mergingMasterJsonFiles.py originalFile mergingFile\n

Code to merge two different run JSON files.
Also code to clear empty runs from JSON files.
'''
import json
import sys
import time

# # Returns True if the original syscall dict had more variety of calls or more number of total calls
# # Presence of more syscalls (or words) has higher significance
# # Presence of number of syscalls (or words) has lower significance
# def hasMoreCallsSyscallDict(origSyscallDict,newSyscallDict):
# 	# origTotalCalls = 0
# 	# newTotalCalls = 0
# 	# for freq in origSyscallDict.itervalues():
# 	# 	origTotalCalls += freq
# 	# for freq in newSyscallDict.itervalues():
# 	# 	newTotalCalls += freq
# 	if len(origSyscallDict) >= len(newSyscallDict):
# 		return False
# 	return True

def compareSyscalls(dict1, dict2):
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
			for j in range(i, len(keyList)):
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

def clearEmptyRuns(jsonDict):
	modifiedDict = {}
	for app in jsonDict.iterkeys():
		if bool(jsonDict[app]):
			ticks = time.time()
			uniformString = str(ticks).replace(".", "")
			runNumber = 'run' + uniformString
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
	return removeDuplicateRuns(modifiedDict)

def doTask(originalFile,mergingFile):
	originalDict = json.loads(open(originalFile,'r').read())
	mergingDict = json.loads(open(mergingFile,'r').read())

	for app2 in mergingDict.iterkeys():
		ticks = time.time()
		uniformString = str(ticks).replace(".","")
		runNumber = 'run'+uniformString
		if app2 in originalDict:
			for runCount in mergingDict[app2]:
				if runCount.startswith('run'):
					originalDict[app2][runNumber] = mergingDict[app2][runCount]
				else:
					originalDict[app2][runNumber] = mergingDict[app2]
		else:
			originalDict[app2] = mergingDict[app2]

	open(originalFile,'w').write(json.dumps(clearEmptyRuns(originalDict),indent=4,sort_keys=True))

def main(argv):
	if len(sys.argv) != 3:
		sys.stderr.write('Usage: python mergingMasterJsonFiles.py originalFile mergingFile\n')
		sys.exit(1)

	originalFile = sys.argv[1]
	mergingFile = sys.argv[2]

	startTime = time.time()
	doTask(originalFile,mergingFile)
	executionTime = str((time.time()-startTime)*1000)
	print 'Execution time was:',executionTime,'ms'

if __name__ == "__main__":
	sys.exit(main(sys.argv))