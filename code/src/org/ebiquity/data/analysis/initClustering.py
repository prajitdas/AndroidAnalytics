#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on August 14, 2015
@author: Prajit
Usage: python initClustering.py username api_key selectionType restrictionListSelection restrictionType
'''
import numpy as np
import sys
import time
import databaseHandler
import io
import runClustering as runCl
import selectApps
import selectPermissions
import cPickle

def writeMatrixToFile(appMatrix,appMatrixFile):
    #Once the whole matrix is created then dump to a file
    #Write the app permissions matrix to a file            
    cPickle.dump(appMatrix, open(appMatrixFile, 'wb'))
    return cPickle.load(open(appMatrixFile, 'rb'))

def getPermMatrix(dbHandle, appDict, permissionRestrictionList, restrictionType):
    appMatrix = []
    appVector = []
    for appPackageName, appId in appDict.iteritems():
        #extract the permissions vector for each app
        permVector = selectPermissions.extractAppPermisionVector(dbHandle, appId, permissionRestrictionList, restrictionType)
        appVector.append(appPackageName)
        appMatrix.append(permVector)
    
    #Return app vector appMatrix will be read from File
    return appVector, appMatrix

#generate the permission matrix for category list apps
def generateAppMatrixCatApps(dbHandle, appCategoryList, permissionRestrictionList, restrictionType):
    #select the apps to be processed
    appDict = selectApps.getCategoryApps(dbHandle, appCategoryList)
    return getPermMatrix(dbHandle, appDict, permissionRestrictionList, restrictionType)

#generate the permission matrix for all apps
def generateAppMatrixAllApps(dbHandle, permissionRestrictionList, restrictionType):
    #select the apps to be processed
    appDict = selectApps.getTopApps(dbHandle)
    return getPermMatrix(dbHandle, appDict, permissionRestrictionList, restrictionType)

#generate the permission matrix for top apps
def generateAppMatrixTopApps(dbHandle, permissionRestrictionList, restrictionType):
    #select the apps to be processed
    appDict = selectApps.getTopApps(dbHandle)
    return getPermMatrix(dbHandle, appDict, permissionRestrictionList, restrictionType)

#Initiate the clustering process
def initClustering(username, api_key, predictedClustersFile, appMatrixFile, appCategoryList, appCategoryListSelection, permissionRestrictionList, restrictionType):
    dbHandle = databaseHandler.dbConnectionCheck() #DB Open

    if appCategoryListSelection == 'top':
        #generate the permission matrix for top apps
        appVector, appMatrix = generateAppMatrixTopApps(dbHandle, permissionRestrictionList, restrictionType)
    elif appCategoryListSelection == 'all':
        #generate the permission matrix for all apps
        appVector, appMatrix = generateAppMatrixAllApps(dbHandle, permissionRestrictionList, restrictionType)
    else:
        #generate the permission matrix for category list apps
        appVector, appMatrix = generateAppMatrixCatApps(dbHandle, appCategoryList, permissionRestrictionList, restrictionType)

    newAppMatrix = np.array(writeMatrixToFile(appMatrix,appMatrixFile))
    runCl.runClustering(username, api_key, appCategoryListSelection, predictedClustersFile, newAppMatrix, appVector)

    dbHandle.close() #DB Close

def preProcess(appCategoryListSelection, restrictionListSelection):
    if appCategoryListSelection == 'med':
        appCategoryList = ['https://play.google.com/store/apps/category/MEDICAL']
    elif appCategoryListSelection == 'hea':
        appCategoryList = ['https://play.google.com/store/apps/category/HEALTH_AND_FITNESS']
    elif appCategoryListSelection == 'hmd':
        appCategoryList = ['https://play.google.com/store/apps/category/HEALTH_AND_FITNESS','https://play.google.com/store/apps/category/MEDICAL']
    elif appCategoryListSelection == 'top':
        appCategoryList = ['top']
    elif appCategoryListSelection == 'all':
        appCategoryList = ['all']
    '''
    This is the full list:-
    appCategoryList = ['https://play.google.com/store/apps/category/APP_WALLPAPER','https://play.google.com/store/apps/category/APP_WIDGETS','https://play.google.com/store/apps/category/BOOKS_AND_REFERENCE','https://play.google.com/store/apps/category/BUSINESS','https://play.google.com/store/apps/category/COMICS','https://play.google.com/store/apps/category/COMMUNICATION','https://play.google.com/store/apps/category/EDUCATION','https://play.google.com/store/apps/category/ENTERTAINMENT','https://play.google.com/store/apps/category/FAMILY','https://play.google.com/store/apps/category/FAMILY?age=AGE_RANGE1','https://play.google.com/store/apps/category/FAMILY?age=AGE_RANGE2','https://play.google.com/store/apps/category/FAMILY?age=AGE_RANGE3','https://play.google.com/store/apps/category/FAMILY_ACTION','https://play.google.com/store/apps/category/FAMILY_BRAINGAMES','https://play.google.com/store/apps/category/FAMILY_CREATE','https://play.google.com/store/apps/category/FAMILY_EDUCATION','https://play.google.com/store/apps/category/FAMILY_MUSICVIDEO','https://play.google.com/store/apps/category/FAMILY_PRETEND','https://play.google.com/store/apps/category/FINANCE','https://play.google.com/store/apps/category/GAME','https://play.google.com/store/apps/category/GAME_ACTION','https://play.google.com/store/apps/category/GAME_ADVENTURE','https://play.google.com/store/apps/category/GAME_ARCADE','https://play.google.com/store/apps/category/GAME_BOARD','https://play.google.com/store/apps/category/GAME_CARD','https://play.google.com/store/apps/category/GAME_CASINO','https://play.google.com/store/apps/category/GAME_CASUAL','https://play.google.com/store/apps/category/GAME_EDUCATIONAL','https://play.google.com/store/apps/category/GAME_MUSIC','https://play.google.com/store/apps/category/GAME_PUZZLE','https://play.google.com/store/apps/category/GAME_RACING','https://play.google.com/store/apps/category/GAME_ROLE_PLAYING','https://play.google.com/store/apps/category/GAME_SIMULATION','https://play.google.com/store/apps/category/GAME_SPORTS','https://play.google.com/store/apps/category/GAME_STRATEGY','https://play.google.com/store/apps/category/GAME_TRIVIA','https://play.google.com/store/apps/category/GAME_WORD','https://play.google.com/store/apps/category/HEALTH_AND_FITNESS','https://play.google.com/store/apps/category/LIBRARIES_AND_DEMO','https://play.google.com/store/apps/category/LIFESTYLE','https://play.google.com/store/apps/category/MEDIA_AND_VIDEO','https://play.google.com/store/apps/category/MEDICAL','https://play.google.com/store/apps/category/MUSIC_AND_AUDIO','https://play.google.com/store/apps/category/NEWS_AND_MAGAZINES','https://play.google.com/store/apps/category/PERSONALIZATION','https://play.google.com/store/apps/category/PHOTOGRAPHY','https://play.google.com/store/apps/category/PRODUCTIVITY','https://play.google.com/store/apps/category/SHOPPING','https://play.google.com/store/apps/category/SOCIAL','https://play.google.com/store/apps/category/SPORTS','https://play.google.com/store/apps/category/TOOLS','https://play.google.com/store/apps/category/TRANSPORTATION','https://play.google.com/store/apps/category/TRAVEL_AND_LOCAL','https://play.google.com/store/apps/category/WEATHER']
    '''
        
    if restrictionListSelection == 'int':
        permissionRestrictionList = ['android.permission.INTERNET']
    elif restrictionListSelection == 'top25':
        permissionRestrictionList = ['android.permission.INTERNET','android.permission.ACCESS_NETWORK_STATE']
    elif restrictionListSelection == 'google':
        permissionRestrictionList = ['android.permission.INTERNET','android.permission.ACCESS_NETWORK_STATE']
    else:#Select no permission restriction as we did not choose any restriction list
        permissionRestrictionList = []

    ticks = time.time()
    appMatrixFile = "appMatrix"+str(ticks)+".txt"
    text_file = open(appMatrixFile, "w")
    text_file.write("")
    text_file.close()
    
    predictedClustersFile = "predictedClusters"+str(ticks)+".json"
    text_file = open(predictedClustersFile, "w")
    text_file.write("")
    text_file.close()
    
    return appMatrixFile, predictedClustersFile, appCategoryList, permissionRestrictionList

def main(argv):
    if len(sys.argv) != 6:
        sys.stderr.write('Usage: python initClustering.py username api_key selectionType restrictionListSelection restrictionType\n')
        sys.exit(1)

    username = sys.argv[1]
    api_key = sys.argv[2]
    appCategoryListSelection = sys.argv[3]
    restrictionListSelection = sys.argv[4]
    restrictionType = sys.argv[5]
    
    appMatrixFile, predictedClustersFile, appCategoryList, permissionRestrictionList = preProcess(appCategoryListSelection, restrictionListSelection)
    
    startTime = time.time()
    #Initiate the clustering process
    initClustering(username, api_key, predictedClustersFile, appMatrixFile, appCategoryList, appCategoryListSelection, permissionRestrictionList, restrictionType)
    executionTime = str((time.time()-startTime)*1000)
    print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
    sys.exit(main(sys.argv))
