'''
Created on July 1, 2016
@author: Prajit Kumar Das
Usage: python tfidf.py tfidf
'''
from sklearn.feature_extraction.text import TfidfTransformer
import numpy as np
import math
import json

def computeTFIDFWeights(termDocMatrix):
	tfIDFDict = {}
	for appRun in termDocMatrix:
		tfVector = []
		for syscallFreq in termDocMatrix[appRun][2]:
			if syscallFreq > 0:
				tfVector.append(math.log(1+syscallFreq, 2.71828))
			else:
				tfVector.append(0)
		tfIDFDict[appRun] = tfVector

	frequencyMatrix = []
	for appRun in termDocMatrix:
		frequencyMatrix.append(termDocMatrix[appRun][2])

	syscallIDFVector = []
	for column in zip(*frequencyMatrix):
		syscallIDFVector.append(math.log((float(len(termDocMatrix.keys()))/np.count_nonzero(np.array(column))), 2.71828))

	for appRun in termDocMatrix:
		termDocMatrix[appRun].pop()
		tfIDFDict[appRun] = (np.ones(len(tfIDFDict[appRun])) * tfIDFDict[appRun] * syscallIDFVector).tolist()
		termDocMatrix[appRun].append(tfIDFDict[appRun])

	# from pprint import pprint
	# pprint(termDocMatrix)
	#
	# transformer = TfidfTransformer()
	# tfidf = transformer.fit_transform(frequencyMatrix)
	# print tfidf.toarray()[0]
	# print transformer.idf_

	return termDocMatrix

def normalizeTFIDFWeights(termDocMatrix):
	newTermDocMatrix = {}

	maxWeight = 0.0
	minWeight = 0.0
	
	for appRun in termDocMatrix:
		for syscallFreq in termDocMatrix[appRun][2]:
			if syscallFreq > maxWeight:
				maxWeight = syscallFreq
			if syscallFreq < minWeight
				minWeight = syscallFreq

	print "max weight: "+str(maxWeight)+"min weight: "+str(minWeight)
	for appRun in termDocMatrix:
		item0 = termDocMatrix[appRun][0]
		item1 = termDocMatrix[appRun][1]
		item2 = []
		for syscallFreq in termDocMatrix[appRun][2]:
			print "Fix this"

	return termDocMatrix