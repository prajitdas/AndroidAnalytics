from sklearn.feature_extraction.text import TfidfTransformer
import numpy as np
import math
import json

def computeTFIDFWeights(termDocMatrix):
	# sumFreqDict = {}
	# for app in termDocMatrix:
	# 	sumFreqDict[app] = float(sum(termDocMatrix[app][2]))
	tfIDFDict = {}
	for app in termDocMatrix:
		tfVector = []
		for syscallFreq in termDocMatrix[app][2]:
			if syscallFreq > 0:
				tfVector.append(math.log(1+syscallFreq, 2.71828))
			else:
				tfVector.append(0)
		tfIDFDict[app] = tfVector

	frequencyMatrix = []
	for app in termDocMatrix:
		frequencyMatrix.append(termDocMatrix[app][2])

	syscallIDFVector = []
	for column in zip(*frequencyMatrix):
		syscallIDFVector.append(math.log((82.0/np.count_nonzero(np.array(column))), 2.71828))

	for app in termDocMatrix:
		termDocMatrix[app].pop()
		tfIDFDict[app] = (np.ones(len(tfIDFDict[app])) * tfIDFDict[app] * syscallIDFVector).tolist()
		termDocMatrix[app].append(tfIDFDict[app])

	# from pprint import pprint
	# pprint(termDocMatrix)
	#
	# transformer = TfidfTransformer()
	# tfidf = transformer.fit_transform(frequencyMatrix)
	# print tfidf.toarray()[0]
	# print transformer.idf_

	return termDocMatrix