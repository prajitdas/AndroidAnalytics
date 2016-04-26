#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on April 26, 2016
@author: Prajit Kumar Das

Usage: python processFile.py\n

Process files for feature generation in syscall analysis.
'''
import time
import sys
import os
import fnmatch as fm
from collections import OrderedDict as od
import json

def processFile(filePath):
	syscallDict = {}
	with open(filePath, 'r') as fp:
		for line in fp:
			syscall = line.split('(')[0].strip()
			if syscall in syscallDict:
				syscallDict[syscall] += 1
			else:
				syscallDict[syscall] = 1
	# for i, (k,v) in enumerate(od(sorted(syscallDict.items(), key=lambda k:k[1], reverse=True)).iteritems()):
	# 	print k,v
	return syscallDict

def extractFeatures(root,appPkgName,masterJsonFile):
	appOutputFolder = os.path.join(root,appPkgName)
	syscallDict = {}
	for file in os.listdir(appOutputFolder):
		if not fm.fnmatch(file, '*monkey.out'):
			syscallDict = processFile(os.path.join(appOutputFolder,file))
	try:
		jsonDict = json.loads(open(masterJsonFile).read())
	except:
		jsonDict = {}
	jsonDict[appPkgName] = syscallDict
	open(masterJsonFile,"w").write(json.dumps(jsonDict))

def doTask():
	masterJsonFile = "/Users/prajit/Work/AndroidAnalytics/code/src/org/ebiquity/data/systemCallAnalysis/masterJsonOutputFile.json"
	outDir = "/Users/prajit/Work/AndroidAnalytics/code/src/org/ebiquity/data/systemCallAnalysis/out"
	appPkgName = "com.rvappstudios.flashlight"
	extractFeatures(outDir,appPkgName,masterJsonFile)

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python processFile.py\n')
		sys.exit(1)

	startTime = time.time()
	doTask()
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	sys.exit(main(sys.argv))