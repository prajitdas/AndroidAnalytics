'''
Created on June 27, 2016
@author: Prajit Kumar Das

Usage: python initClassification.py username api_key jsonPath
'''
import sys
import time
import os
#import databaseHandler
import runClassification as classify
import PathDetails as pd
import json
import logging
logging.basicConfig(filename='syscall.log',level=logging.DEBUG)

def getSyscallDataInput(jsonPath):
	masterJsonFile = os.path.join(jsonPath,"masterJsonOutputFile.json")
	try:
		return json.loads(open(masterJsonFile).read())
	except IOError as e:
		logging.debug('I/O error({0}): {1}'.format(e.errno,e.strerror))
	except ValueError:
		logging.debug('JSON decoding errors')
	except:
		logging.debug('Unexpected error')

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
def initClassification(username, api_key, jsonPath):
	appMatrixFile, predictedClustersFile = preProcess()
	jsonDict = getSyscallDataInput(jsonPath)

	# DONE!!! # TODO remove these two line later when you fix the problem with data collection
	# del jsonDict['com.google.android.contacts']
	# del jsonDict['com.motorola.omni']
	# Things have been initiated, now to run clustering
	classify.runClassification(username, api_key, appMatrixFile, predictedClustersFile, jsonDict)

def main(argv):
	if len(sys.argv) != 4:
		sys.stderr.write('Usage: python initClassification.py username api_key jsonPath')
		sys.exit(1)

	username = sys.argv[1]
	api_key = sys.argv[2]
	jsonPath = sys.argv[3]

	startTime = time.time()
	#Initiate the clustering process
	initClassification(username, api_key, jsonPath)
	executionTime = str((time.time()-startTime)*1000)
	logging.debug('Execution time was: '+executionTime+' ms')

if __name__ == "__main__":
	sys.exit(main(sys.argv))
