#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on Apr 4, 2015
@author: Prajit Kumar Das
Usage: python downloadAPKs.py
'''

import os
import urllib2
import sys
import databaseHandler
import time

# Update "downloaded" column to mark app has been downloaded
def updateDownloaded(dbHandle, tableId):
	sqlStatement = "UPDATE appurls SET downloaded=1 WHERE id="+str(tableId)+";"
	databaseHandler.dbManipulateData(dbHandle, sqlStatement)

# Download APK
def downloadAPK(dbHandle, tableId, appPackageName):
	URLPrefix = "http://dl3.apk-dl.com/store/download/details?id="
	APKURL = URLPrefix+appPackageName

	# If the apps download directory doesn't exist just create it
	currentDirectory = os.getcwd()
	appsDownloadDirectory = currentDirectory+"/apps/"
	if not os.path.isdir(os.path.dirname(appsDownloadDirectory)):
		os.makedirs(appsDownloadDirectory)

	appDownloadFileLocation = appsDownloadDirectory+appPackageName+".apk"

	outFile = urllib2.urlopen(APKURL)
	apkFile = open(appDownloadFileLocation,'wb')
	apkFile.write(outFile.read())
	apkFile.close()

	if os.path.getsize(appDownloadFileLocation) < 5 * 1024:
		os.remove(appDownloadFileLocation)
	else:
		updateDownloaded(dbHandle, tableId)

# Get URLs for app downloading
def getAppURL(dbHandle):
	cursor = dbHandle.cursor()
	sqlStatement = "SELECT id, app_pkg_name FROM appurls WHERE downloaded = 0;"
	try:
		cursor.execute(sqlStatement)
		queryOutput = cursor.fetchall()
	except:
		print "Unexpected error:", sys.exc_info()[0]
		raise
	for row in queryOutput:
		downloadAPK(dbHandle,row[0],row[1])

def doTask():
	dbHandle = databaseHandler.dbConnectionCheck() # DB Open
	getAppURL(dbHandle)
	dbHandle.close() #DB Close

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python downloadAPKs.py\n')
		sys.exit(1)

	startTime = time.time()
	doTask()
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	sys.exit(main(sys.argv))

#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on Apr 4, 2015
@author: Prajit Kumar Das
Usage: python apkDecompile.py
'''

import os
import sys
import platform
import shutil
import subprocess
from os import listdir
from os.path import isfile, join
from bs4 import BeautifulSoup as Soup
import databaseHandler
import time

def makeSurePathExists(path):
	if os.path.exists(path):
		return True
	return False

def deleteAndReCreateFolder(path):
	if os.path.exists(path):
		shutil.rmtree(path)
	os.makedirs(path)

def isAPKPermissionsAlreadyInTable(dbHandle,pkgName):
	cursor = dbHandle.cursor()
	sqlStatement = "SELECT COUNT(a.app_id) FROM `appperm` a, `appdata` b WHERE a.app_id = b.id AND b.app_pkg_name = '"+pkgName+"';"
	try:
		cursor.execute(sqlStatement)
		if cursor.rowcount > 0:
			return True
		return False
	except:
		print "Unexpected error:", sys.exc_info()[0]
		raise

def runAnalysis(inpath,outPath,currentDirectory):
	#	Run analysis
	dbHandle = databaseHandler.dbConnectionCheck()

	files = [ f for f in listdir(inpath) if isfile(join(inpath,f)) ]
	for inputFile in files:
		os.chdir(inpath)
		pkgName = inputFile.replace(".apk", "")
		outputFolder = outPath+pkgName
		apk = inpath+inputFile
		if isAPKPermissionsAlreadyInTable(dbHandle,pkgName) == 0:
			subprocess.call(["apktool", "d", "-f", apk, "-o", outputFolder], shell=True)
			osInfo = platform.system()
			if osInfo == 'Windows':
				manifestFile = outPath+pkgName+"\\AndroidManifest.xml"
			elif osInfo == 'Linux':
				manifestFile = outPath+pkgName+"/AndroidManifest.xml"
			renamedManifestFile = outPath+pkgName+".xml"
			shutil.copy2(manifestFile, renamedManifestFile)
			#http://stackoverflow.com/questions/1557351/python-delete-non-empty-dir
			'''
				The standard library includes shutil.rmtree for this. By default,

				shutil.rmtree(path)  # errors if dir not empty
				will give OSError: [Errno 66] Directory not empty: <your/path>.

				You can delete the directory and its contents anyway by ignoring the error:

				shutil.rmtree(role_fs_path, ignore_errors=True)
				You can perform more sophisticated error handling by also passing onerrror=<some function(function, path, excinfo)>.
			'''
			shutil.rmtree(outputFolder, ignore_errors=True)
			os.chdir(currentDirectory)
			extractPermissionsInfo(pkgName,renamedManifestFile)
		else:
			print "Moving on to decompiling the next app. This one is already in the database."

def extractManifestFiles():
	currentDirectory = os.getcwd()

	# Detect operating system and takes actions accordingly
	osInfo = platform.system()
	if osInfo == 'Windows':
		decommpileOutputDirectory = currentDirectory+"\\data\\"
		appsFolder = currentDirectory+"\\apps\\"
	elif osInfo == 'Linux':
		decommpileOutputDirectory = currentDirectory+"/data/"
		appsFolder = currentDirectory+"/apps/"
	else:
		print 'The current os not supported at the moment.'

	if makeSurePathExists(appsFolder):
		deleteAndReCreateFolder(decommpileOutputDirectory)
		runAnalysis(appsFolder,decommpileOutputDirectory,currentDirectory)
	else:
		print 'The apps folder doesn\'t exist. Create one and download apks to it and then run this script again.'

def verifyIfPermissionIsInTable(permissionName):
	dbHandle = databaseHandler.dbConnectionCheck()
	cursor = dbHandle.cursor()
	sqlStatement = "SELECT count(*) FROM `permissions` WHERE `name` = '"+permissionName+"';"
	try:
		cursor.execute(sqlStatement)
		if cursor.rowcount > 0:
			return True
		return False
	except:
		print "Unexpected error:", sys.exc_info()[0]
		raise

def extractCustomPermissions(soup):
	for message in soup.findAll('permission'):
		permissionsAttributes = dict(message.attrs)
		permissionName = permissionsAttributes['android:name']
		if 'android:protectionLevel' in permissionsAttributes:
			permissionProtectionLevel = permissionsAttributes['android:protectionLevel']
		else:
			'''
				android:protectionLevel: Characterizes the potential risk implied in the permission and indicates the procedure the system should follow when determining
				whether or not to grant the permission to an application requesting it. The value can be set to one of the following strings:
				"normal": 				The default value. A lower-risk permission that gives requesting applications access to isolated application-level features, with minimal risk
										to other applications, the system, or the user. The system automatically grants this type of permission to a requesting application at installation,
										without asking for the user's explicit approval (though the user always has the option to review these permissions before installing).
				"dangerous":			A higher-risk permission that would give a requesting application access to private user data or control over the device that can negatively impact the user.
										Because this type of permission introduces potential risk, the system may not automatically grant it to the requesting application.
										For example, any dangerous permissions requested by an application may be displayed to the user and require confirmation before proceeding,
										or some other approach may be taken to avoid the user automatically allowing the use of such facilities.
				"signature":			A permission that the system grants only if the requesting application is signed with the same certificate as the application that declared the
										permission. If the certificates match, the system automatically grants the permission without notifying the user or asking for the user's explicit approval.
				"signatureOrSystem":	A permission that the system grants only to applications that are in the Android system image or that are signed with the same certificate as the
										application that declared the permission. Please avoid using this option, as the signature protection level should be sufficient for most needs and works
										regardless of exactly where applications are installed. The "signatureOrSystem" permission is used for certain special situations where multiple vendors
										have applications built into a system image and need to share specific features explicitly because they are being built together.
			'''
			permissionProtectionLevel = 'normal'
		if not verifyIfPermissionIsInTable(permissionName):
			sqlStatement = "INSERT INTO `permissions`(`name`,`protection_level`) VALUES ('"+permissionName+"','"+permissionProtectionLevel+"');"
			dbHandle = databaseHandler.dbConnectionCheck()
			databaseHandler.dbManipulateData(dbHandle, sqlStatement)

def getAppId(dbHandle,sqlStatement,pkgName):
	cursor = dbHandle.cursor()
	try:
		cursor.execute(sqlStatement)
		if cursor.rowcount > 0:
			queryOutput = cursor.fetchall()
			for row in queryOutput:
				appId = row[0]
		else:
			print "Probably the app data for: "+pkgName+" has not been collected because we could not find that app in the database:", sys.exc_info()[0]
			return -1
	except:
		print "Unexpected error:", sys.exc_info()[0]
		raise
	return appId

def getPermissionId(dbHandle,sqlStatement,permissionName):
	cursor = dbHandle.cursor()
	try:
		cursor.execute(sqlStatement)
		if cursor.rowcount > 0:
			queryOutput = cursor.fetchall()
			for row in queryOutput:
				permissionId = row[0]
		else:
			sqlStatement = "INSERT INTO `permissions`(`name`) VALUES ('"+permissionName+"');"
			permissionId = databaseHandler.dbManipulateData(dbHandle, sqlStatement)
	except:
		print "Unexpected error:", sys.exc_info()[0]
		raise
	return permissionId

def extractPermissionsInfo(pkgName,renamedManifestFile):
	XMLFileHandler = open(renamedManifestFile).read()
	soup = Soup(XMLFileHandler)
	# Extract permissions created by the app and store in the DB
	extractCustomPermissions(soup)

	# Extract permissions used by the app and store in the DB
	for message in soup.findAll('uses-permission'):
		permissionName = message.get('android:name')
		dbHandle = databaseHandler.dbConnectionCheck()

		# See if the permission is in the table if not insert it and get its id
		sqlStatementPermName = "SELECT id FROM `permissions` WHERE `name` = '"+permissionName+"';"
		permissionId = getPermissionId(dbHandle,sqlStatementPermName,permissionName)

		# Find the App's Id in the DB
		# Assumption is that the crawlURL has already extracted all information about the app and the same is in the appdata table
		# If that is not true this step will fail and we will
		sqlStatementAppPkgName = "SELECT id FROM `appdata` WHERE `app_pkg_name` = '"+pkgName+"';"
		appId = getAppId(dbHandle,sqlStatementAppPkgName,pkgName)
		if appId > 0:
			# Insert the App_Id and corresponding Perm_Id in to the DB
			sqlStatement = "INSERT INTO `appperm`(`app_id`,`perm_id`) VALUES ("+str(appId)+","+str(permissionId)+");"
			databaseHandler.dbManipulateData(dbHandle, sqlStatement)
		else:
			print "Moving on to the next app"

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python apkDecompile.py\n')
		sys.exit(1)

	startTime = time.time()
	extractManifestFiles()
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	sys.exit(main(sys.argv))