'''
Created on July 4,2016
@author: Prajit Kumar Das

Usage: python simpleSVDOnSyscalls.py\n

SVD on syscall output
'''
import time
import sys
import computeDistance as cd
import logging
import json
import numpy as np
import matplotlib as plt
logging.basicConfig(filename='simpleSVDOnSyscalls.log',level=logging.DEBUG)

def doSVD(termDocMatrix,appRunVector):
	la = np.linalg
	arrayOfFreqArray = []
	appList = []
	for appRun in appRunVector:
		appName = appRun.split('.run')[0]
		appList.append(appName)
		arrayOfFreqArray.append(termDocMatrix[appRun][2])
	X = np.array(arrayOfFreqArray)
	U, s, Vh = la.svd(X, full_matrices=False)

	print U, s, Vh

	for i in xrange(len(appList)):
		plt.text(U[i,0], U[i,1], appList[i])

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python simpleSVDOnSyscalls.py\n')
		sys.exit(1)

	categoryDict = json.loads(open('category.json','r').read())
	jsonDict = json.loads(open('masterJsonOutputFile82Good.json','r').read())

	startTime = time.time()
	numberOfApps, termDocMatrix, appRunVector, allSyscallsVector = cd.createTermDocMatrix(jsonDict,categoryDict,'tfidf')
	doSVD(termDocMatrix, appRunVector)
	executionTime = str((time.time()-startTime)*1000)
	logging.debug('Execution time was: '+executionTime+' ms')

if __name__ == "__main__":
	sys.exit(main(sys.argv))
