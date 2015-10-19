import os
import sys
import platform
import shutil
import subprocess
from os import listdir
from os.path import isfile, join
from bs4 import BeautifulSoup as Soup

import time


#Remove content provider permissions from AndroidManifest.xml
#sys.argv[1])
def doitForApp(appName, appPath, outputFolder, keyStore):
    #appPathSplit = appPath.split("\\")
    #numberAppPathSplit = appPathSplit.count
    #appName = 
    appDir = outputFolder + "\\" + appName
    if not os.path.exists(appDir):
        print "Creating Folder", appDir
        #os.makedirs(appDir)
    print "Running Apktool to decompile APK"
    #subprocess.call(["apktool", "d", "-f", appPath, "-o", appDir], shell=True)
    manifestFile = appDir + "/AndroidManifest.xml" 
    print "modifying manifestFile ", manifestFile
    modifyManifest(manifestFile)
    print "Repackaging the APK"
    #subprocess.call(["apktool", "b", appDir], shell=True)
    finalApk = appDir + "\\dist\\" + appName + ".apk"
    subprocess.call(["c:\\Program Files\\Java\\jdk1.8.0_51\\bin\\jarsigner.exe",  "-verbose",  "-sigalg",  "SHA1withRSA",  "-digestalg",  "SHA1",  "-keystore", keyStore, finalApk, "myAndroid",  "-storepass",  "umbcumbc"], shell=True)
def modifyManifest(manifestFile):  
    XMLFileHandler = open(manifestFile).read()
    soup = Soup(XMLFileHandler, 'xml')
    # Extract permissions created by the app and store in the DB
    # extractCustomPermissions(soup)
    # Extract permissions used by the app and store in the DB
    permissionsList = []
    for message in soup.findAll('permission'):
        permissionName = message.get('android:name')
        print permissionName 
        permissionsList.append(permissionName)
        message.extract()
    for item in permissionsList:
        for message in soup.findAll('uses-permission'):
            permissionName = message.get('android:name')
            if permissionName == item:
                message.extract()
        for message in soup.findAll('receiver'):
            permissionName = message.get('android:permission')
            if permissionName == item:
                message['android:permission'] = ""
        for message in soup.findAll('service'):
            permissionName = message.get('android:permission')
            if permissionName == item:
                message['android:permission'] = ""
        for message in soup.findAll('application'):
            permissionName = message.get('android:permission')
            if permissionName == item:
                message['android:permission'] = ""
        for message in soup.findAll('activity-alias'):
            permissionName = message.get('android:permission')
            if permissionName == item:
                message['android:permission'] = ""
        for message in soup.findAll('activity'):
            permissionName = message.get('android:permission')
            if permissionName == item:
                message['android:permission'] = ""
        for message in soup.findAll('provider'):
            permissionName = message.get('android:permission')
            if permissionName == item:
                del message['android:permission']
            permissionName = message.get('android:readpermission')
            if permissionName == item:
                del message['android:readpermission']
            permissionName = message.get('android:writepermission')
            if permissionName == item:
                del message['android:writepermission']
    #Write back to Android Manifest XML
    print "Writing to manifestFile ", manifestFile
    outputfile = open(manifestFile, "w")
    outputfile.write(str(soup))
    outputfile.close()
    #print soup

doitForApp(sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4])#appName, outputFolder):
#firstIteration("apktool/com.facebook.katana/AndroidManifest.xml")
		
   
