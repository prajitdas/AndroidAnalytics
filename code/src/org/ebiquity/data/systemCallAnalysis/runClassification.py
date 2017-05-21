'''
Created on June 28, 2016
Modified May 21, 2017
@author: Prajit Kumar Das
Usage: python runClassification.py masterJsonFile classLabels featureType
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

import sys
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.neural_network import MLPClassifier
from sklearn.neighbors import KNeighborsClassifier
from sklearn.svm import SVC
from sklearn.gaussian_process import GaussianProcessClassifier
from sklearn.gaussian_process.kernels import RBF
from sklearn.tree import DecisionTreeClassifier
from sklearn.ensemble import RandomForestClassifier, AdaBoostClassifier
from sklearn.naive_bayes import GaussianNB
from sklearn.discriminant_analysis import QuadraticDiscriminantAnalysis
from sklearn.metrics import precision_recall_fscore_support as prf1

#h = .02  # step size in the mesh
google=0
my=1
syscalls=2

names = ["Nearest Neighbors", "Linear SVM", "RBF SVM", "Gaussian Process",
		 "Decision Tree", "Random Forest", "Neural Net", "AdaBoost",
		 "Naive Bayes", "QDA"]

#names = ["Linear SVM"]
#classifiers = [SVC(kernel="linear", C=0.025)]
classifiers = [
	KNeighborsClassifier(3),
	SVC(kernel="linear", C=0.025),
	SVC(gamma=2, C=1),
	GaussianProcessClassifier(1.0 * RBF(1.0), warm_start=True),
	DecisionTreeClassifier(max_depth=5),
	RandomForestClassifier(max_depth=5, n_estimators=10, max_features=1),
	MLPClassifier(alpha=1),
	AdaBoostClassifier(),
	GaussianNB(),
	QuadraticDiscriminantAnalysis()]

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
	return list(set(labelList))

def altDoClassify(jsonDict, labels, features):
	termDocMatrix, allSyscallsVector = cd.createTermDocMatrix(jsonDict, features)
	X, y = generateNormalFeatureMatrix(termDocMatrix, allSyscallsVector, labels)
	X = StandardScaler().fit_transform(X)
	X_train, X_test, y_train, y_test = \
		train_test_split(X, y, test_size=.4, random_state=42)
	resultDict={}
	prf1sDict={}
	# iterate over classifiers
	for name, clf in zip(names, classifiers):
		clf.fit(X_train, y_train)
		y_pred=clf.predict(X_test)
		precision, recall, fscore, support = prf1(y_test, y_pred)
		score = clf.score(X_test, y_test)
		print "done with ", name, score, precision, recall, fscore
		prf1sDict["score"] = score
		prf1sDict["precision"] = precision
		prf1sDict["recall"] = recall
		prf1sDict["fscore"] = fscore
		resultDict[name] = prf1sDict
	print resultDict
	return resultDict

def doClassify(jsonDict, labels, features):
	termDocMatrix, allSyscallsVector = cd.createTermDocMatrix(jsonDict, features)
	appLabelList=getAppLabelList(termDocMatrix, labels)
	index = 0
	resultDict={}
	for appLabel in appLabelList:
		X, y = generateFeatureMatrix(termDocMatrix, allSyscallsVector, labels, appLabel)
		X = StandardScaler().fit_transform(X)
		X_train, X_test, y_train, y_test = \
			train_test_split(X, y, test_size=.4, random_state=42)
		perLabelResult={}
		prf1sDict={}
		# iterate over classifiers
		for name, clf in zip(names, classifiers):
			index += 1
			clf.fit(X_train, y_train)
			score = clf.score(X_test, y_test)
			y_pred=clf.predict(X_test)
			precision, recall, fscore, support = prf1(y_test, y_pred, average='binary', pos_label=1)
			if len(set(y_train)) != 2:
				print "OH NOOOOOOOO!!!!!!!!!!!!!!"+appLabel
			if index%20 ==0:
				print "done with "+str(index)
			prf1sDict["score"] = score
			prf1sDict["precision"] = precision
			prf1sDict["recall"] = recall
			prf1sDict["fscore"] = fscore
			perLabelResult[name] = prf1sDict
		resultDict[appLabel] = perLabelResult
	print resultDict
	return resultDict

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
				X[index]=np.asarray(termDocMatrix[app][syscalls])
				if termDocMatrix[app][my] == currentLabel:
					y[index]=1
				else:
					y[index]=0
				index+=1
	else:
		for app in termDocMatrix:
			if app == "allSystemCalls":
				continue
			else:
				X[index]=np.asarray(termDocMatrix[app][syscalls])
				if termDocMatrix[app][google] == currentLabel:
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
				X[index]=np.asarray(termDocMatrix[app][syscalls])
				value = termDocMatrix[app][my]
				if value in appLabelList:
					y[index]=appLabelList.index(value)
				index+=1
	else:
		for app in termDocMatrix:
			if app == "allSystemCalls":
				continue
			else:
				X[index]=np.asarray(termDocMatrix[app][syscalls])
				value = termDocMatrix[app][google]
				if value in appLabelList:
					y[index]=appLabelList.index(value)
				index+=1
	return X,y

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
			arffFileContent+=','.join(str(freq) for freq in termDocMatrix[app][syscalls])
			'''
				REMEMBER! REMEMBER! The something of November :P This is where we choose which class label we test against
				termDocMatrix[app][0] -> annotated class labels by Google
				termDocMatrix[app][1] -> annotated class labels by "experts"
				remember to comment out the right line above in getAppCategoryList(termDocMatrix)
			'''
			# [0]: Google category
			# [1]: My category
			if labels == "my":
				arffFileContent+=','+termDocMatrix[app][my]
			else:
				arffFileContent+=','+termDocMatrix[app][google]
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

def runClassification(jsonDict, labels, features):
	ultimateResults={}
	ultimateResults["multiclass"] = altDoClassify(jsonDict, labels, features)
#	ultimateResults["1vsall"] = doClassify(jsonDict, labels, features)
	return ultimateResults

def format_seconds_to_hhmmss(seconds):
	hours = seconds // (60*60)
	seconds %= (60*60)
	minutes = seconds // 60
	seconds %= 60
	return "%02i hours, %02i minutes, %02i seconds" % (hours, minutes, seconds)

def main(argv):
	if len(sys.argv) != 4:
		sys.stderr.write('Usage: python initClassification.py masterJsonFile classLabels featureType')
		sys.exit(1)

	masterJsonFile = sys.argv[1]
	labels = sys.argv[2]
	features = sys.argv[3]

	startTime = time.time()
	output = runClassification(json.loads(open(masterJsonFile).read()), labels, features)
	open("results.json","w").write(json.dumps(output, indent=4))
	executionTime = (time.time()-startTime)
	print 'Execution time was: '+format_seconds_to_hhmmss(executionTime)

if __name__ == "__main__":
	main(sys.argv)