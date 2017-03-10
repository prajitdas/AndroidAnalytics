'''
Created on March 9, 2017
@author: Prajit Kumar Das

Usage: python processFileSyscallSequences.py appPkgName\n

Process files for feature generation in syscall analysis.
'''
import time
import sys
import os
import fnmatch as fm
from collections import OrderedDict as od
import json

from shutil import copyfile
import re
from string import digits
import logging
logging.basicConfig(filename='processFileSyscallSequences.log',level=logging.DEBUG)

def isPathExists(path):
	if os.path.exists(path):
		return True
	return False

def sanitizeCall(inputString):
	# if '---' in inputString or '%' in inputString or  or hasNumbers(inputString):
	# 	return ''
	if 'System ' in inputString:
		return None
	if ' ' in inputString:
		inputString = inputString.split(' ')[0]
	if re.match("^[a-zA-Z_]*$", inputString):
		return inputString
	return None

def processFileGetFunctionNames(filePath,annotated_category,google_play_category):
	# syscallDict = json.loads(open('syscalls.json', 'r').read())
	syscalls = []
	with open(filePath,'r') as fp:
		for line in fp:
			line = line.translate(None, digits).strip()
			# This is where we are extracting the actual features from the out files
			# syscall = sanitizeCall(line)
			# We started getting an error due to this. So changing back to original code.
			if line.startswith('+++') or line.startswith('---') or line.startswith('System') or line.startswith('<...') or line.startswith('????'):
				continue
			else:
				syscall = line.split('(')[0].strip()
				syscalls.append(syscall)
				# syscall = syscall.split(' ')[2].strip()
				# if syscall in syscallDict:
				# 	syscallDict[syscall] += 1
				# else:
				# 	syscallDict[syscall] = 1
				# print 'something went seriously wrong for',syscall
				# logging.debug('something went seriously wrong for'+syscall)
	# for i,(k,v) in enumerate(od(sorted(syscallDict.items(),key=lambda k:k[1],reverse=True)).iteritems()):
	# 	print k,v
	runWrapperDict = {}
	# print filePath
	runWrapperDict["calls"] = syscalls
	runWrapperDict["annotated_category"] = annotated_category
	runWrapperDict["google_play_category"] = google_play_category
	# runWrapperDict[filePath.split('.run.')[1]] = syscallDict
	return runWrapperDict

# Returns True if the original syscall dict had more variety of calls or more number of total calls
# Presence of more syscalls (or words) has higher significance
# Presence of number of syscalls (or words) has lower significance
def hasMoreCallsSyscallDict(origSyscallDict,newSyscallDict):
	# origTotalCalls = 0
	# newTotalCalls = 0
	# for freq in origSyscallDict.itervalues():
	# 	origTotalCalls += freq
	# for freq in newSyscallDict.itervalues():
	# 	newTotalCalls += freq
	if len(origSyscallDict) >= len(newSyscallDict):
		return False
	return True

def storeFeaturesInJsonFile(jsonPath,syscallDict,appPkgName):
	masterJsonFile = os.path.join(jsonPath,"masterJsonOutputFileSequences.json")
	if isPathExists(masterJsonFile):
		masterJsonFileBkp = "masterJsonOutputFileBkp.json"
		copyfile(masterJsonFile, masterJsonFileBkp)
	jsonDict = {}
	try:
		jsonDict = json.loads(open(masterJsonFile).read())
	except:
		print "json was empty"
	if appPkgName in jsonDict:
		# print "Came into is in file"#, jsonDict[appPkgName]
		if hasMoreCallsSyscallDict(jsonDict[appPkgName],syscallDict) == True:
			# print "Came into is in file"
			jsonDict[appPkgName] = syscallDict
			open(masterJsonFile,"w").write(json.dumps(jsonDict,indent=4,sort_keys=True))
	else:
		# print "Came into is not in file"
		jsonDict[appPkgName] = syscallDict
		open(masterJsonFile,"w").write(json.dumps(jsonDict,indent=4,sort_keys=True))
	# print jsonDict.keys()

def extractFeatures(jsonPath,root,appPkgName,annotated_category,google_play_category):
	appOutputFolder = os.path.join(root,appPkgName)
	syscallDict = {}
	for file in os.listdir(appOutputFolder):
		if not fm.fnmatch(file,'*monkey.out'):
			# First analysis is to get the function names
			syscallDict = processFileGetFunctionNames(os.path.join(appOutputFolder,file),annotated_category,google_play_category)
		storeFeaturesInJsonFile(jsonPath,syscallDict,appPkgName)

def doTask(appPkgName,annotated_category,google_play_category):
	# The following 2 lines are for testing purposes only
	jsonPath = os.getcwd()
	outDir = os.path.join(os.getcwd(),"out")
	# jsonPath = "D:\AndroidAnalytics\code\src\org\ebiquity\data\systemCallAnalysis"
	# outDir = "D:\AndroidAnalytics\code\src\org\ebiquity\data\systemCallAnalysis\out"
	extractFeatures(jsonPath,outDir,appPkgName,annotated_category,google_play_category)

def getAggregateInfo(appPkgName,aggregateDict,masterDict):
	annotated_category = masterDict[appPkgName]["annotated_category"]
	google_play_category = masterDict[appPkgName]["google_play_category"]
	calls = masterDict[appPkgName]["calls"]

	if annotated_category in aggregateDict["annotated_category"]:
		# print annotated_category
		for call in calls:
			if call in aggregateDict["annotated_category"][annotated_category]:
				aggregateDict["annotated_category"][annotated_category][call] += masterDict[appPkgName]["calls"][call]
			else:
				aggregateDict["annotated_category"][annotated_category][call] = masterDict[appPkgName]["calls"][call]
	else:
		# print annotated_category
		aggregateDict["annotated_category"][annotated_category] = masterDict[appPkgName]["calls"]

	if google_play_category in aggregateDict["google_play_category"]:
		# print google_play_category
		for call in calls:
			if call in aggregateDict["google_play_category"][google_play_category]:
				aggregateDict["google_play_category"][google_play_category][call] += masterDict[appPkgName]["calls"][call]
			else:
				aggregateDict["google_play_category"][google_play_category][call] = masterDict[appPkgName]["calls"][call]
	else:
		# print google_play_category
		aggregateDict["google_play_category"][google_play_category] = masterDict[appPkgName]["calls"]

	return aggregateDict

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python processFileSyscallSequences.py\n')
		sys.exit(1)

	startTime = time.time()

	jsonDict = json.loads(open("toprocess.json",'r').read())
	categoryDict = json.loads(open("category.json",'r').read())

	count = 0
	for appPkgName in jsonDict["packages"]:
		count += 1
		annotated_category = categoryDict[appPkgName]["annotated_category"]
		google_play_category = categoryDict[appPkgName]["google_play_category"]
		print "Doing app number: "+str(count)+" named: "+appPkgName
		doTask(appPkgName,annotated_category,google_play_category)
	
	print "Done with one part"

	sys.exit(1)

	aggregateDict = {}
	aggregateDict["annotated_category"] = {}
	aggregateDict["google_play_category"] = {}

	jsonPath = os.getcwd()
	# "D:\AndroidAnalytics\code\src\org\ebiquity\data\systemCallAnalysis"
	masterJsonFile = os.path.join(jsonPath,"masterJsonOutputFileSequences.json")
	masterDict = json.loads(open(masterJsonFile,'r').read())

	for appPkgName in jsonDict["packages"]:
		aggregateDict = getAggregateInfo(appPkgName,aggregateDict,masterDict)

	open("aggregateResultsSequences.json","w").write(json.dumps(aggregateDict,indent=4,sort_keys=True))

	executionTime = str((time.time()-startTime)*1000)
	logging.debug('Execution time was: '+executionTime+' ms')

if __name__ == "__main__":
	sys.exit(main(sys.argv))