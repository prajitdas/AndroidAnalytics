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
import matplotlib.pyplot as plt
logging.basicConfig(filename='simpleSVDOnSyscalls.log',level=logging.DEBUG)

def getMatrixForComputation(termDocMatrix,appRunVector):
	arrayOfFreqArray = []
	appList = []
	for appRun in appRunVector:
		appName = appRun.split('.run')[0]
		appList.append(appName)
		arrayOfFreqArray.append(termDocMatrix[appRun][2])
	X = np.array(arrayOfFreqArray)
	return X, appList

def doCluster(termDocMatrix, appRunVector):
	X, appList = getMatrixForComputation(termDocMatrix, appRunVector)

def doClassify(termDocMatrix, appRunVector):
	X, appList = getMatrixForComputation(termDocMatrix, appRunVector)

def doSVD(termDocMatrix, appRunVector):
	X, appList = getMatrixForComputation(termDocMatrix, appRunVector)

	la = np.linalg
	U, s, Vh = la.svd(X, full_matrices=False)
	assert np.allclose(X, np.dot(U, np.dot(np.diag(s), Vh)))
	s[2:] = 0
	new_a = np.dot(U, np.dot(np.diag(s), Vh))
	# print(new_a)
	plt.plot(new_a)
	plt.show()

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python simpleSVDOnSyscalls.py\n')
		sys.exit(1)

	categoryDict = json.loads(open('category.json','r').read())
	jsonDict = json.loads(open('masterJsonOutputFile82Good.json','r').read())

	startTime = time.time()
	numberOfApps, termDocMatrix, appRunVector, allSyscallsVector = cd.createTermDocMatrix(jsonDict,categoryDict,'tfidf')
	doSVD(termDocMatrix,appRunVector)
	doCluster(termDocMatrix,appRunVector)
	doClassify(termDocMatrix,appRunVector)
	executionTime = str((time.time()-startTime)*1000)
	logging.debug('Execution time was: '+executionTime+' ms')

if __name__ == "__main__":
	sys.exit(main(sys.argv))
