#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on Apr 4, 2015
@author: Sandeep Nair
@edited_by: Prajit Kumar Das

Usage: python getPermissions.py <inp_fileName> <number of threads>\n
Output format:-
"1";"a.akakao.neon_simple";"https://play.google.com/store/apps/details?id=a.akakao.neon_simple";"1";"1";"1"
The script will create n output files named like thread_1, thread_2 ... thread_n for each thread you start..
'''
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

# Update "urls_extracted" column to mark urls have been extracted
def updateURLsExtracted(dbHandle, tableId):
	sqlStatement = "UPDATE `appurls` SET `urls_extracted`=1 WHERE `id`="+str(tableId)+";"
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
		if perms is not None:
			for p in perms:
				print p
	except:
		op = inp_url + ",EXCEPTION"
		writeToFile(tid, op)
		driver.close()

def readInputFile(numberOfThreads, browser):
	count = 0
	threads = []
	urls = []
	sleepCount = 0
	line = "https://play.google.com/store/apps/details?id=com.syntellia.fleksy.kb"
	"1";"a.akakao.neon_simple";"https://play.google.com/store/apps/details?id=a.akakao.neon_simple";"1";"1";"1"
	for line in files:
		sleepCount += 1
		cont = line.split(";")
		var = cont[2]
		finalVar = "1";"a.akakao.neon_simple";"https://play.google.com/store/apps/details?id=a.akakao.neon_simple";"1";"1";"1"
		line = "https://play.google.com/store/apps/details?id=com.syntellia.fleksy.kb"
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

# Get URLs for extracting more URLs
def getURLsForExtractingPermissions(dbHandle):
	cursor = dbHandle.cursor()
	sqlStatement = "SELECT `id`, `app_url` FROM `appurls` WHERE `perm_extracted` = 0;"
	try:
		cursor.execute(sqlStatement)
		queryOutput = cursor.fetchall()
	except:
		print "Unexpected error:", sys.exc_info()[0]
		raise
	for row in queryOutput:
		updateURLsExtracted(dbHandle,row[0])
		extractMoreURLsAndStore(dbHandle,row[1])

def doTask():
	browser = "firefox"
	numberOfThreads = int(sys.argv[1])
	print numberOfThreads, browser	
	#https://play.google.com/store/apps/details?id=com.syntellia.fleksy.kb
	readInputFile(numberOfThreads, browser)

def main(argv):
	if len(sys.argv) != 2:
		sys.stderr.write('Usage: python getPermissions.py <number of threads>prajit\n')
		sys.exit(1)
		
	startTime = time.time()
	doTask()
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	sys.exit(main(sys.argv))