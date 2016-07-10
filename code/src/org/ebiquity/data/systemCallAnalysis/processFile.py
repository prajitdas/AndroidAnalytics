'''
Created on April 26,2016
@author: Prajit Kumar Das

Usage: python processFile.py appPkgName\n

Process files for feature generation in syscall analysis.
'''
import time
import sys
import os
import fnmatch as fm
from collections import OrderedDict as od
import json
import logging
from shutil import copyfile
import re
logging.basicConfig(filename='processFile.log',level=logging.DEBUG)

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

def processFileGetFunctionNames(filePath):
	# syscallDict = json.loads(open('syscalls.json', 'r').read())
	syscallDict = {}
	with open(filePath,'r') as fp:
		for line in fp:
			# This is where we are extracting the actual features from the out files
			# syscall = sanitizeCall(line)
			# We started getting an error due to this. So changing back to original code.
			if line.startswith('+++') or line.startswith('---') or line.startswith('System'):
				continue
			else:
				syscall = line.split('(')[0].strip()
				if syscall in syscallDict:
					syscallDict[syscall] += 1
				else:
					syscallDict[syscall] = 1
					# print 'something went seriously wrong for',syscall
					# logging.debug('something went seriously wrong for'+syscall)
	# for i,(k,v) in enumerate(od(sorted(syscallDict.items(),key=lambda k:k[1],reverse=True)).iteritems()):
	# 	print k,v
	runWrapperDict = {}
	print filePath
	runWrapperDict[filePath.split('.run.')[1]] = syscallDict
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
	masterJsonFile = os.path.join(jsonPath,"masterJsonOutputFile.json")
	if isPathExists(masterJsonFile):
		ticks = time.time()
		uniformString = str(ticks).replace(".","")
	masterJsonFileBkp = "masterJsonOutputFileBkp"+uniformString+".json"
	copyfile(masterJsonFile, masterJsonFileBkp)
	jsonDict = {}
	try:
		jsonDict = json.loads(open(masterJsonFile).read())
	except:
		print "json was empty"
	if appPkgName in jsonDict:
		print "Came into is in file"#, jsonDict[appPkgName]
		if hasMoreCallsSyscallDict(jsonDict[appPkgName],syscallDict) == True:
			print "Came into is in file"
			jsonDict[appPkgName] = syscallDict
			open(masterJsonFile,"w").write(json.dumps(jsonDict,indent=4,sort_keys=True))
	else:
		print "Came into is not in file"
		jsonDict[appPkgName] = syscallDict
		open(masterJsonFile,"w").write(json.dumps(jsonDict,indent=4,sort_keys=True))
	# print jsonDict.keys()

def extractFeatures(jsonPath,root,appPkgName):
	appOutputFolder = os.path.join(root,appPkgName)
	syscallDict = {}
	for file in os.listdir(appOutputFolder):
		if not fm.fnmatch(file,'*monkey.out'):
			# First analysis is to get the function names
			syscallDict = processFileGetFunctionNames(os.path.join(appOutputFolder,file))
		storeFeaturesInJsonFile(jsonPath,syscallDict,appPkgName)

def doTask(appPkgName):
	# The following 2 lines are for testing purposes only
	jsonPath = "D:\AndroidAnalytics\code\src\org\ebiquity\data\systemCallAnalysis\\apps"
	outDir = "D:\AndroidAnalytics\code\src\org\ebiquity\data\systemCallAnalysis\\apps\out"
	extractFeatures(jsonPath,outDir,appPkgName)

def main(argv):
	if len(sys.argv) != 2:
		sys.stderr.write('Usage: python processFile.py appPkgName\n')
		sys.exit(1)
	appPkgName = sys.argv[1]
	doTask(appPkgName)

if __name__ == "__main__":
	sys.exit(main(sys.argv))