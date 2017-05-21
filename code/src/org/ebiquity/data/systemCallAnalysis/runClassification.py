'''
Created on June 28, 2016
@author: Prajit Kumar Das
Usage: python runClassification.py jsonDict
'''

import datetime
import numpy as np
import cPickle
import computeDistance as cd
import NumpyEncoder
import gzip
import logging
import json
import time

from sklearn import svm
import sys
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.colors import ListedColormap
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.datasets import make_moons, make_circles, make_classification
from sklearn.neural_network import MLPClassifier
from sklearn.neighbors import KNeighborsClassifier
from sklearn.svm import SVC
from sklearn.gaussian_process import GaussianProcessClassifier
from sklearn.gaussian_process.kernels import RBF
from sklearn.tree import DecisionTreeClassifier
from sklearn.ensemble import RandomForestClassifier, AdaBoostClassifier
from sklearn.naive_bayes import GaussianNB
from sklearn.discriminant_analysis import QuadraticDiscriminantAnalysis

h = .02  # step size in the mesh

#names = ["Nearest Neighbors", "Linear SVM", "RBF SVM", "Gaussian Process",
#		 "Decision Tree", "Random Forest", "Neural Net", "AdaBoost",
#		 "Naive Bayes", "QDA"]

names = ["Neural Net"]
classifiers = [MLPClassifier(alpha=1)]
#classifiers = [
#	KNeighborsClassifier(3),
#	SVC(kernel="linear", C=0.025),
#	SVC(gamma=2, C=1),
#	GaussianProcessClassifier(1.0 * RBF(1.0), warm_start=True),
#	DecisionTreeClassifier(max_depth=5),
#	RandomForestClassifier(max_depth=5, n_estimators=10, max_features=1),
#	MLPClassifier(alpha=1),
#	AdaBoostClassifier(),
#	GaussianNB(),
#	QuadraticDiscriminantAnalysis()]

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
	
def getAppLabelList(termDocMatrix, labels):
	labelList = []
	if labels == "my":
		for app in termDocMatrix:
			if app == "allSystemCalls":
				continue
			else:
				labelList.append(termDocMatrix[app][1])
	else:
		for app in termDocMatrix:
			if app == "allSystemCalls":
				continue
			else:
				labelList.append(termDocMatrix[app][0])
	return labelList

def altDoClassify(jsonDict, labels, features):
	termDocMatrix, allSyscallsVector = cd.createTermDocMatrix(jsonDict, features)
	X, y = generateNormalFeatureMatrix(termDocMatrix, allSyscallsVector, labels)
	X = StandardScaler().fit_transform(X)
	X_train, X_test, y_train, y_test = \
		train_test_split(X, y, test_size=.4, random_state=42)
	# iterate over classifiers
	for name, clf in zip(names, classifiers):
		clf.fit(X_train, y_train)
		score = clf.score(X_test, y_test)
		print score
	
def doClassify(jsonDict, labels, features):
	termDocMatrix, allSyscallsVector = cd.createTermDocMatrix(jsonDict, features)
	appLabelList=getAppLabelList(termDocMatrix, labels)
	print set(appLabelList)
#	datasets=[]
	for appLabel in appLabelList:
		X, y = generateFeatureMatrix(termDocMatrix, allSyscallsVector, labels, appLabel)
	#	print "datasets:"+str(len(allSyscallsVector))
	#	X,y=datasets[0]
	#	print X.shape,y.shape
	#	clf = svm.SVC()
	#	clf.fit(X, y)
	#	clf.predict([[2., 2.]])
	#	figure = plt.figure(figsize=(27, 9))
	#	i = 1
		# iterate over datasets
#		for ds_cnt, ds in enumerate(datasets):
#		print ds
		# preprocess dataset, split into training and test part
#			X, y = ds
	#	print "datasets:"+str(X.shape)
	#	print "datasets:"+str(y.shape)
	
		X = StandardScaler().fit_transform(X)
		X_train, X_test, y_train, y_test = \
			train_test_split(X, y, test_size=.4, random_state=42)
	
#		print "train:"+str(X_train.shape[1])
#		print "test:"+str(X_test.shape[1])
#		
#		x_min, x_max = X[:, 0].min() - .5, X[:, 0].max() + .5
#		y_min, y_max = X[:, 1].min() - .5, X[:, 1].max() + .5
#		xx, yy = np.meshgrid(np.arange(x_min, x_max, h),
#							 np.arange(y_min, y_max, h))
#	
#		print "xx"+str(xx.shape)
#		print "yy"+str(yy.shape)
#	
#		# just plot the dataset first
#		cm = plt.cm.RdBu
#		cm_bright = ListedColormap(['#FF0000', '#0000FF'])
#		ax = plt.subplot(len(datasets), len(classifiers) + 1, i)
#		if ds_cnt == 0:
#			ax.set_title("Input data")
#		# Plot the training points
#		ax.scatter(X_train[:, 0], X_train[:, 1], c=y_train, cmap=cm_bright)
#		# and testing points
#		ax.scatter(X_test[:, 0], X_test[:, 1], c=y_test, cmap=cm_bright, alpha=0.6)
#		ax.set_xlim(xx.min(), xx.max())
#		ax.set_ylim(yy.min(), yy.max())
#		ax.set_xticks(())
#		ax.set_yticks(())
#		i += 1
	
		# iterate over classifiers
		for name, clf in zip(names, classifiers):
#			ax = plt.subplot(len(datasets), len(classifiers) + 1, i)
			clf.fit(X_train, y_train)
			if len(set(y_train)) != 2:
				print appLabel
#			print "shape"
#			print X_train.shape, y_train.shape
#			print X_test.shape, y_test.shape
			score = clf.score(X_test, y_test)
			print score
	
#			print X_train.shape
#			print y_train.shape
			# Plot the decision boundary. For that, we will assign a color to each
			# point in the mesh [x_min, x_max]x[y_min, y_max].
#			if hasattr(clf, "decision_function"):
#				print "shape"
#				print xx.ravel().shape
#				print yy.ravel().shape
#				
#				Z = clf.decision_function(np.c_[xx.ravel(), yy.ravel()])
#			else:
#				print "shape"
#				print xx.ravel().shape
#				print yy.ravel().shape
#				
#				Z = clf.predict_proba(np.c_[xx.ravel(), yy.ravel()])[:, 1]
#	
#			# Put the result into a color plot
#			Z = Z.reshape(xx.shape)
#			ax.contourf(xx, yy, Z, cmap=cm, alpha=.8)
#	
#			# Plot also the training points
#			ax.scatter(X_train[:, 0], X_train[:, 1], c=y_train, cmap=cm_bright)
#			# and testing points
#			ax.scatter(X_test[:, 0], X_test[:, 1], c=y_test, cmap=cm_bright,
#					   alpha=0.6)
#	
#			ax.set_xlim(xx.min(), xx.max())
#			ax.set_ylim(yy.min(), yy.max())
#			ax.set_xticks(())
#			ax.set_yticks(())
#			if ds_cnt == 0:
#				ax.set_title(name)
#			ax.text(xx.max() - .3, yy.min() + .3, ('%.2f' % score).lstrip('0'),
#					size=15, horizontalalignment='right')
#			i += 1
#	
#	plt.tight_layout()
#	plt.show()

def generateFeatureMatrix(termDocMatrix, allSyscallsVector, labels, currentLabel):
	numOfApps=len(termDocMatrix.keys())
	X=np.zeros((numOfApps,len(allSyscallsVector)))
	y=np.zeros(numOfApps)
	index=0
	if labels == "my":
		for app in termDocMatrix:
			if app == "allSystemCalls":
				continue
			else:
				X[index]=np.asarray(termDocMatrix[app][2])
				if termDocMatrix[app][1] == currentLabel:
					y[index]=1
				else:
					y[index]=0
				index+=1
	else:
		for app in termDocMatrix:
			if app == "allSystemCalls":
				continue
			else:
				X[index]=np.asarray(termDocMatrix[app][2])
				if termDocMatrix[app][0] == currentLabel:
					y[index]=1
				else:
					y[index]=0
				index+=1
	return X,y

def generateNormalFeatureMatrix(termDocMatrix, allSyscallsVector, labels):
	numOfApps=len(termDocMatrix.keys())
	X=np.zeros((numOfApps,len(allSyscallsVector)))
	y=np.zeros(numOfApps)
	index=0
	appLabelList=getAppLabelList(termDocMatrix, labels)
	if labels == "my":
		for app in termDocMatrix:
			if app == "allSystemCalls":
				continue
			else:
				X[index]=np.asarray(termDocMatrix[app][2])
				value = termDocMatrix[app][1]
				if value in appLabelList:
					y[index]=appLabelList.index(value)
				index+=1
	else:
		for app in termDocMatrix:
			if app == "allSystemCalls":
				continue
			else:
				X[index]=np.asarray(termDocMatrix[app][2])
				if value in appLabelList:
					y[index]=appLabelList.index(value)
				index+=1
	return X,y

def runClassification(jsonDict, labels, features):
	# appMatrix, appVector = cd.computeDistance(jsonDict,metric,type)
	# categoryDict = json.loads(open('category.json','r').read())
	# numberOfApps, termDocMatrix, appRunVector, allSyscallsVector = cd.createTermDocMatrix(jsonDict,categoryDict,type)
	# options for type are justc numoc and tfidf
#	doClassify(jsonDict, labels, features)
	altDoClassify(jsonDict, labels, features)
	
	# writeArffFile(ngram+labels+features+"534.arff", generateArffFileData(termDocMatrix, allSyscallsVector, labels))

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

#Generate the ARFF file for weka to process
def generateArffFileData(termDocMatrix, allSyscallsVector, labels):
	# print termDocMatrix
	arffFileContent="% 1. Title: App Behavioral Category Classification\n"
	arffFileContent+="% \n"
	arffFileContent+="% 2. Sources:\n"
	arffFileContent+="%      (a) Creator: P. K. Das\n"
	arffFileContent+="%      (b) Source: Google Play Store dataset\n"
	now = datetime.datetime.now()
	day = str(now.day)
	month = now.strftime("%B")
	year = str(now.year)
	arffFileContent+="%      (c) Date: "+month+" "+day+","+year+"\n"
	arffFileContent+="% \n"
	arffFileContent+="@RELATION playstore\n\n"
	for systemCall in allSyscallsVector:
		arffFileContent+="@ATTRIBUTE "+systemCall+" NUMERIC\n"
	arffFileContent+="@ATTRIBUTE class {"+",".join(getAppLabelList(termDocMatrix, labels))+"}\n\n"
	arffFileContent+="@DATA\n"
	
	for app in termDocMatrix:
		if app == "allSystemCalls":
			continue
		else:
			arffFileContent+=','.join(str(freq) for freq in termDocMatrix[app][2])
			'''
				REMEMBER! REMEMBER! The something of November :P This is where we choose which class label we test against
				termDocMatrix[app][0] -> annotated class labels by Google
				termDocMatrix[app][1] -> annotated class labels by "experts"
				remember to comment out the right line above in getAppCategoryList(termDocMatrix)
			'''
			# [0]: Google category
			# [1]: My category
			if labels == "my":
				arffFileContent+=','+termDocMatrix[app][1]
			else:
				arffFileContent+=','+termDocMatrix[app][0]
			arffFileContent+="\n"

	return arffFileContent

def writeMatrixToFile(appMatrix, appMatrixFile):
	#Once the whole matrix is created then dump to a file
	#Write the app permissions matrix to a file
	cPickle.dump(appMatrix, open(appMatrixFile, 'wb'))
	#return cPickle.load(open(appMatrixFile, 'rb'))

def writeArffFile(appMatrixFile, arffFileContent):
	logging.debug('Finally writing arff file!')
	with open(appMatrixFile, 'w') as fp:
		fp.write(arffFileContent)

#Initiate the clustering process
def initClassification(masterJsonFile, labels, features):
	# Things have been initiated, now to run classification
	# classify.runClassification(getOutputFile(), gs.getSyscallDataJson(masterJsonFile))
	runClassification(json.loads(open(masterJsonFile).read()), labels, features)

def main(argv):
	if len(sys.argv) != 4:
		sys.stderr.write('Usage: python initClassification.py masterJsonFile classLabels featureType')
		sys.exit(1)

	masterJsonFile = sys.argv[1]
	labels = sys.argv[2]
	features = sys.argv[3]

	startTime = time.time()
	#Initiate the clustering process
	initClassification(masterJsonFile, labels, features)
	executionTime = str((time.time()-startTime)*1000)
	print 'Execution time was: '+executionTime+' ms'

if __name__ == "__main__":
	sys.exit(main(sys.argv))