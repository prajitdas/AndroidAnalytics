#!/usr/bin/python
# -*- coding: utf-8 -*-
from bs4 import BeautifulSoup
import urllib
import sys
import datetime
# import _mysql_exceptions
# import databaseHandler

# # Fire an DML SQL statement and commit data
# def dbManipulateData(dbHandle, sqlStatement):
# 	cursor = dbHandle.cursor()
# 	try:
# 		cursor.execute(sqlStatement)
# 		dbHandle.commit()
# 	except _mysql_exceptions.IntegrityError:
# 		print "data already there"
# 	except:
# 		print "Unexpected error:", sys.exc_info()[0]
# 		raise
# 
# # Hit a URL, extract URLs and Store new URLs back
# def extractMoreURLsAndStore(dbHandle, urlExtract):
# 	page = urllib.urlopen(urlExtract).read()
# 	soup = BeautifulSoup(''.join(page))
# 	data = soup.findAll(attrs={'class': 'card-click-target'})
# 
# 	for chunk in data:
# 		url = "https://play.google.com"+chunk['href']
# 		packageName = url.split("=")
# 		sqlStatement = "INSERT INTO appurls(app_pkg_name, app_url) VALUES('"+packageName[1]+"', '"+url+"');"
# 		dbManipulateData(dbHandle, sqlStatement)
# 
# # Update "urls_extracted" column to mark urls have been extracted
# def updateURLsExtracted(dbHandle, tableId):
# 	sqlStatement = "UPDATE appurls SET urls_extracted=1 WHERE id="+str(tableId)+";"
# 	dbManipulateData(dbHandle, sqlStatement)
# 
# # Get URLs for extracting more URLs
# def getURLsForExtractingMoreURLs(dbHandle):
# 	cursor = dbHandle.cursor()
# 	sqlStatement = "SELECT id, app_url FROM appurls WHERE urls_extracted = 0;"
# 	try:
# 		cursor.execute(sqlStatement)
# 		queryOutput = cursor.fetchall()
# 	except:
# 		print "Unexpected error:", sys.exc_info()[0]
# 		raise
# 	for row in queryOutput:
# 		updateURLsExtracted(dbHandle,row[0])
# 		extractMoreURLsAndStore(dbHandle,row[1])
# 
# # Initial data collection using basic alphabetical search for apps
# def oneTimeCreateListOfAppsFromAlphabeticalSearch(dbHandle):
# 	alpahbeticalSearchStrings=["https://play.google.com/store/search?q=a&c=apps","https://play.google.com/store/search?q=b&c=apps","https://play.google.com/store/search?q=c&c=apps","https://play.google.com/store/search?q=d&c=apps","https://play.google.com/store/search?q=e&c=apps","https://play.google.com/store/search?q=f&c=apps","https://play.google.com/store/search?q=g&c=apps","https://play.google.com/store/search?q=h&c=apps","https://play.google.com/store/search?q=i&c=apps","https://play.google.com/store/search?q=j&c=apps","https://play.google.com/store/search?q=k&c=apps","https://play.google.com/store/search?q=l&c=apps","https://play.google.com/store/search?q=m&c=apps","https://play.google.com/store/search?q=n&c=apps","https://play.google.com/store/search?q=o&c=apps","https://play.google.com/store/search?q=p&c=apps","https://play.google.com/store/search?q=q&c=apps","https://play.google.com/store/search?q=r&c=apps","https://play.google.com/store/search?q=s&c=apps","https://play.google.com/store/search?q=t&c=apps","https://play.google.com/store/search?q=u&c=apps","https://play.google.com/store/search?q=v&c=apps","https://play.google.com/store/search?q=w&c=apps","https://play.google.com/store/search?q=x&c=apps","https://play.google.com/store/search?q=y&c=apps","https://play.google.com/store/search?q=z&c=apps"]
# 	for searchString in alpahbeticalSearchStrings:
# 		extractMoreURLsAndStore(dbHandle, searchString)

# Extract app data and store in DB
def extractAppDataAndStore(urlExtract):
	page = urllib.urlopen(urlExtract).read()
	soup = BeautifulSoup(''.join(page))

	for div in soup.findAll(attrs={'class': 'document-title'}):
		for child in div.children:
			if not child.string == ' ':
				appName = child.string

	for div in soup.findAll(attrs={'class': 'document-subtitle','class': 'primary'}):
		for child in div.children:
			if not child.string == ' ':
				developerName = child.string

	for div in soup.findAll(attrs={'class': 'document-subtitle','class': 'category'}):
		for child in div.children:
			if not child.string == ' ':
				appCategory = child.string

	appDesc = ""
	for div in soup.findAll(attrs={'class': 'id-app-orig-desc'}):
		if type(div) == "bs4.element.Tag":
			for desc in div.descendants:
				if unicode(desc.string) != "None":
					appDesc = appDesc + unicode(desc.string)
		else:
			for child in div.children:
				if not child.string == ' ':
					appDesc = child.string
		
	for div in soup.findAll(attrs={'class': 'score'}):
		for child in div.children:
			if not child.string == ' ':
				reviewRating = eval(child.string)

	for div in soup.findAll(attrs={'class': 'reviews-num'}):
		for child in div.children:
			if not child.string == ' ':
				reviewCount = eval(child.string.replace(",",""))

	whatsNew = ""				
	for div in soup.findAll(attrs={'class': 'recent-change'}):
		if type(div) == "bs4.element.Tag":
			for desc in div.descendants:
				if unicode(desc.string) != "None":
					whatsNew = whatsNew + unicode(desc.string)
		else:
			for child in div.children:
				if not child.string == ' ':
					whatsNew = child.string

	pairing = 0
# 	appMetaInfoDict = {"Updated": "11-25-2014", "Size": "3.6M", "Installs": "10,000,000 - 50,000,000", "Current Version": "2.5.3", "Requires Android": "2.3 and up",    
# Content Rating
# Everyone  
# Permissions
# View details 
# Report
# Flag as inappropriate 
# Offered By 
# BBC Worldwide (Ltd)
# Developer 
# None
# }
	for div in soup.findAll(attrs={'class': 'details-section-contents', 'class': 'meta-info'}):
		for desc in div.descendants:
			print dict(desc)
			if unicode(desc.string) != "None":
				if pairing == 0:
					key = unicode(desc.string)
				else:
					value = unicode(desc.string)
# 			appMetaInfoDict[key] = value
# 			
# 	print appMetaInfoDict

# 	print appName
# 	print developerName
# 	print appCategory
# 	print appDesc
# 	print reviewRating
# 	print reviewCount
# 	print whatsNew
# 	for chunk in data:
# 		url = "https://play.google.com"+chunk['href']
# 		packageName = url.split("=")
# 		sqlStatement = "INSERT INTO appurls(app_pkg_name, app_url) VALUES('"+packageName[1]+"', '"+url+"');"
# 		dbManipulateData(dbHandle, sqlStatement)

# # Update "parsed" column to mark app data has been parsed
# def updateParsed(dbHandle, tableId):
# 	sqlStatement = "UPDATE appurls SET parsed=1 WHERE id="+str(tableId)+";"
# 	dbManipulateData(dbHandle, sqlStatement)
# 
# # Get URLs for app data parsing
# def getURLsForParsingAppData(dbHandle):
# 	cursor = dbHandle.cursor()
# 	sqlStatement = "SELECT id, app_url FROM appurls WHERE parsed = 0;"
# 	try:
# 		cursor.execute(sqlStatement)
# 		queryOutput = cursor.fetchall()
# 	except:
# 		print "Unexpected error:", sys.exc_info()[0]
# 		raise
# 	for row in queryOutput:
# 		updateParsed(dbHandle,row[0])
# 		extractAppDataAndStore(dbHandle,row[1])

def main(argv):
	if len(sys.argv) != 2:
		sys.stderr.write('Usage: python crawlURLs [i|m|a]\n')
		sys.exit(1)

# 	dbHandle = databaseHandler.dbConnectionCheck() # DB Open
	
	extractAppDataAndStore("https://play.google.com/store/apps/details?id=bbc.mobile.news.ww")

# 	startTime = datetime.datetime.now()
# 	if sys.argv[1] == "i":
# 		oneTimeCreateListOfAppsFromAlphabeticalSearch(dbHandle) # First level of search for app urls
# 	elif sys.argv[1] == "m":
# 		getURLsForExtractingMoreURLs(dbHandle) # Second level of search for app urls
# 	elif sys.argv[1] == "a":
# 		getURLsForParsingAppData(dbHandle) # Extract app data
# 	else:
# 		sys.stderr.write('Usage: python crawlURLs [i|m|a]\n')
# 	endTime = datetime.datetime.now()
# 	print "Execution time was: "(endTime-startTime)

# 	dbHandle.close() #DB Close

if __name__ == "__main__":
	sys.exit(main(sys.argv))
