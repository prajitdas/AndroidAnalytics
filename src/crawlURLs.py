#!/usr/bin/python

from bs4 import BeautifulSoup
import urllib
import sys
import datetime
import _mysql_exceptions
import databaseHandler

# Fire an DML SQL statement and commit data
def dbManipulateData(dbHandle, sqlStatement):
	cursor = dbHandle.cursor()
	try:
		cursor.execute(sqlStatement)
		dbHandle.commit()
	except _mysql_exceptions.IntegrityError:
		print "data already there"
	except:
		print "Unexpected error:", sys.exc_info()[0]
		raise

# Hit a URL, extract URLs and Store new URLs back
def extractMoreURLsAndStore(dbHandle, urlExtract):
	page = urllib.urlopen(urlExtract).read()
	soup = BeautifulSoup(''.join(page))
	data = soup.findAll(attrs={'class': 'card-click-target'})

	for chunk in data:
		url = "https://play.google.com"+chunk['href']
		packageName = url.split("=")
		sqlStatement = "INSERT INTO appurls(app_pkg_name, app_url) VALUES('"+packageName[1]+"', '"+url+"');"
		dbManipulateData(dbHandle, sqlStatement)

# Update "urls_extracted" column to mark urls have been extracted
def updateURLsExtracted(dbHandle, tableId):
	sqlStatement = "UPDATE appurls SET urls_extracted=1 WHERE id="+str(tableId)+";"
	dbManipulateData(dbHandle, sqlStatement)

# Get URLs for extracting more URLs
def getURLsForExtractingMoreURLs(dbHandle):
	cursor = dbHandle.cursor()
	sqlStatement = "SELECT id, app_url FROM appurls WHERE urls_extracted = 0;"
	try:
		cursor.execute(sqlStatement)
		queryOutput = cursor.fetchall()
	except:
		print "Unexpected error:", sys.exc_info()[0]
		raise
	for row in queryOutput:
		updateURLsExtracted(dbHandle,row[0])
		extractMoreURLsAndStore(dbHandle,row[1])

# Initial data collection using basic alphabetical search for apps
def oneTimeCreateListOfAppsFromAlphabeticalSearch(dbHandle):
	alpahbeticalSearchStrings=["https://play.google.com/store/search?q=a&c=apps","https://play.google.com/store/search?q=b&c=apps","https://play.google.com/store/search?q=c&c=apps","https://play.google.com/store/search?q=d&c=apps","https://play.google.com/store/search?q=e&c=apps","https://play.google.com/store/search?q=f&c=apps","https://play.google.com/store/search?q=g&c=apps","https://play.google.com/store/search?q=h&c=apps","https://play.google.com/store/search?q=i&c=apps","https://play.google.com/store/search?q=j&c=apps","https://play.google.com/store/search?q=k&c=apps","https://play.google.com/store/search?q=l&c=apps","https://play.google.com/store/search?q=m&c=apps","https://play.google.com/store/search?q=n&c=apps","https://play.google.com/store/search?q=o&c=apps","https://play.google.com/store/search?q=p&c=apps","https://play.google.com/store/search?q=q&c=apps","https://play.google.com/store/search?q=r&c=apps","https://play.google.com/store/search?q=s&c=apps","https://play.google.com/store/search?q=t&c=apps","https://play.google.com/store/search?q=u&c=apps","https://play.google.com/store/search?q=v&c=apps","https://play.google.com/store/search?q=w&c=apps","https://play.google.com/store/search?q=x&c=apps","https://play.google.com/store/search?q=y&c=apps","https://play.google.com/store/search?q=z&c=apps"]
	for searchString in alpahbeticalSearchStrings:
		extractURLAndStore(dbHandle, searchString)

# Extract app data and store in DB
def extractAppDataAndStore(dbHandle, urlExtract):
	page = urllib.urlopen(urlExtract).read()
	soup = BeautifulSoup(''.join(page))
	data = soup.findAll(attrs={'class': 'card-click-target'})

	for chunk in data:
		count = count + 1
		url = "https://play.google.com"+chunk['href']
		packageName = url.split("=")
		sqlStatement = "INSERT INTO appurls(app_pkg_name, app_url) VALUES('"+packageName[1]+"', '"+url+"');"
		dbManipulateData(dbHandle, sqlStatement)

# Update "parsed" column to mark app data has been parsed
def updateParsed(dbHandle, tableId):
	sqlStatement = "UPDATE appurls SET parsed=1 WHERE id="+str(tableId)+";"
	dbManipulateData(dbHandle, sqlStatement)

# Get URLs for app data parsing
def getURLsForParsingAppData(dbHandle):
	cursor = dbHandle.cursor()
	sqlStatement = "SELECT id, app_url FROM appurls WHERE parsed = 0;"
	try:
		cursor.execute(sqlStatement)
		queryOutput = cursor.fetchall()
	except:
		print "Unexpected error:", sys.exc_info()[0]
		raise
	for row in queryOutput:
		updateParsed(dbHandle,row[0])
		extractAppDataAndStore(dbHandle,row[1])

def main(argv):
	if len(sys.argv) != 2:
		sys.stderr.write('Usage: python crawlURLs [i|e|p]\n')
		sys.exit(1)

	dbHandle = databaseHandler.dbConnectionCheck() # DB Open

	startTime = datetime.datetime.now()
	if sys.argv[1] == "i":
		oneTimeCreateListOfAppsFromAlphabeticalSearch(dbHandle) # First level of search for app urls
	elif sys.argv[1] == "e":
		getURLsForExtractingMoreURLs(dbHandle) # Second level of search for app urls
	elif sys.argv[1] == "p":
		getURLsForParsingAppData(dbHandle) # Extract app data
	else:
		sys.stderr.write('Usage: python crawlURLs [i|e|p]\n')
	endTime = datetime.datetime.now()
	print "Execution time was: "(endTime-startTime)

	dbHandle.close() #DB Close

if __name__ == "__main__":
	sys.exit(main(sys.argv))
