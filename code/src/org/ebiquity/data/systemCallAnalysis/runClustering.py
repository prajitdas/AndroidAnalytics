#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on April 26,2016
@author: Prajit Kumar Das

Usage: python runClustering.py\n

Run clustering.
'''
import time
import sys
import os
import json
import numpy as np

def getClusteringDataInput(jsonPath):
	masterJsonFile = os.path.join(jsonPath,"masterJsonOutputFile.json")
	print masterJsonFile
	try:
		return json.loads(open(masterJsonFile).read())
	except IOError as e:
		print "I/O error({0}): {1}".format(e.errno,e.strerror)
	except ValueError:
		print "JSON decoding errors"
	except:
		print "Unexpected error"

def simpleDistanceMetric(app1Calls,app2Calls):
	s1 = set(app1Calls)
	s2 = set(app2Calls)
	return len(s1.union(s2)) - len(s1.intersection(s2))

def runClusteringSimpleDistanceMetric(jsonPath):
	jsonDict = getClusteringDataInput(jsonPath)
	numberOfApps = len(jsonDict.keys())
	appVector = jsonDict.keys()

	appMatrix = np.zeros((numberOfApps,numberOfApps))

	for i in range(numberOfApps):
		for j in range(i,numberOfApps):
			if i != j:
				appMatrix[i,j] = simpleDistanceMetric(jsonDict[appVector[i]],jsonDict[appVector[j]])
			print str(appMatrix[i,j])+","
	
def doTask():
	runClusteringSimpleDistanceMetric(os.getcwd())

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python runClustering.py\n')
		sys.exit(1)

	startTime = time.time()
	doTask()
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	sys.exit(main(sys.argv))