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
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.decomposition import TruncatedSVD
from sklearn.linear_model import LogisticRegression
from sklearn.neighbors import KNeighborsClassifier
from sklearn.tree import DecisionTreeClassifier
from sklearn.ensemble import RandomForestClassifier, AdaBoostClassifier
from sklearn.naive_bayes import GaussianNB
from sklearn.metrics import confusion_matrix
from sklearn.feature_selection import chi2
import pandas as pd
import logging
logging.basicConfig(filename='classification.log',level=logging.DEBUG)

def doTFIDF(corpus):
	a = []
	b = []
	vectorizer = TfidfVectorizer(min_df=1,ngram_range=(2,2),analyzer='word')
	y = list(set(corpus["my"]))
	X=vectorizer.fit_transform(corpus["corpus"])
	anovaTest(X,y)
	# for iteration in range(0,2):
	# 	skf = StratifiedKFold(n_splits=10)
	# 	for train_index, test_index in skf.split(X, y):
	# 		# print train_index, test_index
	# 		X_train, X_test = X[train_index], X[test_index]
	# 		y_train, y_test = y[train_index], y[test_index]
	# 		# iterate over classifiers
	# 		for name, clf in zip(names, classifiers):
	# 			print "Running cliasifer:", name
	# 			clf.fit(X_train, y_train) # Train the model
	# 			y_pred=clf.predict(X_test) # Do the predcition on test set
	# 			tn, fp, fn, tp = np.array(confusion_matrix(y_test, y_pred))
	# 			if name == "Neural Net":
	# 				a.append(fp+fn)
	# 			else:
	# 				b.append(fp+fn)

	# tstat, pvalue = stats.ttest_rel(a,b)
	# print a, b, tstat, pvalue

def format_seconds_to_hhmmss(seconds):
	hours = seconds // (60*60)
	seconds %= (60*60)
	minutes = seconds // 60
	seconds %= 60
	return "%02i hours, %02i minutes, %02i seconds" % (hours, minutes, seconds)

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

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python runClassification.py')
		sys.exit(1)

	startTime = time.time()
	corpus = json.loads(open("corpus.json","r").read())

	doTFIDF(corpus)
	
	executionTime = (time.time()-startTime)
	print 'Execution time was: '+format_seconds_to_hhmmss(executionTime)

if __name__ == "__main__":
	main(sys.argv)
