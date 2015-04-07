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

def runAnalysis(inpath,outPath,currentDirectory):
	#	Run analysis

	files = [ f for f in listdir(inpath) if isfile(join(inpath,f)) ]
	for inputFile in files:
		os.chdir(inpath)
		pkgName = inputFile.replace(".apk", "")
		outputFolder = outPath+pkgName
		subprocess.call(["apktool", "d", "-f", inpath+inputFile, "-o", outputFolder], shell=True)
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
		permissionProtectionLevel = permissionsAttributes['android:protectionlevel']
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
			raise
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

		# Insert the App_Id and corresponding Perm_Id in to the DB
		sqlStatement = "INSERT INTO `appperm`(`app_id`,`perm_id`) VALUES ("+str(appId)+","+str(permissionId)+");"
		databaseHandler.dbManipulateData(dbHandle, sqlStatement)

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
