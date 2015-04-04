#!/usr/bin/python

# -*- coding: utf-8 -*-

from bs4 import BeautifulSoup
import urllib
import os 
import sys
import subprocess
import databaseHandler

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

            # If the apps download directory doesn't exist just create it
            currentDirectory = os.getcwd()
            appsDownloadDirectory = currentDirectory+"/apps/"
            if not os.path.isdir(os.path.dirname(appsDownloadDirectory)):
                os.makedirs(appsDownloadDirectory)

            subprocess.call(["cd", appsDownloadDirectory])
            subprocess.call(["adb", "pull", path])

def main(argv):
    if len(sys.argv) != 1:
        sys.stderr.write('Usage: python downloadAPKs\n')
        sys.exit(1)
    
    downloadAPKFromPhone()

if __name__ == "__main__":
    sys.exit(main(sys.argv))
