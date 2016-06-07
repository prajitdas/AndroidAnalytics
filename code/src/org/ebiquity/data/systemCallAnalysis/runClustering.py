'''
Created on April 26, 2015
Modified on June 7, 2016
@author: Prajit Kumar Das
Usage: python runClustering.py username api_key appMatrixFile predictedClustersFile jsonDict
'''

# Start of code from: http://scikit-learn.org/stable/auto_examples/cluster/plot_kmeans_silhouette_analysis.html
#from sklearn.datasets import make_blobs
from sklearn.cluster import KMeans#, SpectralClustering
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
import weightedJaccardSimilarity as wjs
#import matplotlib.pyplot as plt
import os
import time
import sys
import NumpyEncoder
import gzip
import logging
import mysql.connector
logging.basicConfig(filename='syscall.log',level=logging.DEBUG)

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
		
def writeMatrixToFile(appMatrix, appMatrixFile):
	#Once the whole matrix is created then dump to a file
	#Write the app permissions matrix to a file
	cPickle.dump(appMatrix, open(appMatrixFile, 'wb'))
	#return cPickle.load(open(appMatrixFile, 'rb'))
	
def doCluster(username, api_key, appMatrixFile, predictedClustersFile, jsonDict, metric):
	#init
	#reducedDimensions = 100
	startingNumberOfClusters = 2 # The Silhouette Metric was giving an error because we were using minimum of 1 cluster.
	endingNumberOfClusters = 500
	loopCounter = startingNumberOfClusters
	clusterLoopStepSize = 5
	evaluatedClusterResultsDict = {}

	appMatrix, appVector = wjs.computeJaccardMatrix(jsonDict)
	writeMatrixToFile(appMatrix, appMatrixFile)

	#Dimensionality reduction
	#X = PCA(n_components=reducedDimensions).fit_transform(appMatrix)
	X = appMatrix

	'''
	An interesting problem occurs due to use of 'appVectors' as a index.
	Later on we try to find the integer loop counter and that causes an issue.
	In plotSilhouetteSamples.clusterCount() and plotSilhouetteSamples.plotGroundTruthResults() we have to handle this issue.
	Introduced becasue of -> ValueError: Input contains NaN, infinity or a value too large for dtype('float64').
	'''
	#evaluatedClusterResultsDict['appVectors'] = reducePrecisionEncode(X, X.shape[0], reducedDimensions, 5)
	
	# We want to verify if the number of clusters are 'strong with this one' (or not)
	#Run clustering with a varying number of clusters
	for numberOfClusters in range(startingNumberOfClusters, endingNumberOfClusters, clusterLoopStepSize):
		print 'Inside doCluster\'s loop number:', loopCounter
		logging.debug('Inside doCluster\'s loop')

		loopEvaluatedCluster = {}
		# Initialize the KMeansObject with numberOfClusters value
		KMeansObject = KMeans(n_clusters=numberOfClusters)#, init='k-means++')
		clusterLabelsAssigned = KMeansObject.fit_predict(X)
		centroids = KMeansObject.cluster_centers_
		#Plotting results
		#This is not working so commenting out right now
		#doScatterPlot(X, numberOfClusters, KMeansObject)
		# SpectralClusteringObject = SpectralClustering(n_clusters=numberOfClusters)#, eigen_solver='arpack')#, assign_labels='discretize')#, affinity='precomputed')
		# clusterLabelsAssigned = SpectralClusteringObject.fit_predict(X)

		#Silhouette Evaluation starts
		counter = 0
		predictedClusters = {}
		# print 'app vector:\n' + str(appVector)
		# print 'clusters assigned:\n' + str(clusterLabelsAssigned)
		for appName in appVector:
			predictedClusters[appName] = int(clusterLabelsAssigned[counter])
			counter += 1
		
		loopEvaluatedCluster['clusterAssignment'] = predictedClusters

		#Clustering task is complete. Now evaluate
		loopEvaluatedCluster['clusterEvaluationResults'] = clEval.evaluateCluster(predictedClusters)

		# Start of code from: http://scikit-learn.org/stable/auto_examples/cluster/plot_kmeans_silhouette_analysis.html
		# The silhouette_score gives the average value for all the samples.
		# This gives a perspective into the density and separation of the formed
		# clusters
		silhouette_avg = silhouette_score(X, clusterLabelsAssigned, metric=metric) 
		#logging.debug('For number of clusters =', numberOfClusters, 'The average silhouette_score is :', silhouette_avg
				
		# Insert the silhouette_avg for the cluster into the Json for further evaluation
		loopEvaluatedCluster['silhouette_avg'] = silhouette_avg
		# loopEvaluatedCluster['clusterSilhouetteAverage'] = clusterSilhouetteAverage
		# End of code from: http://scikit-learn.org/stable/auto_examples/cluster/plot_kmeans_silhouette_analysis.html		
		
		#Storing the centroid values in the results dictionary
		loopEvaluatedCluster['centroids'] = reducePrecisionEncode(centroids, numberOfClusters, reducedDimensions, 5)
 
		'''
		#Usage of NumpyEncoder is shown here so that the centroids can be encoded and decoded easily. Look in NumpyEncoder.py for details
		expected = np.arange(100, dtype=np.float)
		dumped = json.dumps(newCentroids, cls=NumpyEncoder)
		result = json.loads(dumped, object_hook=json_numpy_obj_hook)
		
		# None of the following assertions will be broken.
		assert result.dtype == expected.dtype, 'Wrong Type'
		assert result.shape == expected.shape, 'Wrong Shape'
		assert np.allclose(expected, result), 'Wrong Values'
		'''
		
		stringLoopCounter = 'Loop'+str(loopCounter)
		evaluatedClusterResultsDict[stringLoopCounter] = loopEvaluatedCluster
		loopCounter = loopCounter + clusterLoopStepSize
		logging.debug('Finished clustering algorithm with '+str(numberOfClusters)+' clusters. Writing predicted clusters to file.')
	
	#	printevaluatedClusterResultsDict
	#	Write the predicted clusters to a file
		# predictedClustersFile = predictedClustersFile.split('.')[0] + '.' + stringLoopCounter + '.json.gz'
	
		compressWriteData(predictedClustersFile,json.dumps(evaluatedClusterResultsDict, indent=4))
#		with open(predictedClustersFile, 'w') as outfile:
#			outfile.write(json.dumps(evaluatedClusterResultsDict, indent=4))

#	with io.open(predictedClustersFile, 'w', encoding='utf-8') as f:
#		f.write(unicode(json.dumps(evaluatedClusterResultsDict, ensure_ascii=False)))
	#We will generate separate graphs with this info
	# if not appCategoryListSelection:
	# 	categories = ''
	# else:
	# 	categories = ''.join(appCategoryListSelection)
	# metrics = 'jaccard'
	fileName = metric+predictedClustersFile.split('.')[0].split('ters')[1]#categories+metrics
	plot.plotSilhouetteSamples(username, api_key, predictedClustersFile, fileName)
	plot.plotGroundTruthResults(username, api_key, predictedClustersFile, fileName)

def runClustering(username, api_key, appMatrixFile, predictedClustersFile, jsonDict):
	# jsonDict = getSyscallClusteringDataInput(os.getcwd())
	#doOthers(username, api_key, appMatrixFile, predictedClustersFile, jsonDict)
	doCluster(username, api_key, appMatrixFile, predictedClustersFile, jsonDict, 'euclidean')
	# appMatrix, appVector = wjs.computeJaccardMatrix(jsonDict)
	# kMeans(appMatrix, appVector, 'precomputed')
	#doWord2Vec(username, api_key, appMatrixFile, predictedClustersFile, jsonDict)
	#doCosineSim(username, api_key, appMatrixFile, predictedClustersFile, jsonDict)
	#os.remove(appMatrixFile)
