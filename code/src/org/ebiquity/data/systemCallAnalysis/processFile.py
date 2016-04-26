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
import runClustering as rc

def processFile(file,appPkgName):
	print "Processing file: "+file

def extractFeatures(root,appPkgName):
	appOutputFolder = os.path.join(root,appPkgName)
	for file in appOutputFolder:
		if not fm.fnmatch(file, '*monkey*'):
			processFile(file,appPkgName)

def runClustering():
	print "In runClustering method"
	rc.runClustering()

def doTask():
	outDir = "/Users/prajit/Work/AndroidAnalytics/code/src/org/ebiquity/data/systemCallAnalysis/out"
	appPkgName = "com.rvappstudios.flashlight"

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