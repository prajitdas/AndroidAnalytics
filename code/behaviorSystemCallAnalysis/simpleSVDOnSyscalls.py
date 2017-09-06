'''
Created on July 4,2016
@author: Prajit Kumar Das

Usage: python simpleSVDOnSyscalls.py\n

SVD on syscall output
'''
print(__doc__)
import time
import sys
import computeDistance as cd
import logging
import json
import numpy as np
import matplotlib.pyplot as plt
logging.basicConfig(filename='simpleSVDOnSyscalls.log',level=logging.DEBUG)

from sklearn import metrics
from sklearn.cluster import KMeans
from sklearn.decomposition import PCA

sample_size = 50

def bench_k_means(labels, estimator, name, data):
	t0 = time.time()
	estimator.fit(data)
	# print('% 9s   %.2fs    %i   %.3f   %.3f   %.3f   %.3f   %.3f    %.3f'
	#       % (name, (time.time() - t0), estimator.inertia_,
	#          metrics.homogeneity_score(labels, estimator.labels_),
	#          metrics.completeness_score(labels, estimator.labels_),
	#          metrics.v_measure_score(labels, estimator.labels_),
	#          metrics.adjusted_rand_score(labels, estimator.labels_),
	#          metrics.adjusted_mutual_info_score(labels, estimator.labels_),
	#          metrics.silhouette_score(data, estimator.labels_,
	#                                   metric='cosine',
	#                                   sample_size=sample_size)))

def getAppList(appRunVector):
	appList = []
	for appRun in appRunVector:
		appName = appRun.split('.run.')[0]
		appList.append(appName)
	return appList

def getMatrixForComputation(termDocMatrix,appRunVector):
	arrayOfFreqArray = []
	appList = getAppList(appRunVector)
	googleCategoryList = []
	myCategoryList = []
	for appRun in appRunVector:
		arrayOfFreqArray.append(termDocMatrix[appRun][2])
		googleCategoryList.append(termDocMatrix[appRun][0])
		myCategoryList.append(termDocMatrix[appRun][1])
	X = np.array(arrayOfFreqArray)
	return X, appList, googleCategoryList, myCategoryList

def doCluster(termDocMatrix, appRunVector):
	X, appList, googleCategoryList, myCategoryList = getMatrixForComputation(termDocMatrix, appRunVector)
	n_samples, n_features = X.shape
	bench_k_means(googleCategoryList, KMeans(init='k-means++', n_clusters=len(set(googleCategoryList)), n_init=10),
	              name="k-means++", data=X)

	bench_k_means(googleCategoryList, KMeans(init='random', n_clusters=len(set(googleCategoryList)), n_init=10),
	              name="random", data=X)

	# in this case the seeding of the centers is deterministic, hence we run the
	# kmeans algorithm only once with n_init=1
	pca = PCA(n_components=len(set(googleCategoryList))).fit(X)
	bench_k_means(googleCategoryList, KMeans(init=pca.components_, n_clusters=len(set(googleCategoryList)), n_init=1),
	              name="PCA-based",
	              data=X)
	print(79 * '_')
	###############################################################################
	# Visualize the results on PCA-reduced data

	reduced_data = PCA(n_components=2).fit_transform(X)
	kmeans = KMeans(init='k-means++', n_clusters=len(googleCategoryList), n_init=10)
	kmeans.fit(reduced_data)

	# Step size of the mesh. Decrease to increase the quality of the VQ.
	h = .02     # point in the mesh [x_min, m_max]x[y_min, y_max].

	# Plot the decision boundary. For that, we will assign a color to each
	x_min, x_max = reduced_data[:, 0].min() - 1, reduced_data[:, 0].max() + 1
	y_min, y_max = reduced_data[:, 1].min() - 1, reduced_data[:, 1].max() + 1
	xx, yy = np.meshgrid(np.arange(x_min, x_max, h), np.arange(y_min, y_max, h))

	# Obtain labels for each point in mesh. Use last trained model.
	Z = kmeans.predict(np.c_[xx.ravel(), yy.ravel()])

	# Put the result into a color plot
	Z = Z.reshape(xx.shape)
	plt.figure(1)
	plt.clf()
	plt.imshow(Z, interpolation='nearest',
	           extent=(xx.min(), xx.max(), yy.min(), yy.max()),
	           cmap=plt.cm.Paired,
	           aspect='auto', origin='lower')

	plt.plot(reduced_data[:, 0], reduced_data[:, 1], 'k.', markersize=2)
	# Plot the centroids as a white X
	centroids = kmeans.cluster_centers_
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

def doClassify(termDocMatrix, appRunVector):
	X, appList, googleCategoryList, myCategoryListt = getMatrixForComputation(termDocMatrix, appRunVector)

def doSVD(termDocMatrix, appRunVector):
	X, appList, googleCategoryList, myCategoryList = getMatrixForComputation(termDocMatrix, appRunVector)

	la = np.linalg
	U, s, Vh = la.svd(X, full_matrices=False)

	assert np.allclose(X, np.dot(U, np.dot(np.diag(s), Vh)))
	s[2:] = 0
	new_a = np.dot(U, np.dot(np.diag(s), Vh))
	# print(new_a)
	plt.plot(new_a)
	plt.show()

def doDistance(jsonDict, appToAppDistMatrix, appRunVector):
	appList = getAppList(appRunVector)
	# print ','.join(appList)
	blah = open('nodetable.csv','w')
	blah.write("Id;Label\n")
	for nodename in appList:
		blah.write("%d;%s\n"%(appList.index(nodename), nodename))

	edges = open("edgetable.csv",'w')
	edges.write("Source;Target;Weight\n")
	for row in range(82):
		for column in range(82):
			edges.write("%d;%d;%f\n"%(row,column, appToAppDistMatrix[row][column]))

	np.savetxt("foo.csv", appToAppDistMatrix, delimiter=",")

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python simpleSVDOnSyscalls.py\n')
		sys.exit(1)

	categoryDict = json.loads(open('category.json','r').read())
	jsonDict = json.loads(open('masterJsonOutputFile82Good.json','r').read())

	startTime = time.time()
	appToAppDistMatrix, appRunVector, termDocMatrix, appTFIDFWeightDict = cd.computeDistance(jsonDict, 'cosine', 'tfidf')
	doDistance(jsonDict, appToAppDistMatrix, appRunVector)
	# doSVD(termDocMatrix,appRunVector)
	# doCluster(termDocMatrix,appRunVector)
	# doClassify(termDocMatrix,appRunVector)
	executionTime = str((time.time()-startTime)*1000)
	logging.debug('Execution time was: '+executionTime+' ms')

if __name__ == "__main__":
	main(sys.argv)