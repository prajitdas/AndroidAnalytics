'''
Created on June 27, 2016
@author: Prajit Kumar Das

Usage: python initClassification.py username api_key jsonPath
'''
import sys
import time
import runClassification as classify
import PathDetails as pd
import json
import getSyscallDataJson as gs

def getOutputFile():
	ticks = time.time()
	uniformString = str(ticks).replace(".","")

	outputPredictedClassFile = pd.getPath()+"outputPredictedClasses"+uniformString+".json.gz"
	text_file = open(outputPredictedClassFile, "w")
	text_file.write("")
	text_file.close()
	
	return outputPredictedClassFile

#Initiate the clustering process
def initClassification(masterJsonFile, labels, features):
	# Things have been initiated, now to run classification
	# classify.runClassification(getOutputFile(), gs.getSyscallDataJson(masterJsonFile))
	classify.runClassification(json.loads(open(masterJsonFile).read()), labels, features)

def main(argv):
	if len(sys.argv) != 4:
		sys.stderr.write('Usage: python initClassification.py masterJsonFile classLabels featureType')
		sys.exit(1)

	masterJsonFile = sys.argv[1]
	labels = sys.argv[2]
	features = sys.argv[3]

	startTime = time.time()
	#Initiate the clustering process
	initClassification(masterJsonFile, labels, features)
	executionTime = str((time.time()-startTime)*1000)
	print 'Execution time was: '+executionTime+' ms'

if __name__ == "__main__":
	sys.exit(main(sys.argv))
