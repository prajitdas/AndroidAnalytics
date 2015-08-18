#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on August 18, 2015
@author: Prajit
Usage: python selectApps.py selectionType
'''
import sys
import time
import databaseHandler
import io
import json
import os
from os.path import isfile, join
import platform

#No longer necessary to call this
def isDataCollected(dbHandle,packageName):
    cursor = dbHandle.cursor()
    sqlStatement = "SELECT perm_extracted,parsed FROM `appurls` WHERE `app_pkg_name` = '"+packageName+"';"
    try:
        cursor.execute(sqlStatement)
        if cursor.rowcount == 0:
            print packageName,",error was: url not collected"
            return False
        else:
            queryOutput = cursor.fetchall()
            for row in queryOutput:
                if row[0] == 0:
                    if row[1] == 0:
                        print packageName,",error was: data and permissions not collected"
                    else:
                        print packageName,",error was: permissions not collected but data collected"
                    return False
                else:
                    if row[1] == 0:
                        print packageName,",error was: permissions collected but data not collected"
                        return False
                    else:
                        print packageName,"data and permissions collected"
                        return True
    except:
        print "Unexpected error in isDataCollected:", sys.exc_info()[0]
        raise

def getAppDict(dbHandle,sqlStatement):
    cursor = dbHandle.cursor()
    appDict = {}
    try:
        cursor.execute(sqlStatement)
        print "Extracting app package names and ids"
        if cursor.rowcount > 0:
            queryOutput = cursor.fetchall()
            for row in queryOutput:
                appDict[row[1]] = row[0]
    except:
        print "Unexpected error in extractAllApps:", sys.exc_info()[0]
        raise
    return appDict

def getTopAppsFromDownloadedJSONs(dbHandle):
    # Detect operating system and takes actions accordingly
    osInfo = platform.system()
    currentDirectory = os.getcwd()
    if osInfo == 'Windows':
        topAppJsonsFrom42MattersAPIDirectory = currentDirectory+"\\topAppJsonsFrom42MattersAPI"
    elif osInfo == 'Linux' or osInfo == 'Darwin':
        topAppJsonsFrom42MattersAPIDirectory = currentDirectory+"/topAppJsonsFrom42MattersAPI"
    
    appNameList = []
    for filename in os.listdir(topAppJsonsFrom42MattersAPIDirectory):
        topAppDict = json.loads(open(os.path.join(topAppJsonsFrom42MattersAPIDirectory,filename), 'r').read().decode('utf8'))
        for appData in topAppDict['appList']:
            if 'package_name' in appData:
                packageName = str(appData['package_name'])
                #isDataCollected(dbHandle,packageName)
                appNameList.append(packageName) 

    sqlStatement = "SELECT a.`id`, a.`app_pkg_name` FROM `appdata` a, `appurls` url WHERE a.`app_pkg_name` = url.`app_pkg_name` AND url.`perm_extracted` = 1 AND a.`app_pkg_name` IN ("+databaseHandler.convertPythonListToSQLQueryList(appNameList)+");"
    return getAppDict(dbHandle,sqlStatement)

def extractAllApps(dbHandle):    
    sqlStatement = "SELECT a.`id`, a.`app_pkg_name` FROM `appdata` a, `appurls` url WHERE a.`app_pkg_name` = url.`app_pkg_name` AND url.`perm_extracted` = 1;"
    return getAppDict(dbHandle,sqlStatement)

def extractAppsFromCategory(dbHandle,appCategoryList):
    appCategorySQLQueryList = databaseHandler.convertPythonListToSQLQueryList(appCategoryList)
    sqlStatement = "SELECT a.`id`, a.`app_pkg_name` FROM `appdata` a, `appurls` url, `appcategories` cat WHERE a.`app_pkg_name` = url.`app_pkg_name` AND url.`perm_extracted` = 1 AND cat.`url` IN ("+appCategorySQLQueryList+") AND a.`app_category_id` = cat.`id`;"
    return getAppDict(dbHandle,sqlStatement)

# Get a bunch of apps from which you want to get the permissions
# Select apps which have had their permissions extracted
def getCategoryApps(dbHandle,appCategoryList):
    return extractAppsFromCategory(dbHandle,appCategoryList)

def getAllApps(dbHandle):
    return extractAllApps(dbHandle)

def getTopApps(dbHandle):
    return getTopAppsFromDownloadedJSONs(dbHandle)

def preProcess(selectionType):
    if selectionType == 'top':
        appCategoryList = ['top']
    elif selectionType == 'med':
        appCategoryList = ['https://play.google.com/store/apps/category/MEDICAL']
    elif selectionType == 'hea':
        appCategoryList = ['https://play.google.com/store/apps/category/HEALTH_AND_FITNESS']
    elif selectionType == 'hmd':
        appCategoryList = ['https://play.google.com/store/apps/category/HEALTH_AND_FITNESS','https://play.google.com/store/apps/category/MEDICAL']
    elif selectionType == 'all':
        appCategoryList = ['all']
    '''
    This is the full list:-
    appCategoryList = ['https://play.google.com/store/apps/category/APP_WALLPAPER','https://play.google.com/store/apps/category/APP_WIDGETS','https://play.google.com/store/apps/category/BOOKS_AND_REFERENCE','https://play.google.com/store/apps/category/BUSINESS','https://play.google.com/store/apps/category/COMICS','https://play.google.com/store/apps/category/COMMUNICATION','https://play.google.com/store/apps/category/EDUCATION','https://play.google.com/store/apps/category/ENTERTAINMENT','https://play.google.com/store/apps/category/FAMILY','https://play.google.com/store/apps/category/FAMILY?age=AGE_RANGE1','https://play.google.com/store/apps/category/FAMILY?age=AGE_RANGE2','https://play.google.com/store/apps/category/FAMILY?age=AGE_RANGE3','https://play.google.com/store/apps/category/FAMILY_ACTION','https://play.google.com/store/apps/category/FAMILY_BRAINGAMES','https://play.google.com/store/apps/category/FAMILY_CREATE','https://play.google.com/store/apps/category/FAMILY_EDUCATION','https://play.google.com/store/apps/category/FAMILY_MUSICVIDEO','https://play.google.com/store/apps/category/FAMILY_PRETEND','https://play.google.com/store/apps/category/FINANCE','https://play.google.com/store/apps/category/GAME','https://play.google.com/store/apps/category/GAME_ACTION','https://play.google.com/store/apps/category/GAME_ADVENTURE','https://play.google.com/store/apps/category/GAME_ARCADE','https://play.google.com/store/apps/category/GAME_BOARD','https://play.google.com/store/apps/category/GAME_CARD','https://play.google.com/store/apps/category/GAME_CASINO','https://play.google.com/store/apps/category/GAME_CASUAL','https://play.google.com/store/apps/category/GAME_EDUCATIONAL','https://play.google.com/store/apps/category/GAME_MUSIC','https://play.google.com/store/apps/category/GAME_PUZZLE','https://play.google.com/store/apps/category/GAME_RACING','https://play.google.com/store/apps/category/GAME_ROLE_PLAYING','https://play.google.com/store/apps/category/GAME_SIMULATION','https://play.google.com/store/apps/category/GAME_SPORTS','https://play.google.com/store/apps/category/GAME_STRATEGY','https://play.google.com/store/apps/category/GAME_TRIVIA','https://play.google.com/store/apps/category/GAME_WORD','https://play.google.com/store/apps/category/HEALTH_AND_FITNESS','https://play.google.com/store/apps/category/LIBRARIES_AND_DEMO','https://play.google.com/store/apps/category/LIFESTYLE','https://play.google.com/store/apps/category/MEDIA_AND_VIDEO','https://play.google.com/store/apps/category/MEDICAL','https://play.google.com/store/apps/category/MUSIC_AND_AUDIO','https://play.google.com/store/apps/category/NEWS_AND_MAGAZINES','https://play.google.com/store/apps/category/PERSONALIZATION','https://play.google.com/store/apps/category/PHOTOGRAPHY','https://play.google.com/store/apps/category/PRODUCTIVITY','https://play.google.com/store/apps/category/SHOPPING','https://play.google.com/store/apps/category/SOCIAL','https://play.google.com/store/apps/category/SPORTS','https://play.google.com/store/apps/category/TOOLS','https://play.google.com/store/apps/category/TRANSPORTATION','https://play.google.com/store/apps/category/TRAVEL_AND_LOCAL','https://play.google.com/store/apps/category/WEATHER']
    '''
    return appCategoryList

def main(argv):
    if len(sys.argv) != 2:
        sys.stderr.write('Usage: python selectApps.py selectionType\n')
        sys.exit(1)
        
    dbHandle = databaseHandler.dbConnectionCheck() #DB Open
    startTime = time.time()
    appCategoryList = preProcess(sys.argv[1])
    # Get a bunch of apps from which you want to get the permissions
    # Select apps which have had their permissions extracted
    if appCategoryList[0] == 'top':
        appDict = getTopApps(dbHandle)
    elif appCategoryList[0] == 'all':
        appDict = getAllApps(dbHandle)
    else:
        appDict = getCategoryApps(dbHandle,appCategoryList)
    executionTime = str((time.time()-startTime)*1000)
    print "Execution time was: "+executionTime+" ms"
#     print appDict
    dbHandle.close() #DB Close

if __name__ == "__main__":
    sys.exit(main(sys.argv))
