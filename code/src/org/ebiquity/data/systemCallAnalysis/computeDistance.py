'''
Created on April 27, 2015
Modified on June 7, 2016
@author: Prajit Kumar Das
Usage: python computeDistance.py
'''
import numpy as np
import logging
import sys
import time
import re
import json
import tfidf
logging.basicConfig(filename='computeDistance.log',level=logging.DEBUG)
from scipy.spatial import distance as spDist

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

def computeDist(app1SyscallsVector,app2SyscallsVector,metric):
	if metric == 'jaccard':
		distance = jaccard(app1SyscallsVector,app2SyscallsVector)
	elif metric == 'cosine':
		distance = cosine(app1SyscallsVector,app2SyscallsVector)
	elif metric == 'braycurtis':
		distance = cosine(app1SyscallsVector,app2SyscallsVector)
	elif metric == 'canberra':
		distance = cosine(app1SyscallsVector,app2SyscallsVector)
	elif metric == 'chebyshev':
		distance = cosine(app1SyscallsVector,app2SyscallsVector)
	elif metric == 'cityblock':
		distance = cosine(app1SyscallsVector,app2SyscallsVector)
	elif metric == 'correlation':
		distance = cosine(app1SyscallsVector,app2SyscallsVector)
	elif metric == 'dice':
		distance = cosine(app1SyscallsVector,app2SyscallsVector)
	elif metric == 'euclidean':
		distance = cosine(app1SyscallsVector,app2SyscallsVector)
	elif metric == 'hamming':
		distance = cosine(app1SyscallsVector,app2SyscallsVector)
	elif metric == 'kulsinski':
		distance = cosine(app1SyscallsVector,app2SyscallsVector)
	elif metric == 'matching':
		distance = cosine(app1SyscallsVector,app2SyscallsVector)
	elif metric == 'rogerstanimoto':
		distance = cosine(app1SyscallsVector,app2SyscallsVector)
	elif metric == 'russellrao':
		distance = cosine(app1SyscallsVector,app2SyscallsVector)
	elif metric == 'sokalmichener':
		distance = cosine(app1SyscallsVector,app2SyscallsVector)
	elif metric == 'sokalsneath':
		distance = cosine(app1SyscallsVector,app2SyscallsVector)
	elif metric == 'sqeuclidean':
		distance = cosine(app1SyscallsVector,app2SyscallsVector)
	elif metric == 'yule':
		distance = cosine(app1SyscallsVector,app2SyscallsVector)
	elif metric == 'hasNumbers':
		distance = cosine(app1SyscallsVector,app2SyscallsVector)
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
		for run in jsonDict[app]:
			for call in jsonDict[app][run]:
				sanitizedCall = sanitizeCall(call)
				if sanitizedCall != None:
					allSyscallsVector.append(sanitizedCall)

	allSyscallsVector = list(set(allSyscallsVector))
	# print sorted(allSyscallsVector)
	return sorted(allSyscallsVector)

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

#Form a weight vector using TF-IDF weights for system calls made by apps
def updateTermDcoMatrixWithTfIdfValues(termDocMatrix):
	# print termDocMatrix
	# frequencyMatrix = []
	# for app in termDocMatrix:
	# 	frequencyVector = []
	# 	frequencyVector.append(app)
	# 	frequencyVector.append(termDocMatrix[app][2])
	# 	frequencyMatrix.append(frequencyVector)

	termDocMatrix = tfidf.computeTFIDFWeights(termDocMatrix)

	# for frequencyVector in frequencyMatrix:
	# 	tfIdfWeightVectors = frequencyVector[1:]
	# 	appFeatures = []
	#
	# 	termDocMatrix[frequencyVector[0]].pop()
	# 	annotated_category = termDocMatrix[frequencyVector[0]].pop()
	# 	google_play_category = termDocMatrix[frequencyVector[0]].pop()
	#
	# 	appFeatures.append(google_play_category)
	# 	appFeatures.append(annotated_category)
	# 	appFeatures.append(tfIdfWeightVectors[0])
	#
	# 	termDocMatrix[frequencyVector[0]] = appFeatures
	# print termDocMatrix
	return termDocMatrix

def runAgain(jsonDict):
	# Removing all apps which didn't have any calls associated.
	# Maybe the call to these apps didn't work. We have to try them again, later on.
	cleanJsonDict = {}
	# This code is to extract which app's experiments need to be executed again
	runAgainAppsList = []
	for key in jsonDict.iterkeys():
		if jsonDict[key]:
			cleanJsonDict[key] = jsonDict[key]
		# else:
		# 	runAgainAppsList.append(key)

	print "Testing", len(cleanJsonDict), "apps"
	# runAgainAppsDict = {}
	# runAgainAppsDict['apps'] = runAgainAppsList
	# json.dump(runAgainAppsDict, open('runagain.json', 'w'), sort_keys = True, indent = 4)
	return cleanJsonDict

def createTermDocMatrix(jsonDict,categoryDict,type):
	jsonDict = runAgain(jsonDict)
	allSyscallsVector = getAllSyscallsVector(jsonDict)
	numberOfApps = len(jsonDict.keys())
	appVector = jsonDict.keys()
	appRunVector = []
	termDocMatrix = {}
	if type == 'numoc':
		for app in appVector:
			for run in jsonDict[app]:
				appRun = app+'.'+run
				appFeatures = []
				appFeatures.append(categoryDict[app]['google_play_category'])
				appFeatures.append(categoryDict[app]['annotated_category'])
				appFeatures.append(formVectorNumCalls(jsonDict[app][run],allSyscallsVector))
				termDocMatrix[appRun] = appFeatures
				appRunVector.append(appRun)
				# print app, termDocMatrix[appRun]
	elif type == 'justc':
		for app in appVector:
			for run in jsonDict[app]:
				appRun = app+'.'+run
				appFeatures = []
				appFeatures.append(categoryDict[app]['google_play_category'])
				appFeatures.append(categoryDict[app]['annotated_category'])
				appFeatures.append(formVectorJustCalls(jsonDict[app][run],allSyscallsVector))
				termDocMatrix[appRun] = appFeatures
				appRunVector.append(appRun)
	elif type == 'tfidf':
		for app in appVector:
			for run in jsonDict[app]:
				print jsonDict[app][run]
				appRun = app+'.'+run
				appFeatures = []
				appFeatures.append(categoryDict[app]['google_play_category'])
				appFeatures.append(categoryDict[app]['annotated_category'])
				appFeatures.append(formVectorNumCalls(jsonDict[app][run],allSyscallsVector))
				termDocMatrix[appRun] = appFeatures
				termDocMatrix = updateTermDcoMatrixWithTfIdfValues(termDocMatrix)
				appRunVector.append(appRun)
	else:
		logging.debug("Error in input. You didn't choose a known standard for term document matrix format.")
		print("Error in input. You didn't choose a known standard for term document matrix format.")
		raise BaseException("Error in input. You didn't choose a known standard for term document matrix format.")
	toWriteTermDocMat = {}
	toWriteTermDocMat = termDocMatrix
	toWriteTermDocMat['allSystemCalls'] = allSyscallsVector
	json.dump(toWriteTermDocMat, open('termDocMatrix.json', 'w'), sort_keys = True, indent = 4)
	return numberOfApps, termDocMatrix, appRunVector, allSyscallsVector

def computeDistance(jsonDict,metric,type):
	logging.debug('Inside computeDistance')
	categoryDict = json.loads(open('category.json', 'r').read())
	# numoc: use frequency of a call for distance computation
	# justc: use just a call for distance computation
	# tfidf: use tf-idf weights of calls for distance computation
	numberOfApps, termDocMatrix, appRunVector, allSyscallsVector = createTermDocMatrix(jsonDict,categoryDict,type)

	# Creates a list containing 5 lists initialized to 0
	#appToAppDistMatrix = [[0 for x in range(numberOfApps)] for x in range(numberOfApps)]
	appToAppDistMatrix = np.zeros((numberOfApps, numberOfApps))
	
	# reducing computation by half by replicating the upper half of the matrix
	counter = 0
	for i in range(numberOfApps):
		for j in range(i, numberOfApps):
			score = 0.0
			if i != j:
				score = computeDist(termDocMatrix[appRunVector[i]][2],termDocMatrix[appRunVector[j]][2],metric)
				# score = computeDist(formVectorNumCalls(jsonDict[appVector[i]], allSyscallsVector),formVectorNumCalls(jsonDict[appVector[j]], allSyscallsVector),metric)
				# score = computeDist(formVectorJustCalls(jsonDict[appVector[i]], allSyscallsVector),formVectorJustCalls(jsonDict[appVector[j]], allSyscallsVector),metric)
				appToAppDistMatrix[i,j] = score
				appToAppDistMatrix[j,i] = score
				counter += 1
				if counter % 100000 == 0:
					logging.debug('Computed computeJaccardSim for loops: '+str(counter))
	
	logging.debug('computeJaccardMatrix complete')
	return appToAppDistMatrix, appRunVector

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python computeDistance.py\n')
		sys.exit(1)

	jsonDict = json.loads(open('masterJsonOutputFile82Good.json','r').read())
	# jsonDict = json.loads(open('masterJsonOutputFile.json','r').read())

	startTime = time.time()
	# numberOfApps, termDocMatrix, appVector = createTermDocMatrix(jsonDict,'numoc')
	# print termDocMatrix, appVector
	appToAppDistMatrix, appVector = computeDistance(jsonDict,'jaccard','tfidf')
	# print appToAppDistMatrix, appVector
	executionTime = str((time.time()-startTime)*1000)
	logging.debug('Execution time was: '+executionTime+' ms')

if __name__ == "__main__":
	sys.exit(main(sys.argv))