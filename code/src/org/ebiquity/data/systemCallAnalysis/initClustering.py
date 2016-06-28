'''
Created on April 27, 2016
@author: Prajit Kumar Das

Usage: python initClustering.py username api_key jsonPath
'''
import sys
import time
import os
#import databaseHandler
import runClustering as runCl
import PathDetails as pd
import json
import logging
logging.basicConfig(filename='syscall.log',level=logging.DEBUG)
import getSyscallDataJson as gs

def preProcess():
	ticks = time.time()
	uniformString = str(ticks).replace(".","")
	appMatrixFile = pd.getPath()+"appMatrix"+uniformString+".txt"
	text_file = open(appMatrixFile, "w")
	text_file.write("")
	text_file.close()
	
	predictedClustersFile = pd.getPath()+"predictedClusters"+uniformString+".json.gz"
	text_file = open(predictedClustersFile, "w")
	text_file.write("")
	text_file.close()
	
	return appMatrixFile, predictedClustersFile

#Initiate the clustering process
def initClustering(username, api_key, jsonPath, startingNumberOfClusters, endingNumberOfClusters, clusterLoopStepSize, reducedDimensions):
	appMatrixFile, predictedClustersFile = preProcess()

	# DONE!!! # TODO remove these two line later when you fix the problem with data collection
	# del jsonDict['com.google.android.contacts']
	# del jsonDict['com.motorola.omni']
	# Things have been initiated, now to run clustering
	runCl.runClustering(username, api_key, appMatrixFile, predictedClustersFile, gs.getSyscallDataJson(jsonPath), startingNumberOfClusters, endingNumberOfClusters, clusterLoopStepSize, reducedDimensions)

def main(argv):
	if len(sys.argv) != 8:
		sys.stderr.write('Usage: python initClustering.py username api_key jsonPath startingNumberOfClusters endingNumberOfClusters clusterLoopStepSize reducedDimensions')
		sys.exit(1)

	username = sys.argv[1]
	api_key = sys.argv[2]
	jsonPath = sys.argv[3]
	startingNumberOfClusters = sys.argv[4]
	endingNumberOfClusters = sys.argv[5]
	clusterLoopStepSize = sys.argv[6]
	reducedDimensions = sys.argv[7]

	print type(startingNumberOfClusters)
	print type(endingNumberOfClusters)
	print type(clusterLoopStepSize)
	print type(reducedDimensions)

	startTime = time.time()
	#Initiate the clustering process
	initClustering(username, api_key, jsonPath, startingNumberOfClusters, endingNumberOfClusters, clusterLoopStepSize, reducedDimensions)
	executionTime = str((time.time()-startTime)*1000)
	logging.debug('Execution time was: '+executionTime+' ms')

if __name__ == "__main__":
	sys.exit(main(sys.argv))
