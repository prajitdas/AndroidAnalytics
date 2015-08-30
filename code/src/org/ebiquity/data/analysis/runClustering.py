#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on July 31, 2015
Code for generating the Plotly graphs are here. It takes as input the files it would use to store the results and the input matrix.
@author: Prajit
'''
# Start of code from: http://scikit-learn.org/stable/auto_examples/cluster/plot_kmeans_silhouette_analysis.html
#from sklearn.datasets import make_blobs
from sklearn.cluster import KMeans#, SpectralClustering
from sklearn.metrics import silhouette_score#, silhouette_samples
from sklearn.metrics.pairwise import pairwise_distances

# End of code from: http://scikit-learn.org/stable/auto_examples/cluster/plot_kmeans_silhouette_analysis.html
import clusterEvaluation as clEval
import plotResults as plot

import numpy as np
import json
import selectPermissions as sp
import cPickle
import weightedJaccardSimilarity as wjs
from sklearn.decomposition import TruncatedSVD
import os
import matplotlib.pyplot as plt

def writeMatrixToFile(appMatrix, appMatrixFile):
    #Once the whole matrix is created then dump to a file
    #Write the app permissions matrix to a file            
    cPickle.dump(appMatrix, open(appMatrixFile, 'wb'))
    #return cPickle.load(open(appMatrixFile, 'rb'))

def kMeans(X, appVector, metric):
    startingNumberOfClusters = 2 # This is very interesting the Silhouette Metric was giving an error because we were using minimum of 1 cluster.
    endingNumberOfClusters = 100
    loopCounter = startingNumberOfClusters
    evaluatedClusterResultsDict = {}
    # We want to verify if the number of clusters are "strong with this one" (or not)
    #Run clustering with a varying number of clusters
    for numberOfClusters in range(startingNumberOfClusters,endingNumberOfClusters):
        #print "Running clustering algorithm with", numberOfClusters, "clusters"

        loopListEvaluatedCluster = []
        # Initialize the KMeansObject with numberOfClusters value 
        KMeansObject = KMeans(n_clusters=numberOfClusters, random_state=10)
        clusterLabelsAssigned = KMeansObject.fit_predict(X)
        
        counter = 0
        predictedClusters = {}
        for appName in appVector:
            predictedClusters[appName] = clusterLabelsAssigned[counter]
            counter = counter + 1
            
        loopListEvaluatedCluster.append(predictedClusters)

        #Clustering task is complete. Now evaluate
        clusterEvaluationResults = clEval.evaluateCluster(predictedClusters)

        loopListEvaluatedCluster.append(clusterEvaluationResults)
        
        # Start of code from: http://scikit-learn.org/stable/auto_examples/cluster/plot_kmeans_silhouette_analysis.html
        # The silhouette_score gives the average value for all the samples.
        # This gives a perspective into the density and separation of the formed
        # clusters
        silhouette_avg = silhouette_score(X, clusterLabelsAssigned, metric=metric) 
        clusterSilhouetteAverage = {}
        clusterSilhouetteAverage["silhouette_avg"] = silhouette_avg
        #print "For number of clusters =", numberOfClusters, "The average silhouette_score is :", silhouette_avg
                
        # Insert the silhouette_avg for the cluster into the Json for further evaluation
        loopListEvaluatedCluster.append(clusterSilhouetteAverage)
        # End of code from: http://scikit-learn.org/stable/auto_examples/cluster/plot_kmeans_silhouette_analysis.html        
                
        stringLoopCounter = 'Loop'+str(loopCounter)
        evaluatedClusterResultsDict[stringLoopCounter] = loopListEvaluatedCluster
        loopCounter = loopCounter + 1
    
    return evaluatedClusterResultsDict

def doJaccard(username, api_key, appCategoryListSelection, predictedClustersFile, permissionsSet, permissionsDict, appMatrixFile):
    #init
    reducedDimensions = 200
    startingNumberOfClusters = 10 # This is very interesting the Silhouette Metric was giving an error because we were using minimum of 1 cluster.
    endingNumberOfClusters = 200
    loopCounter = startingNumberOfClusters
    clusterLoopStepSize = 10
    evaluatedClusterResultsDict = {}

    appMatrix, appVector = wjs.computeJaccardMatrix(permissionsSet, permissionsDict)
    writeMatrixToFile(appMatrix, appMatrixFile)

    #Dimensionality reduction
    svd = TruncatedSVD(n_components=reducedDimensions)
    X = svd.fit_transform(appMatrix)
    
    # We want to verify if the number of clusters are "strong with this one" (or not)
    #Run clustering with a varying number of clusters
    for numberOfClusters in range(startingNumberOfClusters,endingNumberOfClusters, clusterLoopStepSize):
        loopListEvaluatedCluster = []
        # Initialize the KMeansObject with numberOfClusters value 
        KMeansObject = KMeans(n_clusters=numberOfClusters)
        clusterLabelsAssigned = KMeansObject.fit_predict(X)
#        SpectralClusteringObject = SpectralClustering(n_clusters=numberOfClusters)#,affinity='precomputed')
#        clusterLabelsAssigned = SpectralClusteringObject.fit_predict(X)
        
        #Plotting results
        # Step size of the mesh. Decrease to increase the quality of the VQ.
        h = .02     # point in the mesh [x_min, m_max]x[y_min, y_max].
        
        # Plot the decision boundary. For that, we will assign a color to each
        x_min, x_max = X[:, 0].min() + 1, X[:, 0].max() - 1
        y_min, y_max = X[:, 1].min() + 1, X[:, 1].max() - 1
        xx, yy = np.meshgrid(np.arange(x_min, x_max, h), np.arange(y_min, y_max, h))
        
        # Obtain labels for each point in mesh. Use last trained model.
        Z = KMeansObject.predict(np.c_[xx.ravel(), yy.ravel()])
        
        # Put the result into a color plot
        Z = Z.reshape(xx.shape)
        plt.figure(1)
        plt.clf()
        plt.imshow(Z, interpolation='nearest',
                   extent=(xx.min(), xx.max(), yy.min(), yy.max()),
                   cmap=plt.cm.Paired,
                   aspect='auto', origin='lower')
        
        plt.plot(X[:, 0], X[:, 1], 'k.', markersize=2)
        # Plot the centroids as a white X
        centroids = KMeansObject.cluster_centers_
        plt.scatter(centroids[:, 0], centroids[:, 1],
                    marker='x', s=169, linewidths=3,
                    color='w', zorder=10)
        plt.title('K-means clustering on the digits dataset (PCA-reduced data)\n'
                  'Centroids are marked with white cross')
        plt.xlim(x_min, x_max)
        plt.ylim(y_min, y_max)
        plt.xticks(())
        plt.yticks(())
        plt.show()
        
        #Silhouette Evaluation starts
        counter = 0
        predictedClusters = {}
        for appName in appVector:
            predictedClusters[appName] = clusterLabelsAssigned[counter]
            counter = counter + 1
            
        loopListEvaluatedCluster.append(predictedClusters)

        #Clustering task is complete. Now evaluate
        clusterEvaluationResults = clEval.evaluateCluster(predictedClusters)

        loopListEvaluatedCluster.append(clusterEvaluationResults)
        
        # Start of code from: http://scikit-learn.org/stable/auto_examples/cluster/plot_kmeans_silhouette_analysis.html
        # The silhouette_score gives the average value for all the samples.
        # This gives a perspective into the density and separation of the formed
        # clusters
        silhouette_avg = silhouette_score(X, clusterLabelsAssigned, metric='jaccard') 
        clusterSilhouetteAverage = {}
        clusterSilhouetteAverage["silhouette_avg"] = silhouette_avg
        #print "For number of clusters =", numberOfClusters, "The average silhouette_score is :", silhouette_avg
                
        # Insert the silhouette_avg for the cluster into the Json for further evaluation
        loopListEvaluatedCluster.append(clusterSilhouetteAverage)
        # End of code from: http://scikit-learn.org/stable/auto_examples/cluster/plot_kmeans_silhouette_analysis.html        
                
        stringLoopCounter = 'Loop'+str(loopCounter)
        evaluatedClusterResultsDict[stringLoopCounter] = loopListEvaluatedCluster
        loopCounter = loopCounter + clusterLoopStepSize
        print "Finished clustering algorithm with", numberOfClusters, "clusters"
    
    #    printevaluatedClusterResultsDict
    #    Write the predicted clusters to a file
        predictedClustersFile = predictedClustersFile.split(".")[0] + "." + stringLoopCounter + ".json"
        print "Writing predicted clusters to a file"
        with open(predictedClustersFile, 'w') as outfile:
            outfile.write(json.dumps(evaluatedClusterResultsDict))
#    with io.open(predictedClustersFile, 'w', encoding='utf-8') as f:
#        f.write(unicode(json.dumps(evaluatedClusterResultsDict, ensure_ascii=False)))
    #We will generate separate graphs with this info
    if not appCategoryListSelection:
        categories = ''
    else:
        categories = ''.join(appCategoryListSelection)
    metrics = "jaccard"
    fileName = categories+metrics
    plot.plotSilhouetteSamples(username, api_key, predictedClustersFile, fileName)
    plot.plotGroundTruthResults(username, api_key, predictedClustersFile, fileName)

def doOthers(username, api_key, appCategoryListSelection, predictedClustersFile, permissionsSet, permissionsDict, appMatrixFile):
    appMatrix, appVector = sp.computeMatrix(permissionsSet, permissionsDict)
    newAppMatrix = np.array(writeMatrixToFile(appMatrix, appMatrixFile))
    '''
    sklearn.metrics.pairwise.pairwise_distances(X, Y=None, metric='euclidean', n_jobs=1, **kwds)
    We will now compute the pairwise distance metric for our input array.
    The distance metric options are:-
    From scikit-learn: ['cityblock', 'cosine', 'euclidean', 'l1', 'l2', 'manhattan']. These metrics support sparse matrix inputs.
    From scipy.spatial.distance: ['braycurtis', 'canberra', 'chebyshev', 'correlation', 'dice', 'hamming', 'jaccard', 'kulsinski', 
    'mahalanobis', 'matching', 'minkowski', 'rogerstanimoto', 'russellrao', 'seuclidean', 'sokalmichener', 'sokalsneath', 'sqeuclidean', 'yule']
    See the documentation for scipy.spatial.distance for details on these metrics. These metrics do not support sparse matrix inputs.
    '''
    #metricList = ['cityblock', 'cosine', 'euclidean', 'l1', 'l2', 'manhattan']
    metricList = ['manhattan'] # We are just doing Manhattan because we saw best results with that
    for metric in metricList:
        X = pairwise_distances(newAppMatrix, metric=metric, n_jobs=4)
        print "pairwise_distances in KMeans complete"
        evaluatedClusterResultsDict = kMeans(X, appVector, metric)

    #    printevaluatedClusterResultsDict
    #    Write the predicted clusters to a file
        print "Writing predicted clusters to a file"
        with open(predictedClustersFile, 'w') as f:
            f.write(json.dumps(evaluatedClusterResultsDict))
        #We will generate separate graphs with this info
        if not appCategoryListSelection:
            categories = ''
        else:
            categories = ''.join(appCategoryListSelection)
        metrics = ''.join(metric)
        fileName = categories+metrics
        plot.plotSilhouetteSamples(username, api_key, predictedClustersFile, fileName)
        plot.plotGroundTruthResults(username, api_key, predictedClustersFile, fileName)

def runClustering(username, api_key, appCategoryListSelection, predictedClustersFile, permissionsSet, permissionsDict, appMatrixFile):
    #doOthers(username, api_key, appCategoryListSelection, predictedClustersFile, permissionsSet, permissionsDict, appMatrixFile)
    doJaccard(username, api_key, appCategoryListSelection, predictedClustersFile, permissionsSet, permissionsDict, appMatrixFile)
    os.remove(appMatrixFile)
