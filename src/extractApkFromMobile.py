#!/usr/bin/python

# -*- coding: utf-8 -*-

from bs4 import BeautifulSoup
import urllib
import os 
import sys
import subprocess
import databaseHandler
import platform

# Fire an DML SQL statement and commit data
def dbManipulateData(dbHandle, sqlStatement):
    cursor = dbHandle.cursor()
    try:
        cursor.execute(sqlStatement)
        dbHandle.commit()
    except:
        print "Unexpected error:", sys.exc_info()[0]
        raise

# Update "downloaded" column to mark app has been downloaded
def updateDownloaded(dbHandle, tableId):
    sqlStatement = "UPDATE appurls SET downloaded=1 WHERE id="+str(tableId)+";"
    dbManipulateData(dbHandle, sqlStatement)

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

    subprocess.call(["cd", appsDownloadDirectory])
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

            sqlStatement = "INSERT INTO `appurls`(`app_pkg_name`,`app_url`) VALUES('"+package+"', '"+urlExtract+"');"
            dbManipulateData(dbHandle, sqlStatement)
     
            dbHandle.close() #DB Close

            # Get the path of the apk and extract it
            path = subprocess.check_output(["adb", "shell", "pm", "path", package]).strip().split(":")[-1]
            fileNameOfApk = path.split("/")[-1]
            apk_name = package+".apk"

            # If the apps download directory doesn't exist just create it
            currentDirectory = os.getcwd()

            osInfo = platform.system()
            if osInfo == 'Windows':
                appsDownloadDirectory = currentDirectory+"\\apps\\"
                downloadAPK(appsDownloadDirectory,path)
                subprocess.call(["ren", fileNameOfApk, apk_name])
            elif osInfo == 'Linux':
                appsDownloadDirectory = currentDirectory+"/apps/"
                downloadAPK(appsDownloadDirectory,path)
                subprocess.call(["mv", fileNameOfApk, apk_name])
            else:
                sys.stderr.write('The current os not supported at the moment.\n')
                sys.exit(1)

def main(argv):
    if len(sys.argv) != 1:
        sys.stderr.write('Usage: python downloadAPKs\n')
        sys.exit(1)
    
    downloadAPKFromPhone()

if __name__ == "__main__":
    sys.exit(main(sys.argv))
