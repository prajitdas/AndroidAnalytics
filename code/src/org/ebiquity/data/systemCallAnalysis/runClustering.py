'''
Created on April 26, 2015
Modified on June 7, 2016
@author: Prajit Kumar Das
Usage: python runClustering.py username api_key appMatrixFile predictedClustersFile jsonDict startingNumberOfClusters endingNumberOfClusters clusterLoopStepSize reducedDimensions
'''

# Start of code from: http://scikit-learn.org/stable/auto_examples/cluster/plot_kmeans_silhouette_analysis.html
#from sklearn.datasets import make_blobs
from sklearn.cluster import KMeans, SpectralClustering, DBSCAN
from sklearn.metrics import silhouette_score, silhouette_samples
# from sklearn.metrics.pairwise import pairwise_distances
from sklearn.decomposition import PCA #,TruncatedSVD
# End of code from: http://scikit-learn.org/stable/auto_examples/cluster/plot_kmeans_silhouette_analysis.html
import clusterEvaluation as clEval
# import plotResults as plot
import numpy as np
import json
#import selectPermissions as sp
import cPickle
import computeDistance as cd
import matplotlib.pyplot as plt
import matplotlib.cm as cm
# import os
# import time
# import sys
import NumpyEncoder
import gzip
import logging
# import mysql.connector
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
	
def getGroundTruthLabels(termDocMatrix,appRunVector):
	groundTruthLabels = {}
	for appRunName in appRunVector:
		# print appRunName, termDocMatrix[appRunName][1]
		groundTruthLabels[appRunName] = termDocMatrix[appRunName][1]
	return groundTruthLabels

def doPlots(X,n_clusters,sample_silhouette_values,cluster_labels,silhouette_avg,centroids):
    # Create a subplot with 1 row and 2 columns
    fig, (ax1, ax2) = plt.subplots(1, 2)
    fig.set_size_inches(18, 7)

    # The 1st subplot is the silhouette plot
    # The silhouette coefficient can range from -1, 1 but in this example all
    # lie within [-0.1, 1]
    ax1.set_xlim([-0.1, 1])
    # The (n_clusters+1)*10 is for inserting blank space between silhouette
    # plots of individual clusters, to demarcate them clearly.
    ax1.set_ylim([0, len(X) + (n_clusters + 1) * 10])
    y_lower = 10
    for i in range(n_clusters):
        # Aggregate the silhouette scores for samples belonging to
        # cluster i, and sort them
        ith_cluster_silhouette_values = \
            sample_silhouette_values[cluster_labels == i]

        ith_cluster_silhouette_values.sort()

        size_cluster_i = ith_cluster_silhouette_values.shape[0]
        y_upper = y_lower + size_cluster_i

        color = cm.spectral(float(i) / n_clusters)
        ax1.fill_betweenx(np.arange(y_lower, y_upper),
                          0, ith_cluster_silhouette_values,
                          facecolor=color, edgecolor=color, alpha=0.7)

        # Label the silhouette plots with their cluster numbers at the middle
        ax1.text(-0.05, y_lower + 0.5 * size_cluster_i, str(i))

        # Compute the new y_lower for next plot
        y_lower = y_upper + 10  # 10 for the 0 samples

    ax1.set_title("The silhouette plot for the various clusters.")
    ax1.set_xlabel("The silhouette coefficient values")
    ax1.set_ylabel("Cluster label")

    # The vertical line for average silhoutte score of all the values
    ax1.axvline(x=silhouette_avg, color="red", linestyle="--")

    ax1.set_yticks([])  # Clear the yaxis labels / ticks
    ax1.set_xticks([-0.1, 0, 0.2, 0.4, 0.6, 0.8, 1])

    # 2nd Plot showing the actual clusters formed
    colors = cm.spectral(cluster_labels.astype(float) / n_clusters)
    ax2.scatter(X[:, 0], X[:, 1], marker='.', s=30, lw=0, alpha=0.7,
                c=colors)

    # Labeling the clusters
    centers = centroids
    # Draw white circles at cluster centers
    ax2.scatter(centers[:, 0], centers[:, 1],
                marker='o', c="white", alpha=1, s=200)

    for i, c in enumerate(centers):
        ax2.scatter(c[0], c[1], marker='$%d$' % i, alpha=1, s=50)

    ax2.set_title("The visualization of the clustered data.")
    ax2.set_xlabel("Feature space for the 1st feature")
    ax2.set_ylabel("Feature space for the 2nd feature")

    plt.suptitle(("Silhouette analysis for KMeans clustering on sample data "
                  "with n_clusters = %d" % n_clusters),
                 fontsize=14, fontweight='bold')

    plt.show()

def clusterDist(username, api_key, appMatrixFile, predictedClustersFile, jsonDict, metric, startingNumberOfClusters=2, endingNumberOfClusters=10, clusterLoopStepSize=1, reducedDimensions=2):
	#init
	# reducedDimensions = 100
	# startingNumberOfClusters = 2 # The Silhouette Metric was giving an error because we were using minimum of 1 cluster.
	# endingNumberOfClusters = 10
	# clusterLoopStepSize = 1
	loopCounter = startingNumberOfClusters
	evaluatedClusterResultsDict = {}

	appMatrix, appRunVector, termDocMatrix, appTFIDFWeightDict = cd.computeDistance(jsonDict,metric,'tfidf')
	# print appMatrix, appRunVector, termDocMatrix
	groundTruthLabels = getGroundTruthLabels(termDocMatrix,appRunVector)
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
		KMeansObject = KMeans(n_clusters=numberOfClusters)#, init='random')
		KMeansObject.fit_predict(X)
		#Plotting results
		#This is not working so commenting out right now
		#doScatterPlot(X, numberOfClusters, KMeansObject)
		# SpectralClusteringObject = SpectralClustering(n_clusters=numberOfClusters)#, eigen_solver='arpack')#, assign_labels='discretize')#, affinity='precomputed')
		# SpectralClusteringObject = SpectralClustering(n_clusters=numberOfClusters, eigen_solver='arpack', assign_labels='discretize', affinity='precomputed')
		# clusterLabelsAssigned = SpectralClusteringObject.fit_predict(X)
		clusterLabelsAssigned = KMeansObject.labels_
		centroids = KMeansObject.cluster_centers_

		#Silhouette Evaluation starts
		counter = 0
		predictedClusters = {}
		# print 'app vector:\n' + str(appVector)
		# print 'clusters assigned:\n' + str(clusterLabelsAssigned)
		for appRunName in appRunVector:
			# print appRunName, clusterLabelsAssigned[counter]
			predictedClusters[appRunName] = int(clusterLabelsAssigned[counter])
			counter += 1
		
		loopEvaluatedCluster['clusterAssignment'] = predictedClusters

		#Clustering task is complete. Now evaluate
		loopEvaluatedCluster['clusterEvaluationResults'] = clEval.evaluateCluster(predictedClusters,groundTruthLabels)

		# print centroids
		# print X.shape
		# print clusterLabelsAssigned
		# print metric
		# Start of code from: http://scikit-learn.org/stable/auto_examples/cluster/plot_kmeans_silhouette_analysis.html
		# The silhouette_score gives the average value for all the samples.
		# This gives a perspective into the density and separation of the formed
		# clusters
		silhouette_avg = silhouette_score(X, clusterLabelsAssigned, metric=metric) 
		# Compute the silhouette scores for each sample
		sample_silhouette_values = silhouette_samples(X, clusterLabelsAssigned, metric=metric)
		#logging.debug('For number of clusters =', numberOfClusters, 'The average silhouette_score is :', silhouette_avg
				
		# Insert the silhouette_avg for the cluster into the Json for further evaluation
		loopEvaluatedCluster['silhouette_avg'] = silhouette_avg
		# loopEvaluatedCluster['silhouette_samples'] = sample_silhouette_values
		# loopEvaluatedCluster['clusterSilhouetteAverage'] = clusterSilhouetteAverage
		# End of code from: http://scikit-learn.org/stable/auto_examples/cluster/plot_kmeans_silhouette_analysis.html		
		
		#Storing the centroid values in the results dictionary
		#loopEvaluatedCluster['centroids'] = reducePrecisionEncode(centroids, numberOfClusters, reducedDimensions, 5)
		doPlots(X, numberOfClusters, sample_silhouette_values, clusterLabelsAssigned, silhouette_avg, centroids)

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
	# plot.plotSilhouetteSamples(username, api_key, predictedClustersFile, fileName)
	# plot.plotGroundTruthResults(username, api_key, predictedClustersFile, fileName)

def doCluster(username, api_key, appMatrixFile, predictedClustersFile, jsonDict, startingNumberOfClusters, endingNumberOfClusters, clusterLoopStepSize, reducedDimensions):
	# clusterDist(username, api_key, appMatrixFile, predictedClustersFile, jsonDict, 'jaccard', startingNumberOfClusters, endingNumberOfClusters, clusterLoopStepSize, reducedDimensions)
	clusterDist(username, api_key, appMatrixFile, predictedClustersFile, jsonDict, 'cosine', startingNumberOfClusters, endingNumberOfClusters, clusterLoopStepSize, reducedDimensions)
	# clusterDist(username, api_key, appMatrixFile, predictedClustersFile, jsonDict, 'euclidean', startingNumberOfClusters, endingNumberOfClusters, clusterLoopStepSize, reducedDimensions)
	# clusterDist(username, api_key, appMatrixFile, predictedClustersFile, jsonDict, 'cityblock', startingNumberOfClusters, endingNumberOfClusters, clusterLoopStepSize, reducedDimensions)

def runClustering(username, api_key, appMatrixFile, predictedClustersFile, jsonDict, startingNumberOfClusters, endingNumberOfClusters, clusterLoopStepSize, reducedDimensions):
	# jsonDict = getSyscallClusteringDataInput(os.getcwd())
	#doOthers(username, api_key, appMatrixFile, predictedClustersFile, jsonDict)
	doCluster(username, api_key, appMatrixFile, predictedClustersFile, jsonDict, startingNumberOfClusters, endingNumberOfClusters, clusterLoopStepSize, reducedDimensions)
	# appMatrix, appVector = cd.computeJaccardMatrix(jsonDict)
	# kMeans(appMatrix, appVector, 'precomputed')
	#doWord2Vec(username, api_key, appMatrixFile, predictedClustersFile, jsonDict)
	#doCosineSim(username, api_key, appMatrixFile, predictedClustersFile, jsonDict)
	#os.remove(appMatrixFile)
