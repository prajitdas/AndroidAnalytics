"""
Created on August 12,2017
@author: Prajit Kumar Das

Usage: python runClassification.py\n
"""
import os
import json
import sys
import time
import datetime
from random import sample
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.neural_network import MLPClassifier
from sklearn.svm import SVC
from sklearn.metrics import precision_recall_fscore_support
from sklearn.metrics import classification_report
from sklearn.multiclass import OneVsRestClassifier
from sklearn.dummy import DummyClassifier
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.decomposition import TruncatedSVD
from sklearn.linear_model import LogisticRegression
from sklearn.neighbors import KNeighborsClassifier
from sklearn.tree import DecisionTreeClassifier
from sklearn.ensemble import RandomForestClassifier, AdaBoostClassifier, ExtraTreesClassifier
from sklearn.naive_bayes import GaussianNB
from sklearn.metrics import confusion_matrix
from sklearn.feature_selection import chi2
import numpy as np
import matplotlib.pyplot as plt
from scipy import stats
import databaseHandler as db
import logging
logging.basicConfig(filename="classification.log",level=logging.DEBUG)

testRatio=0.25

names = ["Dummy",
		 "Linear SVM",
		 "Nearest Neighbors",
		 "Decision Tree",
		 "Random Forest",
		 "RBF SVM",
		 "Neural Net",
		 "AdaBoost",
		 "Naive Bayes",
		 "Logistic Regression"]		 
classifiers = [DummyClassifier(strategy="most_frequent"),
				SVC(kernel="linear", C=1),
				KNeighborsClassifier(3),
				DecisionTreeClassifier(max_depth=5),
				RandomForestClassifier(max_depth=5, n_estimators=10, max_features=1),
				SVC(kernel="poly", C=1),
				MLPClassifier(alpha=1),
				AdaBoostClassifier(),
				GaussianNB(),
				LogisticRegression(multi_class='multinomial',solver='lbfgs')]

def doClassify(X,y):
	resultDict={}
	X_train, X_test, y_train, y_test = \
		train_test_split(X, y, test_size=testRatio, random_state=42)
	X_train = StandardScaler().fit_transform(X_train)
	X_test = StandardScaler().fit_transform(X_test)
	# iterate over classifiers
	for name, clf in zip(names, classifiers):
		print "Running cliasifer:", name
		if name != "Logistic Regression":
			clf=OneVsRestClassifier(clf)
		clf.fit(X_train, y_train)
		y_pred=clf.predict(X_test)
		y_pred_=clf.predict(X_train)
		prf1sDict={}
		precision = 0
		recall = 0
		fscore = 0
		support = 0
		try:
			precision, recall, fscore, support = precision_recall_fscore_support(y_test, y_pred, average="weighted")
			logging.debug(str(precision)+","+str(recall)+","+str(fscore)+","+str(support)+","+name)
			score=clf.score(X_test, y_test)
			prf1sDict["testReport"] = classification_report(y_test, y_pred)
			labels=list(set(y_test))
			confMat = confusion_matrix(y_test, y_pred, labels=labels)
			print "confMat type:", type(confMat)
			print "confMat len:", len(confMat)
			print "confMat:"
			print confMat
			print labels
			prf1sDict["testConfMat"] = confMat.tolist()
			prf1sDict["testScore"] = score
			prf1sDict["testPrecision"] = precision
			prf1sDict["testRecall"] = recall
			prf1sDict["testFscore"] = fscore
			precision_, recall_, fscore_, support_ = precision_recall_fscore_support(y_train, y_pred_, average="weighted")
			score_=clf.score(X_train, y_train)
			prf1sDict["trainReport"] = classification_report(y_train, y_pred_)
			prf1sDict["trainConfMat"] = confusion_matrix(y_train, y_pred_).tolist()
			prf1sDict["trainScore"] = score_
			prf1sDict["trainPrecision"] = precision_
			prf1sDict["trainRecall"] = recall_
			prf1sDict["trainFscore"] = fscore_
			resultDict[name] = prf1sDict
		except ValueError:
			print "Error for claissifier:", name
			print "Unexpected error in test:", sys.exc_info()
			continue
	return resultDict

def extractData(appDict):
	allAppsDict = {}
	permissionsList = []
	for app in appDict:
		extractedDict = {}

		extractedDict["app"] = app
		extractedDict["permissions"] = appDict[app]["permissions"]
		extractedDict["annotated_category"] = appDict[app]["annotated_category"]
		extractedDict["google_play_category"] = appDict[app]["google_play_category"]

		for permission in appDict[app]["permissions"]:
			permissionsList.append(permission)

		allAppsDict[app] = extractedDict

	return list(set(permissionsList)), allAppsDict

def runClassification(permissionsList,allAppsDict,category):
	X = []
	y = []

	for app in allAppsDict:
		classificationFeatures = []

		for permission in permissionsList:
			if permission in allAppsDict[app]["permissions"]:
				classificationFeatures.append(1)
			else:
				classificationFeatures.append(0)

		X.append(classificationFeatures)
		y.append(allAppsDict[app][category])

	return np.array(X),np.array(y)

def anovaTest(X,y):
	print "ANOVA Test"

	alarm_clock = []
	battery_saver = []
	drink_recipes = []
	file_explorer = []
	lunar_calendar = []
	pdf_reader = []
	scientific_calculator = []
	to_do_list = []
	video_playback = []
	wifi_analyzer = []
	index = 0
	for behaviorCat in y:
		if behaviorCat == "alarm_clock":
			alarm_clock.append(X[index])
		elif behaviorCat == "battery_saver":
			battery_saver.append(X[index])
		elif behaviorCat == "drink_recipes":
			drink_recipes.append(X[index])
		elif behaviorCat == "file_explorer":
			file_explorer.append(X[index])
		elif behaviorCat == "lunar_calendar":
			lunar_calendar.append(X[index])
		elif behaviorCat == "pdf_reader":
			pdf_reader.append(X[index])
		elif behaviorCat == "scientific_calculator":
			scientific_calculator.append(X[index])
		elif behaviorCat == "to_do_list":
			to_do_list.append(X[index])
		elif behaviorCat == "video_playback":
			video_playback.append(X[index])
		elif behaviorCat == "wifi_analyzer":
			wifi_analyzer.append(X[index])
		index += 1

	pValues = 0.0
	for loopCount in range(100000):
		a = alarm_clock[np.random.choice(len(alarm_clock))]
		b = battery_saver[np.random.choice(len(battery_saver))]
		c = drink_recipes[np.random.choice(len(drink_recipes))]
		d = file_explorer[np.random.choice(len(file_explorer))]
		e = lunar_calendar[np.random.choice(len(lunar_calendar))]
		f = pdf_reader[np.random.choice(len(pdf_reader))]
		g = scientific_calculator[np.random.choice(len(scientific_calculator))]
		h = to_do_list[np.random.choice(len(to_do_list))]
		i = video_playback[np.random.choice(len(video_playback))]
		j = wifi_analyzer[np.random.choice(len(wifi_analyzer))]

		tstat, pval = stats.f_oneway(a,b,c,d,e,f,g,h,i,j)
		pValues += pval

		# if not np.array_equal(a, b):
		# tstat, pval = stats.ttest_rel(a,b)
		# print type(pval)
		# print "Index chosen:", index
		# print "The t-statistic is", tstat, "and the p-value is", pval

	print "Average p-value:", pValues/100000.0

def MLP(X,y):
	precision = 0
	recall = 0
	fscore = 0
	support = 0

	X_train, X_test, y_train, y_test = \
		train_test_split(X, y, stratify=y, test_size=testRatio, random_state=42)
	X_train = StandardScaler().fit_transform(X_train)
	X_test = StandardScaler().fit_transform(X_test)

	mlp = MLPClassifier(hidden_layer_sizes=(100,100), max_iter=400, alpha=1e-4, solver='sgd', verbose=400, tol=1e-4, random_state=1, learning_rate_init=1e-1)
	# mlp = MLPClassifier(hidden_layer_sizes=(50,), max_iter=100, alpha=1e-4, solver='sgd', verbose=100, tol=1e-4, random_state=1, learning_rate_init=1e-1)
	mlp.fit(X_train, y_train)

	y_pred = mlp.predict(X_test)
	y_pred_ = mlp.predict(X_train)

	precision, recall, fscore, support = precision_recall_fscore_support(y_test, y_pred, average="weighted")
	score = mlp.score(X_test, y_test)
	print "classification_report_test\n", classification_report(y_test, y_pred)
	tn, fp, fn, tp = confusion_matrix(y_test, y_pred).ravel()

	precision_, recall_, fscore_, support_ = precision_recall_fscore_support(y_train, y_pred_, average="weighted")
	score_=mlp.score(X_train, y_train)
	print "classification_report_train\n", classification_report(y_train, y_pred_)
	tn, fp, fn, tp = confusion_matrix(y_train, y_pred_).ravel()

	print "testTN", tn
	print "testFP", fp
	print "testFN", fn
	print "testTP", tp
	print "testPrecision", precision
	print "testRecall", recall
	print "testFscore", fscore
	print "Training set score:", score
	print "Test set score:", score_
	print "trainTN", tn
	print "trainFP", fp
	print "trainFN", fn
	print "trainTP", tp
	print "trainPrecision", precision_
	print "trainRecall", recall_
	print "trainFscore", fscore_

	# # print len(mlp.coefs_[0])
	# print mlp.coefs_[0].shape
	# # print mlp.coefs_.shape
	# # arr = np.array(mlp.coefs_)
	# # print arr.shape

	# fig, ax = plt.subplots(1, 1, figsize=(15,6))
	# ax.imshow(np.transpose(mlp.coefs_[0]), cmap=plt.get_cmap("gray"), aspect="auto")
	# # use global min / max to ensure all weights are shown on the same scale
	# vmin, vmax = mlp.coefs_[0].min(), mlp.coefs_[0].max()
	# # use global min / max to ensure all weights are shown on the same scale
	# plt.matshow(mlp.coefs_[0].reshape(len(mlp.coefs_[0]), 50), cmap=plt.cm.gray, vmin=.5 * vmin, vmax=.5 * vmax)
	# # plt.set_xticks(())
	# # plt.set_yticks(())

	# plt.show()

def featureImportance(X,y,permissionsList):
	a = []
	b = []
	for iteration in range(0,5):
		skf = StratifiedKFold(n_splits=5)
		for train_index, test_index in skf.split(X, y):
			# print train_index, test_index
			X_train, X_test = X[train_index], X[test_index]
			y_train, y_test = y[train_index], y[test_index]
			# iterate over classifiers
			for name, clf in zip(names, classifiers):
				print "Running cliasifer:", name
				clf.fit(X_train, y_train) # Train the model
				y_pred=clf.predict(X_test) # Do the predcition on test set
				labels=list(set(y_test))
				confMat = confusion_matrix(y_test, y_pred, labels=labels)
				print "confMat type:", type(confMat)
				print "confMat len:", len(confMat)
				print "confMat:", confMat
				print labels
				misclassificationError = 0
				for i in range(0,10):
					for j in range(0,10):
						if i != j:
							misclassificationError += confMat[i][j]
				if name == "Neural Net":
					a.append(misclassificationError)
				else:
					b.append(misclassificationError)

	tstat, pvalue = stats.ttest_rel(a,b)
	print a, b, tstat, pvalue

	# Plot the feature importances of the forest
	plt.figure()
	plt.title("Feature importances")
	plt.bar(range(nparray.shape[1]), importances[indices],
	color="r", yerr=std[indices], align="center")
	plt.xticks(range(nparray.shape[1]), indices)
	plt.xlim([-1, nparray.shape[1]])
	plt.show()

def main(argv):
	startTime = time.time()

	permissionsList, allAppsDict = extractData(json.loads(open("data.json","r").read()))
	# print permissionsList

	X,y = runClassification(permissionsList, allAppsDict, "google_play_category")
	# result = doClassify(X,y)
	# open("resultsGoogle.json","w").write(json.dumps(result, indent=4))
	# print "Done with google play categories"

	# X,y = runClassification(permissionsList, allAppsDict, "annotated_category")
	# result = doClassify(X,y)
	# open("resultsAnnotated.json","w").write(json.dumps(result, indent=4))
	# print "Done with annotated categories"

	# anovaTest(X,y)
	featureImportance(X,y)

	executionTime = str((time.time()-startTime)/60)
	print "Execution time was: "+executionTime+" minutes"

if __name__ == "__main__":
	main(sys.argv)