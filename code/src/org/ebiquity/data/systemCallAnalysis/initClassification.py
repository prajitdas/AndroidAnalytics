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

def preProcess():
	ticks = time.time()
	uniformString = str(ticks).replace(".","")

	predictedClassFile = pd.getPath()+"predictedClasses"+uniformString+".json.gz"
	text_file = open(predictedClassFile, "w")
	text_file.write("")
	text_file.close()
	
	return predictedClassFile

#Initiate the clustering process
def initClassification(masterJsonFile, ngram, labels, features):
	# Things have been initiated, now to run classification
	# classify.runClassification(preProcess(), gs.getSyscallDataJson(masterJsonFile))
	classify.runClassification(preProcess(), json.loads(open(masterJsonFile).read()), ngram, labels, features)

def main(argv):
	if len(sys.argv) != 4:
		sys.stderr.write('Usage: python initClassification.py masterJsonFile ngram classLabels featureType')
		sys.exit(1)

	masterJsonFile = sys.argv[1]
	ngram = sys.argv[2]
	labels = sys.argv[3]
	features = sys.argv[4]

	startTime = time.time()
	#Initiate the clustering process
	initClassification(masterJsonFile, ngram, labels, features)
	executionTime = str((time.time()-startTime)*1000)
	print 'Execution time was: '+executionTime+' ms'

if __name__ == "__main__":
	sys.exit(main(sys.argv))
