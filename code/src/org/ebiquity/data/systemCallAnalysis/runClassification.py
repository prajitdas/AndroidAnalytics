'''
Created on June 28, 2016
@author: Prajit Kumar Das
Usage: python runClassification.py jsonDict
'''

# Start of code from: http://scikit-learn.org/stable/auto_examples/cluster/plot_kmeans_silhouette_analysis.html
#from sklearn.datasets import make_blobs
from sklearn.cluster import KMeans, SpectralClustering, DBSCAN
from sklearn.metrics import silhouette_score#, silhouette_samples
# from sklearn.metrics.pairwise import pairwise_distances
from sklearn.decomposition import PCA #,TruncatedSVD
# End of code from: http://scikit-learn.org/stable/auto_examples/cluster/plot_kmeans_silhouette_analysis.html

import clusterEvaluation as clEval
import plotResults as plot
import numpy as np
import json
#import selectPermissions as sp
import cPickle
import computeDistance as cd
#import matplotlib.pyplot as plt
import os
import time
import sys
import NumpyEncoder
import gzip
import logging
import mysql.connector
logging.basicConfig(filename='classify.log',level=logging.DEBUG)

def reducePrecisionEncode(array, length, breadth, precision):
	newArray = np.zeros((length, breadth), dtype=np.int)
	for i in range(length):
		for j in range(breadth):
			result = round(array[i][j],precision)
			if result == -0:
				newArray[i][j] = int(0)
			else:
				newArray[i][j] = float(result)
	return NumpyEncoder.encodeNDArray(newArray)
	
# From: http://www.saltycrane.com/blog/2012/11/using-pythons-gzip-and-stringio-compress-data-memory/
def compressWriteData(fileTowWrite,dataObject):
	# writing
	with gzip.GzipFile(fileTowWrite, 'w') as outfile:
		outfile.write(dataObject)
	
def getAppCategoryList(termDocMatrix):
	google_play_category_labels = []
	annotated_category_labels = []
	for app in termDocMatrix:
		google_play_category_labels.append(termDocMatrix[app][0])
		annotated_category_labels.append(termDocMatrix[app][1])
	return set(google_play_category_labels)

def writeMatrixToFile(appMatrix, appMatrixFile):
	#Once the whole matrix is created then dump to a file
	#Write the app permissions matrix to a file
	cPickle.dump(appMatrix, open(appMatrixFile, 'wb'))
	#return cPickle.load(open(appMatrixFile, 'rb'))
	
#Generate the ARFF file for weka to process
def generateArffFileData(termDocMatrix, allSyscallsVector):
	# print termDocMatrix
	arffFileContent="% 1. Title: Playstore Data Category Classification\n"
	arffFileContent+="% \n"
	arffFileContent+="% 2. Sources:\n"
	arffFileContent+="%      (a) Creator: P. K. Das\n"
	arffFileContent+="%      (b) Source: Google Play Store dataset\n"
	arffFileContent+="%      (c) Date: June, 2016\n"
	arffFileContent+="% \n"
	arffFileContent+="@RELATION playstore\n\n"
	for systemCall in allSyscallsVector:
		arffFileContent+="@ATTRIBUTE "+systemCall+" NUMERIC\n"
	arffFileContent+="@ATTRIBUTE class {"+",".join(getAppCategoryList(termDocMatrix))+"}\n\n"
	arffFileContent+="@DATA\n"
	# for appPkgName, appInfoDict in appDict.iteritems():
	# 	print appPkgName, appInfoDict['category'], appInfoDict['permissions'], getPermVector(appInfoDict['permissions'], permissionList)
	
	for app in termDocMatrix:
		arffFileContent+=','.join(str(freq) for freq in termDocMatrix[app][2])
		arffFileContent+=','+termDocMatrix[app][1]
		arffFileContent+="\n"

	return arffFileContent

def writeArffFile(appMatrixFile, arffFileContent):
	logging.debug('Finally writing arff file!')
	with open(appMatrixFile, 'w') as fp:
		fp.write(arffFileContent)

def runClassification(predictedClustersFile, jsonDict):
	# appMatrix, appVector = cd.computeDistance(jsonDict,metric,'tfidf')
	categoryDict = json.loads(open('category.json','r').read())
	numberOfApps, termDocMatrix, appVector, allSyscallsVector = cd.createTermDocMatrix(jsonDict,categoryDict,'numoc')
	writeArffFile("appMatrix.arff", generateArffFileData(termDocMatrix, allSyscallsVector))
	# print numberOfApps
	# print termDocMatrix
	# print appVector

	# google_play_category_labels = []
	# annotated_category_labels = []
	# data = []
	# for app in termDocMatrix:
	# 	google_play_category_labels.append(termDocMatrix[app][0])
	# 	annotated_category_labels.append(termDocMatrix[app][1])
	# 	data.append(termDocMatrix[app][2])
	# clf = svm.SVC(kernel='poly')
	# clf.fit(data, google_play_category_labels)