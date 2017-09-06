#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on August 31, 2015 (IT'S MY BIRTHDAY!!! :P)
@author: Prajit
Usage: python decodeResults.py resultsFile
'''
import NumpyEncoder
import json
import sys
import time
import numpy as np

def decodeDataFromFile(resultsFile):
	with open(resultsFile) as f:
		evaluatedClusterResultsDict = json.loads(f.read())
	
	print type(evaluatedClusterResultsDict)
	#getClusterInfo(evaluatedClusterResultsDict)

def getClusterInfo(evaluatedClusterResultsDict):
	clusterCountList = []
	#clusterCentroids = np.array()
	
	for clusterCount, loopInfo in evaluatedClusterResultsDict.iteritems():
		if clusterCount != 'appVectors':
			clusterCountList.append(int(clusterCount.replace("Loop","")))
			clusterInfo = loopInfo[3]
			if "centroids" in clusterInfo:
				print NumpyEncoder.decodeNDArray(clusterInfo["centroids"])

def main(argv):
	if len(sys.argv) != 2:
		sys.stderr.write('Usage: python decodeResults.py resultsFile\n')
		sys.exit(1)

	resultsFile = sys.argv[1]
	
	startTime = time.time()
	#Initiate the deocde process
	decodeDataFromFile(resultsFile)
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	main(sys.argv)