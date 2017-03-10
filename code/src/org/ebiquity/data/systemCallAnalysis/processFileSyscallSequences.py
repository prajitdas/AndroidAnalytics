'''
Created on March 9, 2017
@author: Prajit Kumar Das

Usage: python processFileSyscallSequences.py appPkgName\n

Process files for extracting all system calls to create bi-grams and tri-grams to do syscall analysis.
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
	if 'System ' in inputString:
		return None
	if ' ' in inputString:
		inputString = inputString.split(' ')[0]
	if re.match("^[a-zA-Z_]*$", inputString):
		return inputString
	return None

def processFileGetFunctionNames(appPkgName,filePath,annotated_category,google_play_category):
	runWrapperDict = {}
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
				syscalls.append(line.split('(')[0].strip())
	runWrapperDict["syscalls"] = syscalls
	runWrapperDict["annotated_category"] = annotated_category
	runWrapperDict["google_play_category"] = google_play_category
	return runWrapperDict

def storeFeaturesInJsonFile(jsonPath,syscallDict,appPkgName):
	masterJsonFile = os.path.join(jsonPath,appPkgName+".json")
	jsonDict = {}
	jsonDict[appPkgName] = syscallDict
	open(masterJsonFile,"w").write(json.dumps(jsonDict,indent=4,sort_keys=True))

def extractFeatures(jsonPath,root,appPkgName,annotated_category,google_play_category):
	appOutputFolder = os.path.join(root,appPkgName)
	syscallDict = {}
	for file in os.listdir(appOutputFolder):
		if not fm.fnmatch(file,'*monkey.out'):
			# First analysis is to get the function names
			syscallDict = processFileGetFunctionNames(appPkgName,os.path.join(appOutputFolder,file),annotated_category,google_play_category)
		storeFeaturesInJsonFile(jsonPath,syscallDict,appPkgName)

def doTask(appPkgName,annotated_category,google_play_category):
	jsonPath = os.path.join(os.getcwd(),"uni-bi-tri-seq-jsons")
	outDir = os.path.join(os.getcwd(),"out")
	extractFeatures(jsonPath,outDir,appPkgName,annotated_category,google_play_category)

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
	
	executionTime = str((time.time()-startTime)*1000)
	logging.debug('Execution time was: '+executionTime+' ms')

if __name__ == "__main__":
	sys.exit(main(sys.argv))