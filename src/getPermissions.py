#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on Apr 4, 2015
@author: Sandeep Nair
@edited_by: Prajit Kumar Das

Usage: python getPermissions.py
Outpur format:-
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
from selenium.webdriver.common.keys import Keys
from bs4 import BeautifulSoup
import databaseHandler

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
	tree = etree.parse(StringIO.StringIO(file_contents), html_p)
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

def readInputFile(fileName,nooft,browser):
	files = open(fileName, "r")
	cnt = 0
	thr = []
	url = []
	slp_cnt = 0
	for line in files:
		slp_cnt += 1
		cont = line.split(";")
		var = cont[2]
		finalVar = var[1:len(var)-1]
		print finalVar
		if slp_cnt * nooft < 50:
			deleteTempFiles()
			slp_cnt = 0
		if cnt < nooft:
			url.append(finalVar)
			cnt += 1
		else:
			tcnt = 0
			for i in url:
				this_thr = threading.Thread (target=get_permissions_url, args = [i, tcnt, browser])
				thr.append(this_thr)
				this_thr.start()
				print "thread " + str (tcnt) + "started"
				tcnt += 1
			ii = 0
			for j in thr:
				print "thread " + str(ii) + "is joining"
				j.join()
				ii+= 1
			thr = []
			cnt = 0
			url = []
			url.append(finalVar)
			cnt+=1

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
		databaseHandler.updateURLsExtracted(dbHandle,row[0])
		databaseHandler.extractMoreURLsAndStore(dbHandle,row[1])

def doTask():
	noOfArg = len(sys.argv)
	fileName = ""
	noOfThr = 1
	browser = "firefox"
	if noOfArg <= 1:
		print 'Usage \n python getPermissions.py <inp_fileName> <number of threads>'
		return
	if noOfArg > 1:
		fileName = sys.argv[1]
	if noOfArg > 2:
		noOfThr = int(sys.argv[2])
	if noOfArg > 3:
		browser = sys.argv[3]
		if browser != "firefox":
			return
	readInputFile(fileName, noOfThr, browser)

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