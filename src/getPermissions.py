#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on May 16, 2015
@author: Prajit Kumar Das

Usage: python getPermissions.py\n
'''
import time
import sys
import databaseHandler

from GooglePlayAPI import permissions

def isAPKPermissionsAlreadyInTable(dbHandle,pkgName):
	cursor = dbHandle.cursor()
	sqlStatement = "SELECT COUNT(a.app_id) FROM `appperm` a, `appdata` b WHERE a.app_id = b.id AND b.app_pkg_name = '"+pkgName+"';"
	try:
		cursor.execute(sqlStatement)
		queryOutput = cursor.fetchall()
		for row in queryOutput:
			if row[0] > 0:
				return True
			return False
	except:
		print "Unexpected error:", sys.exc_info()[0]
		raise
	
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
			# If permission is found permission table great, just return the permission id to be inserted into the appperm table
			queryOutput = cursor.fetchall()
			for row in queryOutput:
				permissionId = row[0]
		else:
			# If permission is NOT found permission table then insert it in the table and return the permission id to be inserted into the appperm table
			# We are inserting protection level as signature by default.
			# The data quality can be improved further by analyzing the apks or 
			# by carrying out post analysis on the `AndroidManifest.xml file <https://raw.githubusercontent.com/android/platform_frameworks_base/master/core/res/AndroidManifest.xml>`_
			sqlStatement = "INSERT INTO `permissions`(`name`,`protection_level`) VALUES ('"+permissionName+"','signature');"
			permissionId = databaseHandler.dbManipulateData(dbHandle, sqlStatement)
	except:
		print "Unexpected error:", sys.exc_info()[0]
		raise
	return permissionId

def extractPermissionsInfo(dbHandle,pkgName):
	if isAPKPermissionsAlreadyInTable(dbHandle,pkgName) == True:
		print "Moving on to decompiling the next app. This one is already in the database."
	else:
		# Extract permissions using the API and store in the DB
		pkgNameList=[]
		pkgNameList.append(pkgName)
		listOfPermissions = permissions.getPackagePermission(pkgNameList)
		
		for permissionName in listOfPermissions:
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

# Update "downloaded" column should be permissions_extracted column, but its okay for the moment, to mark permissions have been extracted
def updateDownloaded(dbHandle, tableId):
	sqlStatement = "UPDATE `appurls` SET `downloaded`=1 WHERE `id`="+str(tableId)+";"
	databaseHandler.dbManipulateData(dbHandle, sqlStatement)

def doTask():
	dbHandle = databaseHandler.dbConnectionCheck() # DB Open
# TEST
# 	extractPermissionsInfo(dbHandle,"a.a.a.A")
# 	extractPermissionsInfo(dbHandle,"com.expedia.bookings")
# 	sys.exit(0)
# TEST
	cursor = dbHandle.cursor()
	sqlStatement = "SELECT `id`, `app_pkg_name` FROM `appurls` WHERE `downloaded` = 0;"
	try:
		cursor.execute(sqlStatement)
		queryOutput = cursor.fetchall()
	except:
		print "Unexpected error:", sys.exc_info()[0]
		raise
	for row in queryOutput:
		extractPermissionsInfo(dbHandle,row[1])
		updateDownloaded(dbHandle,row[0])

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python getPermissions.py\n')
		sys.exit(1)
		
	startTime = time.time()
	doTask()
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	sys.exit(main(sys.argv))

'''
*******************************************************************************************************
WE ARE SUSPENDING CHANGES TO THE REST OF THE CODE FOR NOW AS THE OTHER CODE IS WORKING IN GooglePlayAPI
*******************************************************************************************************
Created on Apr 4, 2015
@author: Sandeep Nair
@edited_by: Prajit Kumar Das

Usage: python getPermissions.py <inp_fileName> <number of threads>\n
Output format:-
"1";"a.akakao.neon_simple";"https://play.google.com/store/apps/details?id=a.akakao.neon_simple";"1";"1";"1"
The script will create n output files named like thread_1, thread_2 ... thread_n for each thread you start..

import threading
import time
import sys
import os
import shutil
from lxml import etree
from selenium import webdriver
#from selenium.webdriver.common.keys import Keys
from bs4 import BeautifulSoup
import databaseHandler
from StringIO import StringIO
import urllib2
import httplib
import traceback

# Hit a URL, extract URLs and Store new URLs back
def extractMoreURLsAndStore(dbHandle, urlExtract):
	headers = { 'User-Agent' : 'Mozilla/5.0' }
	req = urllib2.Request(urlExtract, None, headers)
	try: 
		page = urllib2.urlopen(req).read()
		soup = BeautifulSoup(''.join(page))
		data = soup.findAll(attrs={'class': 'card-click-target'})
	
		for chunk in data:
			url = "https://play.google.com"+chunk['href']
			packageName = url.split("=")
			sqlStatement = "INSERT INTO `appurls`(`app_pkg_name`,`app_url`) VALUES('"+packageName[1]+"', '"+url+"');"
			databaseHandler.dbManipulateData(dbHandle, sqlStatement)
	except urllib2.HTTPError, e:
		print 'HTTPError = ', str(e.code)
		sqlStatement = "DELETE FROM `appurls` WHERE `app_url` = '"+urlExtract+"';"
		databaseHandler.dbManipulateData(dbHandle, sqlStatement)
	except urllib2.URLError, e:
		print 'URLError = ' + str(e.reason)
	except httplib.HTTPException, e:
		print 'HTTPException'
	except Exception:
		print 'generic exception: ' + traceback.format_exc()

# Update "downloaded" column should be permissions_extracted column, but its okay for the moment, to mark permissions have been extracted
def updateDownloaded(dbHandle, tableId):
	sqlStatement = "UPDATE `appurls` SET `downloaded`=1 WHERE `id`="+str(tableId)+";"
	databaseHandler.dbManipulateData(dbHandle, sqlStatement)
	
def deleteTempFiles():
	try:
		path = "/tmp/"
		time.sleep(1)
		for f in os.listdir(path):
			if not f.startswith("."):
				fp = os.path.join(path, f)
				if os.path.isfile(fp):
					os.unlink(fp)
				if os.path.isdir(fp):
					shutil.rmtree(fp)
	except:
		print "Exception during deletion"

def get_permissions(file_contents,tid,url):
	html_p = etree.HTMLParser()
	tree = etree.parse(StringIO(file_contents), html_p)
	#FirstPerms = tree.xpath("//*[@class='permission-bucket']")
	FirstPerms = tree.xpath("//*[@class='bucket-description']/li")
	SecondPerms = tree.xpath("//*[@class='bucket-description']/jsl/li")
	perms = []
	if FirstPerms is not None:
		for i in FirstPerms:
			#print i.text
			perms.append(i.text)
	if SecondPerms is not None:
		for i in SecondPerms:
			#print i.text
			perms.append(i.text)
	op = url
	for pe in perms:
		if pe is None:
			op = op + ",NONE"
		else:
			op = op + "," + pe
	writeToFile(tid, op)

def writeToFile(tid,con):
	fname = "thread_" + str(tid)
	files = open(fname, "a")
	con = con + "\n"
	files.write(con)
	files.close()

def get_permissions_url(inp_url,tid,browser):
	try:
		driver = webdriver.Firefox()
		driver.get(inp_url)
		driver.find_element_by_xpath("//*[@class='content id-view-permissions-details fake-link']").click()
		html_source = driver.page_source
		encoded_data = html_source.encode("UTF-8")
		print "closing Driver"
		driver.close()
		print "driver closed"
		perms = get_permissions(encoded_data, tid, inp_url)
		print perms
		if perms is not None:
			for p in perms:
				print p
	except:
		op = inp_url + ",EXCEPTION"
		writeToFile(tid, op)
		driver.close()

# Get URLs for extracting more URLs
def extractPermissions(dbHandle,queryOutput,browser,numberOfThreads):
	count = 0
	threads = []
	urls = []
	sleepCount = 0
# 	line = "https://play.google.com/store/apps/details?id=com.syntellia.fleksy.kb"
# 	"1";"a.akakao.neon_simple";"https://play.google.com/store/apps/details?id=a.akakao.neon_simple";"1";"1";"1"
	for row in queryOutput:
		#updateDownloaded(dbHandle,row[0])
		#line = row[1]#The first column holds the "line" or as such the url to be used for extracting permissions
		sleepCount += 1
# 		cont = line.split(";")
# 		var = cont[2]
		finalVar = row[1]#var[1:len(var)-1] 
		#The first column holds the "line" or as such the url to be used for extracting permissions
# 		finalVar = "1";"a.akakao.neon_simple";"https://play.google.com/store/apps/details?id=a.akakao.neon_simple";"1";"1";"1"
# 		line = "https://play.google.com/store/apps/details?id=com.syntellia.fleksy.kb"
		print finalVar
		if sleepCount * numberOfThreads < 50:
			deleteTempFiles()
			sleepCount = 0
		if count < numberOfThreads:
			urls.append(finalVar)
			count += 1
		else:
			tcnt = 0
			for i in urls:
				this_thr = threading.Thread (target=get_permissions_url, args = [i, tcnt, browser])
				threads.append(this_thr)
				this_thr.start()
				print "thread " + str (tcnt) + "started"
				tcnt += 1
			ii = 0
			for j in threads:
				print "thread " + str(ii) + "is joining"
				j.join()
				ii+= 1
			threads = []
			count = 0
			urls = []
			urls.append(finalVar)
			count+=1

def doTask():
	browser = "firefox"
	numberOfThreads = int(sys.argv[1])
	#https://play.google.com/store/apps/details?id=com.syntellia.fleksy.kb
	#readInputFile(numberOfThreads, browser)

	dbHandle = databaseHandler.dbConnectionCheck() # DB Open
	cursor = dbHandle.cursor()
	countOfURLs = 0
	numberOfSteps = 0
	sqlStatement = "SELECT COUNT(`id`) FROM `appurls` WHERE `downloaded` = 0;"
	try:
		cursor.execute(sqlStatement)
		queryOutput = cursor.fetchall()
	except:
		print "Unexpected error:", sys.exc_info()[0]
		raise
	for row in queryOutput:
		countOfURLs = row[0]
		stepSize = 10#0000
		numberOfSteps = 1#countOfURLs/stepSize
		for stepCount in range(0,numberOfSteps):
			rowCount = stepCount * stepSize 
			offset = rowCount + 1
# 			sqlStatement = "SELECT `id`, `app_url` FROM `appurls` WHERE `downloaded` = 0 LIMIT "+str(offset)+","+str(stepSize)+";"
			sqlStatement = "SELECT `id`, `app_url` FROM `appurls` WHERE `downloaded` = 0 LIMIT "+str(50000)+","+str(stepSize)+";"
			try:
				cursor.execute(sqlStatement)
				queryOutput = cursor.fetchall()
			except:
				print "Unexpected error:", sys.exc_info()[0]
				raise
			extractPermissions(dbHandle,queryOutput,browser,numberOfThreads)

def main(argv):
	if len(sys.argv) != 2:
		sys.stderr.write('Usage: python getPermissions.py <number of threads>\n')
		sys.exit(1)
		
	startTime = time.time()
	doTask()
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	sys.exit(main(sys.argv))
'''