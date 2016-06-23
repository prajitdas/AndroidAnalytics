'''
Created on June 22, 2016
@author: Prajit Kumar Das
Usage: python updateReviewRatings.py
Purpose: To update the appdata table with the correct review_rating or 
setting still_in_googleplaystore = 0 if the app is no longer available on the play store (Error 404)
doing nothing to still_in_googleplaystore if the app is not available in the current location context on the play store (Error 403)
'''

import mysql.connector as mysql
import json
import sys
import urllib2
from bs4 import BeautifulSoup as bs
import time
import databaseHandler
import logging
logging.basicConfig(filename='collection.log',level=logging.DEBUG)

def insertInDB():
	dbHandle = databaseHandler.dbConnectionCheck() # DB Open
	app_dict = json.loads(open('appRating.json','r').read())
	for app_pkg_name, review_rating in app_dict.iteritems():
		sqlStatement = "UPDATE `appdata` SET `review_rating`= "+str(review_rating)+" WHERE `app_pkg_name` = '"+app_pkg_name+"';"
		print sqlStatement
		logging.debug("Statement: "+sqlStatement)
		databaseHandler.dbManipulateData(dbHandle, sqlStatement)
	dbHandle.close() #DB Close	

def getReviewRatings(dbHandle, appUrlList):
	for appUrl in appUrlList:
		app_dict = json.loads(open('appRating.json','r').read())
		app_pkg_name = appUrl.split('=')[1]
		headers = { 'User-Agent' : 'Mozilla/5.0' }
		req = urllib2.Request(appUrl, None, headers)
		try: 
			page = urllib2.urlopen(req).read()
			soup = bs(''.join(page))
			for div in soup.findAll(attrs={'class': 'score'}):
				for child in div.children:
					review_rating = 0.0
					if not child.string == ' ':
						review_rating = round(eval(child.string),1)
					app_dict[app_pkg_name] = review_rating
			open('appRating.json','w').write(json.dumps(app_dict,indent=4,sort_keys=True))
		except urllib2.HTTPError, e:
			if str(e.code) == '404':
				sqlStatement = "UPDATE `appdata` SET `still_in_googleplaystore`= 0 WHERE `app_pkg_name` = '"+app_pkg_name+"';"
				print 'HTTPError =', str(e.code), 'for app:', app_pkg_name, sqlStatement
				logging.debug('HTTPError ='+str(e.code)+'for app:'+app_pkg_name+" statement: "+sqlStatement)
				databaseHandler.dbManipulateData(dbHandle, sqlStatement)
			else:
				print 'HTTPError =', str(e.code), 'for app:', app_pkg_name
				logging.debug('HTTPError ='+str(e.code)+'for app:'+app_pkg_name)

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
		print 'Unexpected error in updateReviewRatings:', sys.exc_info()[0]
		raise
	cursor.close()
	open('appRating.json','w').write(json.dumps({},indent=4,sort_keys=True))
	getReviewRatings(dbHandle, appUrlList)
	dbHandle.close() #DB Close
	
	#insertInDB()

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python updateReviewRatings.py\n')
		sys.exit(1)

	startTime = time.time()
	doTask()
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	sys.exit(main(sys.argv))
