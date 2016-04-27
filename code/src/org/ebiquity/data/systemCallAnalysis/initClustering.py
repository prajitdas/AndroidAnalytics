'''
Created on April 27, 2016
@author: Prajit Kumar Das

Usage: python initClustering.py username api_key
'''
import sys
import time
import databaseHandler
import runClustering as runCl
import PathDetails as pd

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
def initClustering(username, api_key, appMatrixFile, predictedClustersFile):
	appMatrixFile, predictedClustersFile = preProcess()
	runCl.runClustering(username, api_key, appMatrixFile, predictedClustersFile)

def main(argv):
	if len(sys.argv) != 3:
		sys.stderr.write('Usage: python initClustering.py username api_key')
		sys.exit(1)

	username = sys.argv[1]
	api_key = sys.argv[2]

	appMatrixFile, predictedClustersFile = preProcess()
	startTime = time.time()
	#Initiate the clustering process
	initClustering(username, api_key, appMatrixFile, predictedClustersFile)
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	sys.exit(main(sys.argv))
