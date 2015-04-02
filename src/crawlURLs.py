#!/usr/bin/python

# -*- coding: utf-8 -*-

from bs4 import BeautifulSoup
import urllib
import sys
import datetime
import json
import _mysql_exceptions
import databaseHandler
from mysql.connector import conversion

# Fire an DML SQL statement and commit data
def dbManipulateData(dbHandle, sqlStatement):
	cursor = dbHandle.cursor()
	try:
		cursor.execute('SET NAMES utf8;')
		cursor.execute('SET CHARACTER SET utf8;')
		cursor.execute('SET character_set_connection=utf8;')
		cursor.execute(sqlStatement)
		dbHandle.commit()
	except _mysql_exceptions.IntegrityError:
		print "data already there"
	except:
		print "Unexpected error:", sys.exc_info()[0]
		raise
	return cursor.lastrowid

# Fire an DML SQL statement and commit data
def dbManipulateDataWithParameters(dbHandle, sqlStatement, desc, whats_new):
	cursor = dbHandle.cursor()
	escaped_text_desc = conversion.MySQLConverter().escape(desc)
	escaped_text_whats_new = conversion.MySQLConverter().escape(whats_new)
	try:
		cursor.execute(sqlStatement.format(escaped_text_desc, escaped_text_whats_new))
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
		sqlStatement = "INSERT INTO `appurls`(`app_pkg_name`,`app_url`) VALUES('"+packageName[1]+"', '"+url+"');"
		dbManipulateData(dbHandle, sqlStatement)

# Update "urls_extracted" column to mark urls have been extracted
def updateURLsExtracted(dbHandle, tableId):
	sqlStatement = "UPDATE `appurls` SET `urls_extracted`=1 WHERE `id`="+str(tableId)+";"
	dbManipulateData(dbHandle, sqlStatement)

# Get URLs for extracting more URLs
def getURLsForExtractingMoreURLs(dbHandle):
	cursor = dbHandle.cursor()
	sqlStatement = "SELECT `id`, `app_url` FROM `appurls` WHERE `urls_extracted` = 0;"
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
		extractMoreURLsAndStore(dbHandle, searchString)

def getDeveloperId(dbHandle,app_dict):
	cursor = dbHandle.cursor()
	dev_name = app_dict['developer_name']
	if 'dev_website' in app_dict:
		dev_web = app_dict['dev_website']
	else:
		dev_web = ""
	if 'dev_email' in app_dict:
		dev_email = app_dict['dev_email']
	else:
		dev_email = ""
	if 'dev_location' in app_dict:
		dev_loc = app_dict['dev_location']
	else:
		dev_loc = ""
	dev_loc = conversion.MySQLConverter().escape(dev_loc)
	sqlStatementdDevId = "SELECT `id` FROM `developer` WHERE `name` = '"+dev_name+"';"
	try:
		cursor.execute(sqlStatementdDevId)
		if cursor.rowcount > 0:
			queryOutput = cursor.fetchall()
			for row in queryOutput:
				return row[0]
		else:
			sqlStatementdDevIdInsert = "INSERT into `developer`(`name`,`website`,`email`,`country`) VALUES('"+dev_name+"','"+dev_web+"','"+dev_email+"','"+dev_loc+"');"
			return dbManipulateData(dbHandle, sqlStatementdDevIdInsert)
	except:
		print "Unexpected error:", sys.exc_info()[0]
		raise

def getCategoryId(dbHandle,app_dict):
	cursor = dbHandle.cursor()
	sqlStatementdAppCatId = "SELECT `id` FROM `appcategories` WHERE `name` = '"+app_dict['app_category'].upper()+"';"
	try:
		cursor.execute(sqlStatementdAppCatId)
		queryOutput = cursor.fetchall()
		for row in queryOutput:
			return row[0]
	except:
		print "Unexpected error:", sys.exc_info()[0]
		raise
	

# Create the SQL statement to execute out of the dictionary data 
def createSQLStatementAndInsert(dbHandle,app_dict):
	if 'app_name' in app_dict:
		app_name = app_dict['app_name']
		app_name = conversion.MySQLConverter().escape(app_name)

		app_pkg_name = app_dict['app_pkg_name']
		developer_id = getDeveloperId(dbHandle,app_dict)
		app_category_id = getCategoryId(dbHandle,app_dict)	

		if 'review_rating' in app_dict:
			review_rating = app_dict['review_rating']
		else:
			review_rating = 0.0

		if 'review_count' in app_dict:
			review_count = app_dict['review_count']
		else:
			review_count = 0

		if 'app_desc' in app_dict:
			app_desc = app_dict['app_desc']
		else:
			app_desc = ''
		escaped_text_desc = conversion.MySQLConverter().escape(app_desc)

		if 'whats_new' in app_dict:
			whats_new = app_dict['whats_new']
		else:
			whats_new = ''
		escaped_text_whats_new = conversion.MySQLConverter().escape(whats_new)

		if 'Updated' in app_dict:
			updated = app_dict['Updated']
		else:
			updated = '1984-08-31'

		if 'Installs' in app_dict:
			installs = app_dict['Installs']
		else:
			installs = 0

		if 'Current_Version' in app_dict:
			version = app_dict['Current_Version']
		else:
			version = ''
		
		if 'Requires_Android' in app_dict:
			android_reqd = app_dict['Requires_Android']
		else:
			android_reqd = ''
		
		if 'Content_Rating' in app_dict:
			content_rating = app_dict['Content_Rating']
		else:
			content_rating = ''

		sqlStatement = "INSERT INTO `appdata`(`app_pkg_name`,`app_name`,`developer_id`,`app_category_id`,`review_rating`,`review_count`,`desc`,`whats_new`,`updated`,`installs`,`version`,`android_reqd`,`content_rating`) VALUES('" + app_pkg_name + "','" + app_name + "'," + str(developer_id) +","+ str(app_category_id) +","+ str(review_rating) +","+ str(review_count) +",'"+ escaped_text_desc +"','"+ escaped_text_whats_new +"','" + updated + "',"+ str(installs)+",'" + version + "','" + android_reqd + "','" + content_rating + "');"
		print sqlStatement
		dbManipulateData(dbHandle, sqlStatement)

# Extract app data and store in DB
def extractAppDataAndStore(dbHandle, urlExtract):
	page = urllib.urlopen(urlExtract).read()
	soup = BeautifulSoup(''.join(page))
	
	app_dict = {}
	
	app_dict['app_pkg_name'] = urlExtract.split("=")[-1]

	for div in soup.findAll(attrs={'class': 'document-title'}):
		for child in div.children:
			if not child.string == ' ':
				app_dict['app_name'] = child.string

	for div in soup.findAll(attrs={'class': 'document-subtitle','class': 'primary'}):
		for child in div.children:
			if not child.string == ' ':
				app_dict['developer_name'] = child.string

	for div in soup.findAll(attrs={'class': 'document-subtitle','class': 'category'}):
		for child in div.children:
			if not child.string == ' ':
				app_dict['app_category'] = child.string

	appDesc = ""
	for div in soup.findAll(attrs={'class': 'id-app-orig-desc'}):
		for desc in div.descendants:
			if type(desc.string).__name__ != "NoneType":
				appDesc = appDesc + desc.string
	app_dict['app_desc'] = appDesc

	whatsNew = ""
	for div in soup.findAll(attrs={'class': 'recent-change'}):
		for desc in div.descendants:
			if type(desc.string).__name__ != "NoneType":
				whatsNew = whatsNew + desc.string
	app_dict['whats_new'] = whatsNew
		
	for div in soup.findAll(attrs={'class': 'score'}):
		for child in div.children:
			if not child.string == ' ':
				app_dict['review_rating'] = round(eval(child.string),1)

	for div in soup.findAll(attrs={'class': 'reviews-num'}):
		for child in div.children:
			if not child.string == ' ':
				app_dict['review_count'] = eval(child.string.replace(",",""))

	pairing = 0
	key = ""
	value = ""
	for div in soup.findAll(attrs={'class': 'details-section-contents', 'class': 'meta-info'}):
		for child in div.children:
			if type(child.string).__name__ != "NoneType":
				if child.__class__.__name__ == "Tag":
					if pairing == 0:
						key = child.string.strip().replace(' ','_')
						pairing = 1
					else:
						value = child.string.strip()			
						pairing = 0
						app_dict[key] = value
	if 'Developer' in app_dict:
		app_dict.pop('Developer', None)
	if 'Permissions' in app_dict:
		app_dict.pop('Permissions', None)
	if 'Report' in app_dict:
		app_dict.pop('Report', None)
	if 'Size' in app_dict:
		app_dict.pop('Size', None)
	if 'Installs' in app_dict:
		app_dict['Installs'] = eval(app_dict['Installs'].split(" ")[-1].replace(",",""))
	if 'Updated' in app_dict:
		app_dict['Updated'] = datetime.datetime.strptime(app_dict['Updated'], '%B %d, %Y').date().isoformat()
	if 'Offered_By' in app_dict:
		app_dict['Offered_By'] = conversion.MySQLConverter().escape(app_dict['Offered_By'])
	
	for div in soup.findAll(attrs={'class': 'content', 'class': 'contains-text-link'}):
		for child in div.children:
			if child.name == 'a':
				if child.string.strip() == 'Visit Website':
					app_dict['dev_website'] = child.attrs['href']
				elif child.string.strip().startswith('Email'):
					app_dict['dev_email'] = str(child.attrs['href']).split(":")[-1]

	for div in soup.findAll(attrs={'class': 'content', 'class': 'contains-text-link', 'class': 'physical-address'}):
		app_dict['dev_location'] = div.string
		
	# Return app_dict to write back to JSON file	
	app_info = {}
	app_info_json = open("googlePlayStoreAppData.json",'r').read()
	if len(app_info_json) > 0:
		app_info = json.loads(app_info_json)
	app_info[app_dict['app_pkg_name']] = app_dict 
	open("googlePlayStoreAppData.json",'w').write(json.dumps(app_info, sort_keys=True, indent=4))
	#Write to SQL now
	createSQLStatementAndInsert(dbHandle,app_dict)

# Update "parsed" column to mark app data has been parsed
def updateParsed(dbHandle, tableId):
	sqlStatement = "UPDATE `appurls` SET `parsed`=1 WHERE `id`="+str(tableId)+";"
	dbManipulateData(dbHandle, sqlStatement)

# Get URLs for app data parsing
def getURLsForParsingAppData(dbHandle):
	cursor = dbHandle.cursor()
	sqlStatement = "SELECT `id`, `app_url` FROM `appurls` WHERE `parsed` = 0;"
	try:
		cursor.execute(sqlStatement)
		queryOutput = cursor.fetchall()
	except:
		print "Unexpected error:", sys.exc_info()[0]
		raise
	for row in queryOutput:
		extractAppDataAndStore(dbHandle,row[1])
		updateParsed(dbHandle,row[0])

def main(argv):
	if len(sys.argv) != 2:
		sys.stderr.write('Usage: python crawlURLs [i|m|a]\n')
		sys.exit(1)

	dbHandle = databaseHandler.dbConnectionCheck() # DB Open

	startTime = datetime.datetime.now()
	if sys.argv[1] == "i":
		oneTimeCreateListOfAppsFromAlphabeticalSearch(dbHandle) # First level of search for app urls
	elif sys.argv[1] == "m":
		getURLsForExtractingMoreURLs(dbHandle) # Second level of search for app urls
	elif sys.argv[1] == "a":
		getURLsForParsingAppData(dbHandle) # Extract app data
	else:
		sys.stderr.write('Usage: python crawlURLs [i|m|a]\n')
	endTime = datetime.datetime.now()
	executionTime = (endTime-startTime)
	print "Execution time was: "+str(executionTime)
	
	dbHandle.close() #DB Close

if __name__ == "__main__":
	sys.exit(main(sys.argv))
