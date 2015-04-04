#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on Apr 4, 2015
@author: Prajit Kumar Das
Usage: python extractApkFromMobile
'''

from bs4 import BeautifulSoup
import urllib
import os 
import sys
import subprocess
import databaseHandler
import platform
import _mysql_exceptions
import time

# Update "downloaded" column to mark app has been downloaded
def updateDownloaded(dbHandle, tableId):
    sqlStatement = "UPDATE appurls SET downloaded=1 WHERE id="+str(tableId)+";"
    databaseHandler.dbManipulateData(dbHandle, sqlStatement)

def verifyPresentInAppMarket(urlExtract):
    sorryString = "We're sorry, the requested URL was not found on this server."
    page = urllib.urlopen(urlExtract).read()
    soup = BeautifulSoup(''.join(page))
    for data in soup.findAll(attrs={'class': 'rounded'}):
        if sorryString in data.string:
            return False
    return True

def downloadAPK(appsDownloadDirectory,path):
    if not os.path.isdir(os.path.dirname(appsDownloadDirectory)):
        os.makedirs(appsDownloadDirectory)

    os.chdir(appsDownloadDirectory)
    subprocess.call(["adb", "pull", path])

def downloadAPKFromPhone():
    urlPrefix = "https://play.google.com/store/apps/details?id="
    listOfPackages = subprocess.check_output(["adb", "shell", "pm", "list", "packages"])
#    This is a brilliant Python line I learnt from AK
#     lines = [line.strip() for line in listOfPackages.split()]
    for line in listOfPackages.split():
        package = line.strip().split(":")[-1]
        urlPrefix = "https://play.google.com/store/apps/details?id="
        urlExtract = urlPrefix+package
        if verifyPresentInAppMarket(urlExtract):
            dbHandle = databaseHandler.dbConnectionCheck() # DB Open

            sqlStatement = "INSERT INTO `appurls`(`app_pkg_name`,`app_url`,`downloaded`) VALUES('"+package+"', '"+urlExtract+"', 1);"
            try:
                databaseHandler.dbManipulateData(dbHandle, sqlStatement)
            except _mysql_exceptions.IntegrityError:
                sqlStatement = "SELECT `id` FROM `appurls` WHERE app_pkg_name = '"+package+"';"
                cursor = dbHandle.cursor()
                try:
                    cursor.execute(sqlStatement)
                    queryOutput = cursor.fetchall()
                except:
                    print "Unexpected error:", sys.exc_info()[0]
                    raise
                for row in queryOutput:
                    updateDownloaded(dbHandle,row[0])
                
            dbHandle.close() #DB Close

            # Get the path of the apk and extract it
            path = subprocess.check_output(["adb", "shell", "pm", "path", package]).strip().split(":")[-1]

            # If the apps download directory doesn't exist just create it
            currentDirectory = os.getcwd()

            osInfo = platform.system()
            if osInfo == 'Windows':
                appsDownloadDirectory = currentDirectory+"\\apps\\"
                downloadAPK(appsDownloadDirectory,path)
            elif osInfo == 'Linux':
                appsDownloadDirectory = currentDirectory+"/apps/"
                downloadAPK(appsDownloadDirectory,path)
            else:
                sys.stderr.write('The current os not supported at the moment.\n')
                sys.exit(1)
            copiedFromPhoneAPKName = appsDownloadDirectory+path.split("/")[-1]
            realPackageBasedAPKName = appsDownloadDirectory+package+".apk"
            try:
                os.rename(copiedFromPhoneAPKName, realPackageBasedAPKName)
            except WindowsError:
                # The file already exists, we should copy the new apk over it
                os.remove(realPackageBasedAPKName)
                os.rename(copiedFromPhoneAPKName, realPackageBasedAPKName)
            os.chdir(currentDirectory)

def main(argv):
    if len(sys.argv) != 1:
        sys.stderr.write('Usage: python extractApkFromMobile\n')
        sys.exit(1)
    
    startTime = time.time()
    downloadAPKFromPhone()
    executionTime = str((time.time()-startTime)*1000)
    print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
    sys.exit(main(sys.argv))
