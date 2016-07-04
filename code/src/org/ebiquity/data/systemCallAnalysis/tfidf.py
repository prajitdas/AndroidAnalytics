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
	# sumFreqDict = {}
	# for appRun in termDocMatrix:
	# 	sumFreqDict[appRun] = float(sum(termDocMatrix[appRun][2]))
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