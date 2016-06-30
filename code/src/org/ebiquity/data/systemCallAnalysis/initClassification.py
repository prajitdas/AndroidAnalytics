'''
Created on June 27, 2016
@author: Prajit Kumar Das

Usage: python initClassification.py username api_key jsonPath
'''
import sys
import time
import os
import runClassification as classify
import PathDetails as pd
import json
import logging
logging.basicConfig(filename='syscall.log',level=logging.DEBUG)
import getSyscallDataJson as gs

def preProcess():
	ticks = time.time()
	uniformString = str(ticks).replace(".","")

	predictedClassFile = pd.getPath()+"predictedClasses"+uniformString+".json.gz"
	text_file = open(predictedClassFile, "w")
	text_file.write("")
	text_file.close()
	
	return predictedClassFile

#Initiate the clustering process
def initClassification(jsonPath):
	# Things have been initiated, now to run classification
	classify.runClassification(preProcess(), gs.getSyscallDataJson(jsonPath))

def main(argv):
	if len(sys.argv) != 2:
		sys.stderr.write('Usage: python initClassification.py jsonPath')
		sys.exit(1)

	jsonPath = sys.argv[1]

	startTime = time.time()
	#Initiate the clustering process
	initClassification(jsonPath)
	executionTime = str((time.time()-startTime)*1000)
	logging.debug('Execution time was: '+executionTime+' ms')

if __name__ == "__main__":
	sys.exit(main(sys.argv))
