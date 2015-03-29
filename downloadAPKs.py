#!/usr/bin/python

from dateutil.relativedelta import relativedelta
from bs4 import BeautifulSoup
import urllib
import re
import simplejson
import sys
import datetime
import MySQLdb
import _mysql_exceptions

# Fire an DML SQL statement and commit data
def dbManipulateData(dbHandle, sqlStatement):
	cursor = dbHandle.cursor()
	try:
		cursor.execute(sqlStatement)
		dbHandle.commit()
	except _mysql_exceptions.IntegrityError:
		print str(count)+" data already there"
	except:
		print "Unexpected error:", sys.exc_info()[0]
		raise

# Download APK
def downloadAPK(appPackageName):
	URLPrefix = "http://dl3.apk-dl.com/store/download/details?id="
	APKURL = URLPrefix+appPackageName
	appDownloadedFileLocation = "apps/"+appPackageName
	urllib.urlretrieve(APKURL, filename=appDownloadedFileLocation)

# Update "downloaded" column to mark app has been downloaded
def updateDownloaded(dbHandle, id):
	cursor = dbHandle.cursor()
	sqlStatement = "UPDATE appurls SET downloaded=1 WHERE id="+str(id)+";"
	dbManipulateData(dbHandle, sqlStatement)

# Get URLs for app downloading
def getAppURL(dbHandle):
	cursor = dbHandle.cursor()
	sqlStatement = "SELECT id, app_pkg_name FROM appurls WHERE downloaded = 0 AND id = 1;"
	try:
		cursor.execute(sqlStatement)
		queryOutput = cursor.fetchall()
	except:
		print "Unexpected error:", sys.exc_info()[0]
		raise
	for row in queryOutput:
		updateDownloaded(dbHandle,row[0])
		downloadAPK(row[1])

# Database Conenction Handler
def dbConnectionCheck():
	dbHandle = MySQLdb.connect('trishuli.cs.umbc.edu', 'googleplaystore', 'prajitkumardas', 'googleplaystore');
	return dbHandle

def main(argv):
	if len(sys.argv) != 2:
		sys.stderr.write('Usage: python downloadAPKs [i|e|p]\n')
		sys.exit(1)

	dbHandle = dbConnectionCheck() # DB Open

	getAppURL(dbHandle)
	startTime = datetime.datetime.now()
	endTime = datetime.datetime.now()
	print "Execution time was: "(endTime-startTime)

	dbHandle.close() #DB Close

if __name__ == "__main__":
	sys.exit(main(sys.argv))
