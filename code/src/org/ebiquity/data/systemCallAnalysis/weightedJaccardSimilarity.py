'''
Created on April 27, 2016
@author: Prajit Kumar Das
Usage: python weightedJaccardSimilarity.py
'''
import numpy as np
import logging
import sys
import re
import json
logging.basicConfig(filename='syscall.log',level=logging.DEBUG)
from scipy.spatial import distance as spDist

def computeDist(app1SyscallsVector,app2SyscallsVector):
	distance = jaccard(app1SyscallsVector,app2SyscallsVector)
	# Single method deciding which distance function will be used
	logging.debug('distance'+str(distance))
	# Verifying if the distance is not a valid finite number 
	# http://docs.scipy.org/doc/numpy-1.10.0/reference/generated/numpy.nan_to_num.html
	if not np.isfinite(distance):
		logging.debug('app1'+','.join(str(x) for x in app1SyscallsVector))
		logging.debug('app2'+','.join(str(x) for x in app2SyscallsVector))
		logging.debug('distance'+str(distance))
		distance = 0
	return distance

def braycurtis(app1SyscallsVector,app2SyscallsVector):
	return spDist.braycurtis(app1SyscallsVector,app2SyscallsVector)

def canberra(app1SyscallsVector,app2SyscallsVector):
	return spDist.canberra(app1SyscallsVector,app2SyscallsVector)

def chebyshev(app1SyscallsVector,app2SyscallsVector):
	return spDist.chebyshev(app1SyscallsVector,app2SyscallsVector)

def cityblock(app1SyscallsVector,app2SyscallsVector):
	return spDist.cityblock(app1SyscallsVector,app2SyscallsVector)

def correlation(app1SyscallsVector,app2SyscallsVector):
	return spDist.correlation(app1SyscallsVector,app2SyscallsVector)

def cosine(app1SyscallsVector,app2SyscallsVector):
	return spDist.cosine(app1SyscallsVector,app2SyscallsVector)

def dice(app1SyscallsVector,app2SyscallsVector):
	return spDist.dice(app1SyscallsVector,app2SyscallsVector)

def euclidean(app1SyscallsVector,app2SyscallsVector):
	return spDist.euclidean(app1SyscallsVector,app2SyscallsVector)

def hamming(app1SyscallsVector,app2SyscallsVector):
	return spDist.hamming(app1SyscallsVector,app2SyscallsVector)

def jaccard(app1SyscallsVector,app2SyscallsVector):
	return spDist.jaccard(app1SyscallsVector,app2SyscallsVector)

def kulsinski(app1SyscallsVector,app2SyscallsVector):
	return spDist.kulsinski(app1SyscallsVector,app2SyscallsVector)

def matching(app1SyscallsVector,app2SyscallsVector):
	return spDist.matching(app1SyscallsVector,app2SyscallsVector)

def rogerstanimoto(app1SyscallsVector,app2SyscallsVector):
	return spDist.rogerstanimoto(app1SyscallsVector,app2SyscallsVector)

def russellrao(app1SyscallsVector,app2SyscallsVector):
	return spDist.russellrao(app1SyscallsVector,app2SyscallsVector)

def sokalmichener(app1SyscallsVector,app2SyscallsVector):
	return spDist.sokalmichener(app1SyscallsVector,app2SyscallsVector)

def sokalsneath(app1SyscallsVector,app2SyscallsVector):
	return spDist.sokalsneath(app1SyscallsVector,app2SyscallsVector)

def sqeuclidean(app1SyscallsVector,app2SyscallsVector):
	return spDist.sqeuclidean(app1SyscallsVector,app2SyscallsVector)

def yule(app1SyscallsVector,app2SyscallsVector):
	return spDist.yule(app1SyscallsVector,app2SyscallsVector)

def hasNumbers(inputString):
	return any(char.isdigit() for char in inputString)

def sanitizeCall(inputString):
	# if '---' in inputString or '%' in inputString or  or hasNumbers(inputString):
	# 	return ''
	if ' ' in inputString:
		inputString = inputString.split(' ')[0]
	if re.match("^[a-zA-Z_]*$", inputString):
		return inputString
	return None

def getAllSyscallsVector(jsonDict):
	allSyscallsVector = []
	for app in jsonDict:
		for call in jsonDict[app]:
			sanitizedCall = sanitizeCall(call)
			if sanitizedCall != None:
				allSyscallsVector.append(sanitizedCall)

	allSyscallsVector = list(set(allSyscallsVector))
	# print sorted(allSyscallsVector)
	return sorted(allSyscallsVector)

#Form vector of number of times a particular system call has been made
def formVectorNumCalls(appSyscallDict, allSyscallsVector):
	appVector = range(len(allSyscallsVector))
	count = 0
	for syscall in allSyscallsVector:
		if syscall in appSyscallDict:
			appVector[count] = appSyscallDict[syscall]
		else:
			appVector[count] = 0
		count += 1

	# print appVector
	return appVector

#Form a binary value vector of system calls that has been made
def formVectorJustCalls(appSyscallDict, allSyscallsVector):
	appVector = range(len(allSyscallsVector))
	count = 0
	for syscall in allSyscallsVector:
		if syscall in appSyscallDict:
			appVector[count] = 1
		else:
			appVector[count] = 0
		count += 1

	# print appVector
	return appVector

def computeJaccardMatrix(jsonDict):
	logging.debug('Inside computeJaccardMatrix')

	# Removing all apps which didn't have any calls associated.
	# Maybe the call to these apps didn't work. We have to try them again, later on.
	cleanJsonDict = {}
	runAgainAppsList = []
	for key in jsonDict.iterkeys():
		if jsonDict[key]:
			cleanJsonDict[key] = jsonDict[key]
		else:
			runAgainAppsList.append(key)

	print "Testing", len(cleanJsonDict), "apps"
	runAgainAppsDict = {}
	runAgainAppsDict['apps'] = runAgainAppsList
	json.dump(runAgainAppsDict, open('runagain.json', 'w'), sort_keys = True, indent = 4)

	jsonDict = cleanJsonDict
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
				#score = computeDist(formVectorNumCalls(jsonDict[appVector[i]], allSyscallsVector),formVectorNumCalls(jsonDict[appVector[j]], allSyscallsVector))
				score = computeDist(formVectorJustCalls(jsonDict[appVector[i]], allSyscallsVector),formVectorJustCalls(jsonDict[appVector[j]], allSyscallsVector))
				appMatrix[i,j] = score
				appMatrix[j,i] = score
				counter += 1
				if counter % 100000 == 0:
					logging.debug('Computed computeJaccardSim for loops: '+str(counter))
	
	logging.debug('computeJaccardMatrix complete')
	return appMatrix, appVector
