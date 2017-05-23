'''
Created on June 28, 2016
Modified May 21, 2017
@author: Prajit Kumar Das
Usage: python runClassification.py
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
from sklearn.svm import SVC
from sklearn.metrics import precision_recall_fscore_support
from sklearn.metrics import classification_report
from sklearn.multiclass import OneVsRestClassifier
from sklearn.dummy import DummyClassifier
from sklearn.linear_model import LogisticRegression
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.decomposition import TruncatedSVD
#from sklearn.neighbors import KNeighborsClassifier
#from sklearn.tree import DecisionTreeClassifier
#from sklearn.ensemble import RandomForestClassifier, AdaBoostClassifier
#from sklearn.naive_bayes import GaussianNB
#from sklearn.gaussian_process import GaussianProcessClassifier
#from sklearn.gaussian_process.kernels import RBF
#from sklearn.discriminant_analysis import QuadraticDiscriminantAnalysis
#h = .02  # step size in the mesh
google=0
my=1
syscalls=2
testRatio=0.25

#names = ["Nearest Neighbors", "Linear SVM", "RBF SVM", "Gaussian Process",
#		 "Decision Tree", "Random Forest", "Neural Net", "AdaBoost",
#		 "Naive Bayes", "QDA"]
names=["Linear SVM","Neural Net","Dummy","Logistic Regression"]
classifiers = [
	SVC(kernel="linear", C=0.025),
	MLPClassifier(alpha=1),
	DummyClassifier(strategy='most_frequent'),
	LogisticRegression(multi_class='multinomial',solver='lbfgs')]
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

def getAppLabelList(termDocMatrix, label):
	labelList = []
	if label == "my":
		for app in termDocMatrix:
			if app == "allSystemCalls":
				continue
			else:
				labelList.append(str(termDocMatrix[app][1]))
	else:
		for app in termDocMatrix:
			if app == "allSystemCalls":
				continue
			else:
				labelList.append(str(termDocMatrix[app][0]))
	labelList = list(set(labelList))
#	index = 0
#	for label in labelList:
#		print index, label
#		index += 1
	return labelList

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

def generateNormalFeatureMatrix(termDocMatrix, allSyscallsVector, labels, appLabelList):
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

def altDoClassify(jsonDict, label, feature):
	termDocMatrix, allSyscallsVector = cd.createTermDocMatrix(jsonDict, feature)
	labels=getAppLabelList(termDocMatrix, label)
	X, y = generateNormalFeatureMatrix(termDocMatrix, allSyscallsVector, label, labels)
	X = StandardScaler().fit_transform(X)
	X_train, X_test, y_train, y_test = \
		train_test_split(X, y, test_size=.4, random_state=42)
	resultDict={}
	# iterate over classifiers
	for name, clf in zip(names, classifiers):
		clf.fit(X_train, y_train)
		y_pred=clf.predict(X_test)
		prf1sDict={}
		try:
			precision, recall, fscore, support = precision_recall_fscore_support(y_test, y_pred, average='weighted')
			#LogisticRegression(multi_class="multinomial", verbose=1, n_jobs=-1, solver="lbfgs", max_iter=100000)
			score = clf.score(X_test, y_test)
			prf1sDict["score"] = score
			prf1sDict["precision"] = precision
			prf1sDict["recall"] = recall
			prf1sDict["fscore"] = fscore
			resultDict[name] = prf1sDict
		except ValueError:
			print name
			continue
	return resultDict

def anotherDoClassify(jsonDict, label, feature, labels):
	termDocMatrix, allSyscallsVector = cd.createTermDocMatrix(jsonDict, feature)
	appLabelList=getAppLabelList(termDocMatrix, label)
	index = 0
	resultDict={}
	for appLabel in appLabelList:
		X, y = generateFeatureMatrix(termDocMatrix, allSyscallsVector, label, appLabel)
		X = StandardScaler().fit_transform(X)
		X_train, X_test, y_train, y_test = \
			train_test_split(X, y, test_size=testRatio, random_state=42)
		perLabelResult={}
		# iterate over classifiers
		for name, clf in zip(names, classifiers):
			index += 1
			clf.fit(X_train, y_train)
			score = clf.score(X_test, y_test)
			y_pred=clf.predict(X_test)
			prf1sDict={}
			prf1sDict["trainy1"] = y_train.tolist().count(1)
			prf1sDict["trainy0"] = y_train.tolist().count(0)
			prf1sDict["testy1"] = y_test.tolist().count(1)
			prf1sDict["testy0"] = y_test.tolist().count(0)
			try:
				precision, recall, fscore, support = precision_recall_fscore_support(y_test, y_pred, average='binary', pos_label=1, labels=labels)
				prf1sDict["report"] = classification_report(y_test, y_pred, labels=labels)
				if len(set(y_train)) != 2:
					print "OH NOOOOOOOO!!!!!!!!!!!!!!"+appLabel
				prf1sDict["score"] = score
				prf1sDict["precision1"] = precision
				prf1sDict["recall1"] = recall
				prf1sDict["fscore1"] = fscore
				precision, recall, fscore, support = precision_recall_fscore_support(y_test, y_pred, average='binary', pos_label=0, labels=labels)
				prf1sDict["precision0"] = precision
				prf1sDict["recall0"] = recall
				prf1sDict["fscore0"] = fscore
				perLabelResult[name] = prf1sDict
			except ValueError:
				print name, appLabel
				continue
		resultDict[appLabel] = perLabelResult
	return resultDict

def doClassify(jsonDict, label, feature):
	return {}
	termDocMatrix, allSyscallsVector = cd.createTermDocMatrix(jsonDict, feature)
	labels=getAppLabelList(termDocMatrix, label)
	X, y = generateNormalFeatureMatrix(termDocMatrix, allSyscallsVector, label, labels)
	resultDict={}
	X = StandardScaler().fit_transform(X)
	X_train, X_test, y_train, y_test = \
		train_test_split(X, y, test_size=testRatio, random_state=42)
	# iterate over classifiers
	for name, aclf in zip(names, classifiers):
		if name != "Logistic Regression":
			clf=OneVsRestClassifier(aclf)
		else:
			clf=aclf
		clf.fit(X_train, y_train)
		score=clf.score(X_test, y_test)
		y_pred=clf.predict(X_test)
		score_=clf.score(X_train, y_train)
		y_pred_=clf.predict(X_train)
		prf1sDict={}
		try:
			precision, recall, fscore, support = precision_recall_fscore_support(y_test, y_pred, average='weighted')
			prf1sDict["testReport"] = classification_report(y_test, y_pred)
			prf1sDict["testScore"] = score
			prf1sDict["testPrecision"] = precision
			prf1sDict["testRecall"] = recall
			prf1sDict["testFscore"] = fscore
			precision_, recall_, fscore_, support_ = precision_recall_fscore_support(y_train, y_pred_, average='weighted')
			prf1sDict["trainReport"] = classification_report(y_train, y_pred_)
			prf1sDict["trainScore"] = score_
			prf1sDict["trainPrecision"] = precision_
			prf1sDict["trainRecall"] = recall_
			prf1sDict["trainFscore"] = fscore_
			resultDict[name] = prf1sDict
		except ValueError:
			print name
			continue
	return resultDict

def tfidfDoClassify(X_train, X_test, y_train, y_test, labels):
	resultDict={}
	# iterate over classifiers
	for name, aclf in zip(names, classifiers):
		if name != "Logistic Regression":
			clf=OneVsRestClassifier(aclf)
		else:
			clf=aclf
		clf.fit(X_train, y_train)
		score=clf.score(X_test, y_test)
		y_pred=clf.predict(X_test)
		score_=clf.score(X_train, y_train)
		y_pred_=clf.predict(X_train)
		prf1sDict={}
		try:
			precision, recall, fscore, support = precision_recall_fscore_support(y_test, y_pred, average='weighted', labels=labels)
			prf1sDict["testReport"] = classification_report(y_test, y_pred, labels=labels)
			prf1sDict["testScore"] = score
			prf1sDict["testPrecision"] = precision
			prf1sDict["testRecall"] = recall
			prf1sDict["testFscore"] = fscore
			precision_, recall_, fscore_, support_ = precision_recall_fscore_support(y_train, y_pred_, average='weighted', labels=labels)
			prf1sDict["trainReport"] = classification_report(y_train, y_pred_, labels=labels)
			prf1sDict["trainScore"] = score_
			prf1sDict["trainPrecision"] = precision_
			prf1sDict["trainRecall"] = recall_
			prf1sDict["trainFscore"] = fscore_
			resultDict[name] = prf1sDict
		except ValueError:
			print name
			continue
	return resultDict

#def runClassification(jsonDict, label, feature):
#	ultimateResults={}
#	ultimateResults["multiclass"] = altDoClassify(jsonDict, label, feature)
#	ultimateResults["1vsall"] = doClassify(jsonDict, label, feature)
#	ultimateResults["OneVsRestClassifier"] = anotherDoClassify(jsonDict, label, feature)
#	return ultimateResults

def doTFIDFUnigram(corpus, label):
	doTFIDF(corpus, label, TfidfVectorizer(min_df=1,ngram_range=(1,1),analyzer='word'))

def doTFIDFBiGram(corpus, label):
	doTFIDF(corpus, label, TfidfVectorizer(min_df=1,ngram_range=(2,2),analyzer='word'))

def doTFIDFTriGram(corpus, label):
	doTFIDF(corpus, label, TfidfVectorizer(min_df=1,ngram_range=(3,3),analyzer='word'))

def doTFIDFAllGram(corpus, label):
	doTFIDF(corpus, label, TfidfVectorizer(min_df=1,ngram_range=(1,3),analyzer='word'))

def doTFIDF(corpus, label, vectorizer):
	if label == 'my':
		labelList = list(set(corpus["my"]))
		X_train, X_test, y_train, y_test = \
			train_test_split(corpus["corpus"], corpus["my"], test_size=testRatio, random_state=42)
	else:
		labelList = list(set(corpus["google"]))
		X_train, X_test, y_train, y_test = \
			train_test_split(corpus["corpus"], corpus["google"], test_size=testRatio, random_state=42)
	X_train=vectorizer.fit_transform(X_train)
	X_test=vectorizer.transform(X_test)

	sampleSize,featureSize=X_train.shape
	if featureSize >= 8000:
		size2k=2000
		size4k=4000
		size8k=8000
	elif featureSize < 8000 and featureSize >= 4000:
		size2k=2000
		size4k=4000
		size8k=4000
	elif featureSize < 4000 and featureSize >= 2000:
		size2k=2000
		size4k=2000
		size8k=2000
	else:
		size2k=featureSize
		size4k=featureSize
		size8k=featureSize
	print "shape:", X_train.shape
	print "features:", featureSize
	print "samples:", sampleSize
	print "size2k:", size2k
	print "size4k:", size4k
	print "size8k:", size8k

	tfidfResults = {}

	svd2 = TruncatedSVD(n_components=size2k)
	X_train=svd2.fit_transform(X_train)
	X_test=svd2.transform(X_test)
	X_train=StandardScaler().fit_transform(X_train)
	X_test=StandardScaler().fit_transform(X_test)
	tfidfResults["2k"] = tfidfDoClassify(X_train, X_test, y_train, y_test, labelList)

	svd4 = TruncatedSVD(n_components=size4k)
	X_train=svd4.fit_transform(X_train)
	X_test=svd4.transform(X_test)
	X_train=StandardScaler().fit_transform(X_train)
	X_test=StandardScaler().fit_transform(X_test)
	tfidfResults["4k"] = tfidfDoClassify(X_train, X_test, y_train, y_test, labelList)

	svd8 = TruncatedSVD(n_components=size8k)
	X_train=svd8.fit_transform(X_train)
	X_test=svd8.transform(X_test)
	X_train=StandardScaler().fit_transform(X_train)
	X_test=StandardScaler().fit_transform(X_test)
	tfidfResults["8k"] = tfidfDoClassify(X_train, X_test, y_train, y_test, labelList)

	return tfidfResults

def format_seconds_to_hhmmss(seconds):
	hours = seconds // (60*60)
	seconds %= (60*60)
	minutes = seconds // 60
	seconds %= 60
	return "%02i hours, %02i minutes, %02i seconds" % (hours, minutes, seconds)

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python runClassification.py')
		sys.exit(1)

	startTime = time.time()
	output={}
	gramDict={}
	for gramIndex in [1,2,3]:
		jsonFile = str(gramIndex)+"gram534.json"
		labelDict={}
#		if gramIndex != 1:
#			continue
		for label in ['my','google']:
			featureDict={}
#			if label != 'my':
#				continue
			for feature in ['justc','numoc']:
				featureDict[feature] = doClassify(json.loads(open(jsonFile).read()), label, feature)
				print "done with "+feature+" features"
			labelDict[label] = featureDict
			print "done with "+label+" labels"
		gramDict[str(gramIndex)+"gram534"] = labelDict
		print "done with "+str(gramIndex)+" gram"
	output["NGramResults"] = gramDict

	tfidfDict={}
	corpus = json.loads(open("corpus.json","r").read())

	tfidfDict["my-all-grams"] = doTFIDFAllGram(corpus, "my")
	print "done with tfidf my labels all grams"
	tfidfDict["my-uni-grams"] = doTFIDFUnigram(corpus, "my")
	print "done with tfidf my labels uni grams"
	tfidfDict["my-bi-grams"] = doTFIDFBiGram(corpus, "my")
	print "done with tfidf my labels bi grams"
	tfidfDict["my-tri-grams"] = doTFIDFTriGram(corpus, "my")
	print "done with tfidf my labels tri grams"

#	tfidfDict["google-all-grams"] = doTFIDFAllGram(corpus, "google")
#	print "done with tfidf google labels all grams"
#	tfidfDict["google-uni-grams"] = doTFIDFUnigram(corpus, "google")
#	print "done with tfidf google labels uni grams"
#	tfidfDict["google-bi-grams"] = doTFIDFBiGram(corpus, "google")
#	print "done with tfidf google labels bi grams"
#	tfidfDict["google-tri-grams"] = doTFIDFTriGram(corpus, "google")
#	print "done with tfidf google labels tri grams"

	output["TFIDFResults"] = tfidfDict

	result={}
	result["results"] = output
	open("results.json","w").write(json.dumps(result, indent=4))
	executionTime = (time.time()-startTime)
	print 'Execution time was: '+format_seconds_to_hhmmss(executionTime)

if __name__ == "__main__":
	main(sys.argv)