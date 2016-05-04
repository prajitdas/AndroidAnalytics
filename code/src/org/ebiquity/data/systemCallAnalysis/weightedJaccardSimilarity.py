'''
Created on April 27, 2016
@author: Prajit Kumar Das
Usage: python weightedJaccardSimilarity.py
'''
import numpy as np
import logging
logging.basicConfig(filename='syscall.log',level=logging.DEBUG)

def jaccardSimOperation(app1Syscalls,app2Syscalls):
	return float(len(app1Syscalls.intersection(app2Syscalls)))/float(len(app1Syscalls.union(app2Syscalls)))

def getAllSyscallsVector(jsonDict):
	allSyscallsVector = []
	for app in jsonDict:
		for call in jsonDict[app]:
			allSyscallsVector.append(call)

	allSyscallsVector = list(set(allSyscallsVector))
	return allSyscallsVector.sort()

def computeJaccardMatrix(jsonDict):
	logging.debug('Inside computeJaccardMatrix')
	
	allSyscallsVector = getAllSyscallsVector(jsonDict)
	numberOfApps = len(jsonDict.keys())
	appVector = jsonDict.keys()

	# Creates a list containing 5 lists initialized to 0
	#appMatrix = [[0 for x in range(numberOfApps)] for x in range(numberOfApps)]
	appMatrix = np.zeros((numberOfApps, numberOfApps))
	
	# reducing computation by half by replicating the upper half of the matrix
	counter = 0
	for i in range(numberOfApps):
		for j in range(i, numberOfApps):
			score = 0.0
			if i != j:
				score = jaccardSimOperation(set(jsonDict[appVector[i]].keys()),set(jsonDict[appVector[j]].keys()))
				appMatrix[i,j] = score
				appMatrix[j,i] = score
				counter += 1
				if counter % 100000 == 0:
					logging.debug('Computed computeJaccardSim for loops: '+counter)
	logging.debug('computeJaccardMatrix complete')
	return appMatrix, appVector
