from dateutil.relativedelta import relativedelta
from bs4 import BeautifulSoup
import urllib, re, urllib, simplejson, sys, datetime, MySQLdb, _mysql_exceptions

def extractDataAndStore(dbHandle, urlExtract):
	cursor = dbHandle.cursor()
	page = urllib.urlopen(urlExtract).read()
	soup = BeautifulSoup(''.join(page))
	data = soup.findAll(attrs={'class': 'card-click-target'})

	for chunk in data:
		url = "https://play.google.com"+chunk['href']
		packageName = url.split("=")
		sqlStatement = "INSERT INTO appurls(app_pkg_name, app_url, parsed) VALUES('"+packageName[1]+"', '"+url+"', 0);"
		try:
			cursor.execute(sqlStatement)
			dbHandle.commit()
		except _mysql_exceptions.IntegrityError:
			print str(datetime.datetime.now())+"data already there"
		except:
			print "Unexpected error:", sys.exc_info()[0]
			raise

def updateParsed(dbHandle, id):
	cursor = dbHandle.cursor()
	sqlStatement = "UPDATE appurls SET parsed=1 WHERE id="+str(id)+";"
	try:
		cursor.execute(sqlStatement)
	except:
		print "Unexpected error:", sys.exc_info()[0]
		raise

def appUrlGeneration(dbHandle):
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
		extractDataAndStore(dbHandle,row[1])

def oneTimeCreateListOfAppsFromAlphabeticalSearch(dbHandle):
	alpahbeticalSearchStrings=["https://play.google.com/store/search?q=a&c=apps","https://play.google.com/store/search?q=b&c=apps","https://play.google.com/store/search?q=c&c=apps","https://play.google.com/store/search?q=d&c=apps","https://play.google.com/store/search?q=e&c=apps","https://play.google.com/store/search?q=f&c=apps","https://play.google.com/store/search?q=g&c=apps","https://play.google.com/store/search?q=h&c=apps","https://play.google.com/store/search?q=i&c=apps","https://play.google.com/store/search?q=j&c=apps","https://play.google.com/store/search?q=k&c=apps","https://play.google.com/store/search?q=l&c=apps","https://play.google.com/store/search?q=m&c=apps","https://play.google.com/store/search?q=n&c=apps","https://play.google.com/store/search?q=o&c=apps","https://play.google.com/store/search?q=p&c=apps","https://play.google.com/store/search?q=q&c=apps","https://play.google.com/store/search?q=r&c=apps","https://play.google.com/store/search?q=s&c=apps","https://play.google.com/store/search?q=t&c=apps","https://play.google.com/store/search?q=u&c=apps","https://play.google.com/store/search?q=v&c=apps","https://play.google.com/store/search?q=w&c=apps","https://play.google.com/store/search?q=x&c=apps","https://play.google.com/store/search?q=y&c=apps","https://play.google.com/store/search?q=z&c=apps"]
	for searchString in alpahbeticalSearchStrings:
		extractDataAndStore(dbHandle, searchString)

def dbConnectionCheck():
	dbHandle = MySQLdb.connect('trishuli.cs.umbc.edu', 'googleplaystore', 'prajitkumardas', 'googleplaystore');
	return dbHandle

def main(argv):
	if len(sys.argv) != 2:
		sys.stderr.write('Usage: python %s [i|c]\n')
		sys.exit(1)

	dbHandle = dbConnectionCheck() # DB Open

	startTime = datetime.datetime.now()
	if sys.argv[1] == "i":
		oneTimeCreateListOfAppsFromAlphabeticalSearch(dbHandle) # First level of search for app urls
	elif sys.argv[1] == "c":
		appUrlGeneration(dbHandle) # Second level of search for app urls
	else:
		sys.stderr.write('Usage: python %s [i|c]\n')
	endTime = datetime.datetime.now()
	print "Execution time was: "(endTime-startTime)
	dbHandle.close() #DB Close

if __name__ == "__main__":
	sys.exit(main(sys.argv))
