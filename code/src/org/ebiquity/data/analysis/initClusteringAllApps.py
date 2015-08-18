#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on August 14, 2015
@author: Prajit
Usage: python permissionsClustering.py username api_key
'''
import sys
import time
import databaseHandler
import io
import json
import os
from os.path import isfile, join
import platform
import cPickle
import runClustering as runCl

def doTask(username, api_key, appCategoryList, permissionRestrictionList, predictedClustersFile, appMatrixFile):
    dbHandle = databaseHandler.dbConnectionCheck() #DB Open

    #Generate app matrix file once
    appVector = generateAppMatrix(dbHandle,appMatrixFile,appCategoryList,permissionRestrictionList)
    runCl.runClustering(username, api_key, appCategoryList, predictedClustersFile, appMatrixFile, appVector)
    dbHandle.close() #DB Close

def preProcess():
    #appCategoryList = ['APP_WALLPAPER','APP_WIDGETS','BOOKS_AND_REFERENCE','BUSINESS','COMICS','COMMUNICATION','EDUCATION','ENTERTAINMENT','FAMILY','FAMILY?age=AGE_RANGE1','FAMILY?age=AGE_RANGE2','FAMILY?age=AGE_RANGE3','FAMILY_ACTION','FAMILY_BRAINGAMES','FAMILY_CREATE','FAMILY_EDUCATION','FAMILY_MUSICVIDEO','FAMILY_PRETEND','FINANCE','GAME','GAME_ACTION','GAME_ADVENTURE','GAME_ARCADE','GAME_BOARD','GAME_CARD','GAME_CASINO','GAME_CASUAL','GAME_EDUCATIONAL','GAME_MUSIC','GAME_PUZZLE','GAME_RACING','GAME_ROLE_PLAYING','GAME_SIMULATION','GAME_SPORTS','GAME_STRATEGY','GAME_TRIVIA','GAME_WORD','HEALTH_AND_FITNESS','LIBRARIES_AND_DEMO','LIFESTYLE','MEDIA_AND_VIDEO','MEDICAL','MUSIC_AND_AUDIO','NEWS_AND_MAGAZINES','PERSONALIZATION','PHOTOGRAPHY','PRODUCTIVITY','SHOPPING','SOCIAL','SPORTS','TOOLS','TRANSPORTATION','TRAVEL_AND_LOCAL','WEATHER']
    appCategoryList = ['HEALTH_AND_FITNESS']#,'MEDICAL']
    
    permissionRestrictionList = []
    #permissionRestrictionList = ['android.permission.INTERNET','android.permission.ACCESS_NETWORK_STATE']
    if not permissionRestrictionList:
        permissionRestrictionListString = ''
    else:
        permissionRestrictionListString = '\'' + '\',\''.join(permissionRestrictionList) + '\''

    ticks = time.time()
    appMatrixFile = "appMatrix"+str(ticks)+".txt"
    text_file = open(appMatrixFile, "w")
    text_file.write("")
    text_file.close()
    
    predictedClustersFile = "predictedClusters"+str(ticks)+".json"
    text_file = open(predictedClustersFile, "w")
    text_file.write("")
    text_file.close()
    
    return appCategoryList, permissionRestrictionListString, appMatrixFile, predictedClustersFile

def main(argv):
    if len(sys.argv) != 3:
        sys.stderr.write('Usage: python permissionsClustering.py username api_key\n')
        sys.exit(1)
        
    appCategoryList, permissionRestrictionListString, appMatrixFile, predictedClustersFile = preProcess()        

    startTime = time.time()
    doTask(sys.argv[1], sys.argv[2], appCategoryList, permissionRestrictionListString, predictedClustersFile, appMatrixFile)
    executionTime = str((time.time()-startTime)*1000)
    print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
    sys.exit(main(sys.argv))
