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
logging.basicConfig(filename='syscall.log',level=logging.DEBUG)

def isPathExists(path):
	if os.path.exists(path):
		return True
	return False

def processFileGetFunctionNames(filePath):
	syscallDict = {}
	with open(filePath,'r') as fp:
		for line in fp:
			# This is where we are extracting the actual features from the out files
			syscall = line.split('(')[0].strip()
			if syscall in syscallDict:
				syscallDict[syscall] += 1
			else:
				syscallDict[syscall] = 1
	# for i,(k,v) in enumerate(od(sorted(syscallDict.items(),key=lambda k:k[1],reverse=True)).iteritems()):
	# 	print k,v
	return syscallDict

def storeFeaturesInJsonFile(jsonPath,syscallDict,appPkgName):
	masterJsonFile = os.path.join(jsonPath,"masterJsonOutputFile.json")
	if isPathExists(masterJsonFile):
		ticks = time.time()
		uniformString = str(ticks).replace(".","")
		masterJsonFileBkp = "masterJsonOutputFileBkp"+uniformString+".json"
		copyfile(masterJsonFile, masterJsonFileBkp)
	try:
		jsonDict = json.loads(open(masterJsonFile).read())
	except:
		jsonDict = {}
	if len(jsonDict[appPkgName]) < len(syscallDict):
		jsonDict[appPkgName] = syscallDict
		open(masterJsonFile,"w").write(json.dumps(jsonDict,indent=4,sort_keys=True))

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