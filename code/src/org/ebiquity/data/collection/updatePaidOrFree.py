'''
Created on June 30, 2016
@author: Prajit Kumar Das
Usage: python updatePaidOrFree.py
Purpose: To update the appdata table with 1 if app is paid
'''

import mysql.connector as mysql
import json
import sys
import urllib2
from bs4 import BeautifulSoup as bs
import time
import databaseHandler
import logging
logging.basicConfig(filename='updatePaidFree.log',level=logging.DEBUG)

def insertInDB(app_pkg_name,paid):
	dbHandle = databaseHandler.dbConnectionCheck() # DB Open
	sqlStatement = "UPDATE `appdata` SET `paid`= "+str(paid)+" WHERE `app_pkg_name` = '"+app_pkg_name+"';"
	print sqlStatement
	logging.debug("Statement: "+sqlStatement)
	databaseHandler.dbManipulateData(dbHandle, sqlStatement)
	dbHandle.close() #DB Close

def getPaidOrFree(appUrl):
	app_pkg_name = appUrl.split('=')[1]
	headers = { 'User-Agent' : 'Mozilla/5.0' }
	req = urllib2.Request(appUrl, None, headers)
	try:
		page = urllib2.urlopen(req).read()
		soup = bs(''.join(page))
		for div in soup.findAll(attrs={'class': 'price'}):
			for child in div.children:
				if type(child.string).__name__ != "NoneType":
					if child.__class__.__name__ == "Tag":
						if child.string.strip() != 'Install':
							insertInDB(app_pkg_name,1)
	except urllib2.HTTPError, e:
		logging.debug('HTTPError =' + str(e.code) + 'for app:' + app_pkg_name)

def doTask():
	dbHandle = databaseHandler.dbConnectionCheck() # DB Open
	cursor = dbHandle.cursor()
	sqlStatement = "SELECT `app_pkg_name` FROM  `appdata`;"
	appUrlList = []
	try:
		cursor.execute(sqlStatement)
		for app in cursor:
			appUrlList.append('https://play.google.com/store/apps/details?id='+app[0])
	except:
		print 'Unexpected error in updatePaidOrFree:', sys.exc_info()[0]
		raise
	cursor.close()
	dbHandle.close() #DB Close

	for appUrl in appUrlList:
		getPaidOrFree(appUrl)

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python updatePaidOrFree.py\n')
		sys.exit(1)

	startTime = time.time()
	doTask()
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	sys.exit(main(sys.argv))
