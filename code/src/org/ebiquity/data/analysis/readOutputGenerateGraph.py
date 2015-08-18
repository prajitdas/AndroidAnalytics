#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on July 31, 2015
@author: Prajit
'''
# Start of code from: http://scikit-learn.org/stable/auto_examples/cluster/plot_kmeans_silhouette_analysis.html
from sklearn.datasets import make_blobs
from sklearn.cluster import KMeans
from sklearn.metrics import silhouette_samples, silhouette_score
from sklearn.metrics.pairwise import pairwise_distances

import numpy as np
# End of code from: http://scikit-learn.org/stable/auto_examples/cluster/plot_kmeans_silhouette_analysis.html
import clusterEvaluation as clEval
import kMeansSilhouetteAnalysis as silsam
import databaseHandler

import sys
import time
import io
import plotly.tools as tls
# Learn about API authentication here: https://plot.ly/python/getting-started
# Find your api_key here: https://plot.ly/settings/api
import plotly.plotly as py
from plotly.graph_objs import *
import json

# This is a plot for Goodness of Cluster measure using homogeneity_score, completeness_score
def generatePlot(username, api_key, clusterCountList, homogeneityScoreList, completenessScoreList, adjustedRandScoreList, adjustedMutualInfoScoreList, vMeasureScoreList, postfix):
    tls.set_credentials_file(username, api_key)
    trace0 = Bar(
        x=clusterCountList,
        y=homogeneityScoreList,
        name='Homogeneity Score',
        marker=Marker(
            color='rgb(0, 255, 0)'
        )
    )
    trace1 = Bar(
        x=clusterCountList,
        y=completenessScoreList,
        name='Completeness Score',
        marker=Marker(
            color='rgb(255, 0, 0)'
        )
    )
    data = Data([trace0,trace1])
    '''
    if len(adjustedRandScoreList) > 0:
        trace2 = Bar(
            x=clusterCountList,
            y=adjustedRandScoreList,
            name='V Measure Score',
            marker=Marker(
                color='rgb(0, 0, 255)'
            )
        )
        data = Data([trace0,trace1,trace2])
        if len(adjustedMutualInfoScoreList) > 0:
            trace3 = Bar(
                x=clusterCountList,
                y=adjustedMutualInfoScoreList,
                name='Adjusted Mutual Info Score',
                marker=Marker(
                    color='rgb(100, 100, 100)'
                )
            )
            data = Data([trace0,trace1,trace2,trace3])
            if len(adjustedRandScoreList) > 0:
                trace4 = Bar(
                    x=clusterCountList,
                    y=adjustedRandScoreList,
                    name='Adjusted Rand Score',
                    marker=Marker(
                        color='rgb(200, 200, 200)'
                    )
                )
                data = Data([trace0,trace1,trace2,trace3,trace4])
    '''
    layout = Layout(
        title='Number of Clusters vs Homogeneity and Completeness',
        xaxis=XAxis(
            title='Number of Clusters',
            titlefont=Font(
                size=16,
                color='rgb(107, 107, 107)'
            ),
            tickfont=Font(
                size=14,
                color='rgb(107, 107, 107)'
            )
        ),
        yaxis=YAxis(
            title='Goodness Measures',
            titlefont=Font(
                size=16,
                color='rgb(107, 107, 107)'
            ),
            tickfont=Font(
                size=14,
                color='rgb(107, 107, 107)'
            )
        ),
        legend=Legend(
            x=0,
            y=1.0,
            bgcolor='rgba(255, 255, 255, 0)',
            bordercolor='rgba(255, 255, 255, 0)'
        ),
        barmode='group',
        bargap=0.15,
        bargroupgap=0.1
    )
    fig = Figure(data=data, layout=layout)
    name = 'cluster-measures'+postfix
    plot_url = py.plot(fig, filename=name)
    print "Check out the URL: "+plot_url+" for your plot"
  
# This is a plot for Goodness of Cluster measure using silhouette_avg
def generatePlotSilhouette(username, api_key, clusterCountList, silhouetteAvgList, postfix):
    tls.set_credentials_file(username, api_key)
    trace = Bar(
        x=clusterCountList,
        y=silhouetteAvgList,
        name='Silhouette Average Score',
        marker=Marker(
            color='rgb(0, 255, 0)'
        )
    )
    data = Data([trace])
    layout = Layout(
        title='Number of Clusters vs Silhouette Average Score',
        xaxis=XAxis(
            title='Number of Clusters',
            titlefont=Font(
                size=16,
                color='rgb(107, 107, 107)'
            ),
            tickfont=Font(
                size=14,
                color='rgb(107, 107, 107)'
            )
        ),
        yaxis=YAxis(
            title='Silhouette Average Score',
            titlefont=Font(
                size=16,
                color='rgb(107, 107, 107)'
            ),
            tickfont=Font(
                size=14,
                color='rgb(107, 107, 107)'
            )
        ),
        legend=Legend(
            x=0,
            y=1.0,
            bgcolor='rgba(255, 255, 255, 0)',
            bordercolor='rgba(255, 255, 255, 0)'
        ),
        barmode='group',
        bargap=0.15,
        bargroupgap=0.1
    )
    fig = Figure(data=data, layout=layout)
    name = 'silhouette-average-score'+postfix
    plot_url = py.plot(fig, filename=name)
    print "Check out the URL: "+plot_url+" for your plot"

def plotSilhouetteSamples(username, api_key, fileToRead, postfix=None):
    evaluatedClusterResultsDict = json.loads(open(fileToRead, 'r').read().decode('utf8'))
    
    clusterCountList = []
    
    silhouetteAvgList = []
    
    for clusterCount, loopInfo in evaluatedClusterResultsDict.iteritems():
        clusterCountList.append(int(clusterCount.replace("Loop","")))
        clusterInfo = loopInfo[2]
        if "silhouette_avg" in clusterInfo:
            print "In", clusterCount, "we have silhouette_avg of", clusterInfo["silhouette_avg"]
            silhouetteAvgList.append(float(clusterInfo["silhouette_avg"]))

    print silhouetteAvgList
    generatePlotSilhouette(username, api_key, clusterCountList, silhouetteAvgList, postfix)

def plotResults(username, api_key, fileToRead, postfix=None):
    evaluatedClusterResultsDict = json.loads(open(fileToRead, 'r').read().decode('utf8'))
    
    clusterCountList = []
    
    homogeneityScoreList = []
    completenessScoreList = []
    adjustedRandScoreList = []
    adjustedMutualInfoScoreList = []
    vMeasureScoreList = []
    
    for clusterCount, loopInfo in evaluatedClusterResultsDict.iteritems():
        clusterCountList.append(int(clusterCount.replace("Loop","")))
        clusterInfo = loopInfo[1]
        if "adjusted_rand_score" in clusterInfo:
            print "In", clusterCount, "we have adjusted_rand_score of", clusterInfo["adjusted_rand_score"]
            adjustedRandScoreList.append(float(clusterInfo["adjusted_rand_score"]))
        if "adjusted_mutual_info_score" in clusterInfo:
            print "In", clusterCount, "we have adjusted_mutual_info_score of", clusterInfo["adjusted_mutual_info_score"]
            adjustedMutualInfoScoreList.append(float(clusterInfo["adjusted_mutual_info_score"]))
        if "homogeneity_score" in clusterInfo:
            print "In", clusterCount, "we have homogeneity_score of", clusterInfo["homogeneity_score"]
            homogeneityScoreList.append(float(clusterInfo["homogeneity_score"]))
        if "completeness_score" in clusterInfo:
            print "In", clusterCount, "we have completeness_score of", clusterInfo["completeness_score"]
            completenessScoreList.append(float(clusterInfo["completeness_score"]))
        if "v_measure_score" in clusterInfo:
            print "In", clusterCount, "we have v_measure_score of", clusterInfo["v_measure_score"]
            vMeasureScoreList.append(float(clusterInfo["v_measure_score"]))

    print clusterCountList, homogeneityScoreList, completenessScoreList, adjustedRandScoreList, adjustedMutualInfoScoreList, vMeasureScoreList
    generatePlot(username, api_key, clusterCountList, homogeneityScoreList, completenessScoreList, adjustedRandScoreList, adjustedMutualInfoScoreList, vMeasureScoreList, postfix)

def processMatrix(username, api_key, appCategoryList, predictedClustersFile, newAppMatrix, appVector):
    '''
    sklearn.metrics.pairwise.pairwise_distances(X, Y=None, metric='euclidean', n_jobs=1, **kwds)
    We will now compute the pairwise distance metric for our input array.
    The distance metric options are:-
    From scikit-learn: ['cityblock', 'cosine', 'euclidean', 'l1', 'l2', 'manhattan']. These metrics support sparse matrix inputs.
    From scipy.spatial.distance: ['braycurtis', 'canberra', 'chebyshev', 'correlation', 'dice', 'hamming', 'jaccard', 'kulsinski', 
    'mahalanobis', 'matching', 'minkowski', 'rogerstanimoto', 'russellrao', 'seuclidean', 'sokalmichener', 'sokalsneath', 'sqeuclidean', 'yule']
    See the documentation for scipy.spatial.distance for details on these metrics. These metrics do not support sparse matrix inputs.
    '''
    metricList = ['cityblock', 'cosine', 'euclidean', 'l1', 'l2', 'manhattan']
    for metric in metricList:
        X = pairwise_distances(newAppMatrix, metric=metric, n_jobs=4)
        
    #This is to generate the plots for small set of cluster numbers using kMeansSilhouetteAnalysis.py
    #     silsam.computeSilhouette(appMatrixFile)
    #     sys.exit(1)
    
        startingNumberOfClusters = 2 # This is very interesting the Silhouette Metric was giving an error because we were using minimum of 1 cluster.
        endingNumberOfClusters = 100
        loopCounter = startingNumberOfClusters
        evaluatedClusterResultsDict = {}
        # We want to verify if the number of clusters are "strong with this one" (or not)
        #Run clustering with a varying number of clusters
        for numberOfClusters in range(startingNumberOfClusters,endingNumberOfClusters):
            print "Running clustering algorithm with", numberOfClusters, "clusters"
    
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
            print "For number of clusters =", numberOfClusters, "The average silhouette_score is :", silhouette_avg
                    
            # Insert the silhouette_avg for the cluster into the Json for further evaluation
            loopListEvaluatedCluster.append(clusterSilhouetteAverage)
            # End of code from: http://scikit-learn.org/stable/auto_examples/cluster/plot_kmeans_silhouette_analysis.html        
                    
            stringLoopCounter = 'Loop'+str(loopCounter)
            evaluatedClusterResultsDict[stringLoopCounter] = loopListEvaluatedCluster
            loopCounter = loopCounter + 1
        
    #    printevaluatedClusterResultsDict
    #    Write the predicted clusters to a file
        print "Writing predicted clusters to a file"
        with io.open(predictedClustersFile, 'w', encoding='utf-8') as f:
            f.write(unicode(json.dumps(evaluatedClusterResultsDict, ensure_ascii=False)))
        #We will generate separate graphs with this info
        if not appCategoryList:
            categories = ''
        else:
            categories = ''.join(appCategoryList)
        metrics = ''.join(metric)
        fileName = categories+metrics
        plotSilhouetteSamples(username, api_key, predictedClustersFile, fileName)
        plotResults(username, api_key, predictedClustersFile, fileName)
