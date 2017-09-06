#!/usr/bin/python
# -*- coding: utf-8 -*-
"""
Created on July 4, 2015
@author: Prajit
Usage: python initWord2Vec.py
"""

import os
import platform
import socket
import getpass
import sys
import time
import databaseHandler
import selectAppDescriptions as sad
import json
import numpy as np
from lda import LDA
import lda.datasets as data

def exampleLDAExecution():
	X = data.load_reuters()
	vocab = data.load_reuters_vocab()
	titles = data.load_reuters_titles()

	# document-term matrix
	X = data.load_reuters()
	print("type(X): {}".format(type(X)))
	print("shape: {}\n".format(X.shape))

	# the vocab
	vocab = data.load_reuters_vocab()
	print("type(vocab): {}".format(type(vocab)))
	print("len(vocab): {}\n".format(len(vocab)))

	# titles for each story
	titles = data.load_reuters_titles()
	print("type(titles): {}".format(type(titles)))
	print("len(titles): {}\n".format(len(titles)))

	doc_id = 0
	word_id = 3117

	print("doc id: {} word id: {}".format(doc_id, word_id))
	print("-- count: {}".format(X[doc_id, word_id]))
	print("-- word : {}".format(vocab[word_id]))
	print("-- doc  : {}".format(titles[doc_id]))

	model = LDA(n_topics=20, n_iter=500, random_state=1)
	model.fit(X)  # model.fit_transform(X) is also available

	topic_word = model.topic_word_  # model.components_ also works
	n_top_words = 10
	for i, topic_dist in enumerate(topic_word):
		topic_words = np.array(vocab)[np.argsort(topic_dist)][:-n_top_words:-1]
		print('Topic {}: {}'.format(i, ' '.join(topic_words)))

	doc_topic = model.doc_topic_
	for i in range(10):
		print("{} (top topic: {})".format(titles[i], doc_topic[i].argmax()))

def appDescriptionsLDA():
	X = data.load_reuters()
	vocab = data.load_reuters_vocab()
	titles = data.load_reuters_titles()

	print X
	print vocab
	print titles

	X.shape
	X.sum()
	model = LDA(n_topics=20, n_iter=500, random_state=1)
	model.fit(X)  # model.fit_transform(X) is also available
	
	topic_word = model.topic_word_  # model.components_ also works
	n_top_words = 10
	for i, topic_dist in enumerate(topic_word):
		topic_words = np.array(vocab)[np.argsort(topic_dist)][:-n_top_words:-1]
		print('Topic {}: {}'.format(i, ' '.join(topic_words)))

	doc_topic = model.doc_topic_
	for i in range(10):
		print("{} (top topic: {})".format(titles[i], doc_topic[i].argmax()))

def getPath():
	if socket.gethostname() == 'eclipse':
		return '/tank/usersc/'+getpass.getuser()+'/'

	currentDirectory = os.getcwd()

	# Detect operating system and take actions accordingly
	osInfo = platform.system()
	if osInfo == 'Windows':
		return currentDirectory+"\\"
	elif osInfo == 'Linux':
		return currentDirectory+"/"
	else:
		print 'The current os not supported at the moment.'
		return None

#Initiate the word2vec process
def initWord2Vec(appCategoryList, appCategoryListSelection, appDescriptionsFile):
	exampleLDAExecution()
	sys.exit(1)
	
	dbHandle = databaseHandler.dbConnectionCheck() #DB Open
	
	with open(appDescriptionsFile, 'w') as fp:
		if appCategoryListSelection == 'top':
			#get the descriptions for top apps
			json.dump(sad.getTopApps(dbHandle), fp, indent=4)
		elif appCategoryListSelection == 'all':
			#get the descriptions for all apps
			json.dump(sad.getAllApps(dbHandle), fp, indent=4)
		elif appCategoryListSelection == 'cattop':
			#get the descriptions for category wise top apps
			json.dump(sad.getCategoryAppsTopFewThousands(dbHandle), fp, indent=4)
		elif appCategoryListSelection == 'hmdtop':
			#get the descriptions for hmd top apps
			json.dump(sad.getHMDAppsTopFewThousands(dbHandle, appCategoryList), fp, indent=4)
		else:
			#get the descriptions for category list apps
			json.dump(sad.getCategoryApps(dbHandle, appCategoryList), fp, indent=4)

	dbHandle.close() #DB Close

def preProcess(appCategoryListSelection):
	if appCategoryListSelection == 'med':
		appCategoryList = ['https://play.google.com/store/apps/category/MEDICAL']
	elif appCategoryListSelection == 'hea':
		appCategoryList = ['https://play.google.com/store/apps/category/HEALTH_AND_FITNESS']
	elif appCategoryListSelection == 'hmd':
		appCategoryList = ['https://play.google.com/store/apps/category/HEALTH_AND_FITNESS','https://play.google.com/store/apps/category/MEDICAL']
	elif appCategoryListSelection == 'hmdtop':
		appCategoryList = ['https://play.google.com/store/apps/category/HEALTH_AND_FITNESS','https://play.google.com/store/apps/category/MEDICAL']
	elif appCategoryListSelection == 'fabra':
		appCategoryList = ['https://play.google.com/store/apps/category/FAMILY_BRAINGAMES']
	elif appCategoryListSelection == 'top':
		appCategoryList = ['top']
	elif appCategoryListSelection == 'all':
		appCategoryList = ['all']
	elif appCategoryListSelection == 'cattop':
		appCategoryList = ['cattop']
	'''
	This is the full list:-
	appCategoryList = ['https://play.google.com/store/apps/category/APP_WALLPAPER','https://play.google.com/store/apps/category/APP_WIDGETS','https://play.google.com/store/apps/category/BOOKS_AND_REFERENCE','https://play.google.com/store/apps/category/BUSINESS','https://play.google.com/store/apps/category/COMICS','https://play.google.com/store/apps/category/COMMUNICATION','https://play.google.com/store/apps/category/EDUCATION','https://play.google.com/store/apps/category/ENTERTAINMENT','https://play.google.com/store/apps/category/FAMILY','https://play.google.com/store/apps/category/FAMILY?age=AGE_RANGE1','https://play.google.com/store/apps/category/FAMILY?age=AGE_RANGE2','https://play.google.com/store/apps/category/FAMILY?age=AGE_RANGE3','https://play.google.com/store/apps/category/FAMILY_ACTION','https://play.google.com/store/apps/category/FAMILY_BRAINGAMES','https://play.google.com/store/apps/category/FAMILY_CREATE','https://play.google.com/store/apps/category/FAMILY_EDUCATION','https://play.google.com/store/apps/category/FAMILY_MUSICVIDEO','https://play.google.com/store/apps/category/FAMILY_PRETEND','https://play.google.com/store/apps/category/FINANCE','https://play.google.com/store/apps/category/GAME','https://play.google.com/store/apps/category/GAME_ACTION','https://play.google.com/store/apps/category/GAME_ADVENTURE','https://play.google.com/store/apps/category/GAME_ARCADE','https://play.google.com/store/apps/category/GAME_BOARD','https://play.google.com/store/apps/category/GAME_CARD','https://play.google.com/store/apps/category/GAME_CASINO','https://play.google.com/store/apps/category/GAME_CASUAL','https://play.google.com/store/apps/category/GAME_EDUCATIONAL','https://play.google.com/store/apps/category/GAME_MUSIC','https://play.google.com/store/apps/category/GAME_PUZZLE','https://play.google.com/store/apps/category/GAME_RACING','https://play.google.com/store/apps/category/GAME_ROLE_PLAYING','https://play.google.com/store/apps/category/GAME_SIMULATION','https://play.google.com/store/apps/category/GAME_SPORTS','https://play.google.com/store/apps/category/GAME_STRATEGY','https://play.google.com/store/apps/category/GAME_TRIVIA','https://play.google.com/store/apps/category/GAME_WORD','https://play.google.com/store/apps/category/HEALTH_AND_FITNESS','https://play.google.com/store/apps/category/LIBRARIES_AND_DEMO','https://play.google.com/store/apps/category/LIFESTYLE','https://play.google.com/store/apps/category/MEDIA_AND_VIDEO','https://play.google.com/store/apps/category/MEDICAL','https://play.google.com/store/apps/category/MUSIC_AND_AUDIO','https://play.google.com/store/apps/category/NEWS_AND_MAGAZINES','https://play.google.com/store/apps/category/PERSONALIZATION','https://play.google.com/store/apps/category/PHOTOGRAPHY','https://play.google.com/store/apps/category/PRODUCTIVITY','https://play.google.com/store/apps/category/SHOPPING','https://play.google.com/store/apps/category/SOCIAL','https://play.google.com/store/apps/category/SPORTS','https://play.google.com/store/apps/category/TOOLS','https://play.google.com/store/apps/category/TRANSPORTATION','https://play.google.com/store/apps/category/TRAVEL_AND_LOCAL','https://play.google.com/store/apps/category/WEATHER']
	'''

	ticks = time.time()
	uniformString = str(ticks).replace('.', '')
	appDescriptionsFile = getPath()+'appDescription'+uniformString+'.json'
	text_file = open(appDescriptionsFile, 'w')
	text_file.write('')
	text_file.close()

	return appCategoryList, appDescriptionsFile

def main(argv):
	if len(sys.argv) != 2:
		sys.stderr.write('Usage: python initWord2Vec.py appCategoryListSelection\n')
		sys.exit(1)

	appCategoryListSelection = sys.argv[1]

	appCategoryList, appDescriptionsFile = preProcess(appCategoryListSelection)

	startTime = time.time()
	initWord2Vec(appCategoryList, appCategoryListSelection, appDescriptionsFile)
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	main(sys.argv)