from bs4 import BeautifulSoup
import urllib, re, urllib, simplejson, sys, datetime#, _mysql_exceptions

def extractDataAndStore(dbHandle, urlExtract):
    cursor = dbHandle.cursor()
    page=urllib.urlopen(urlExtract).read()
    soup = BeautifulSoup(''.join(page))
    data = soup.findAll(attrs={'class': 'card-click-target'})

    for chunk in data:
        url = "https://play.google.com"+chunk['href']
        packageName = url.split("=")
        sqlStatement = "INSERT INTO appurls(app_pkg_name, app_url) VALUES('"+packageName[1]+"', '"+url+"');"
        try:
            cursor.execute(sqlStatement)
            dbHandle.commit()
        except _mysql_exceptions.IntegrityError:
            print "data already there"
        except:
            print "Unexpected error:", sys.exc_info()[0]
            raise

def oneTimeCreateListOfAppsFromAlphabeticalSearch(dbHandle):
    alpahbeticalSearchStrings=["https://play.google.com/store/search?q=a&c=apps","https://play.google.com/store/search?q=b&c=apps","https://play.google.com/store/search?q=c&c=apps","https://play.google.com/store/search?q=d&c=apps","https://play.google.com/store/search?q=e&c=apps","https://play.google.com/store/search?q=f&c=apps","https://play.google.com/store/search?q=g&c=apps","https://play.google.com/store/search?q=h&c=apps","https://play.google.com/store/search?q=i&c=apps","https://play.google.com/store/search?q=j&c=apps","https://play.google.com/store/search?q=k&c=apps","https://play.google.com/store/search?q=l&c=apps","https://play.google.com/store/search?q=m&c=apps","https://play.google.com/store/search?q=n&c=apps","https://play.google.com/store/search?q=o&c=apps","https://play.google.com/store/search?q=p&c=apps","https://play.google.com/store/search?q=q&c=apps","https://play.google.com/store/search?q=r&c=apps","https://play.google.com/store/search?q=s&c=apps","https://play.google.com/store/search?q=t&c=apps","https://play.google.com/store/search?q=u&c=apps","https://play.google.com/store/search?q=v&c=apps","https://play.google.com/store/search?q=w&c=apps","https://play.google.com/store/search?q=x&c=apps","https://play.google.com/store/search?q=y&c=apps","https://play.google.com/store/search?q=z&c=apps"]
    for searchString in alpahbeticalSearchStrings:
        extractDataAndStore(dbHandle, searchString)

def relatedAppUrlGeneration(dbHandle):
    cursor = dbHandle.cursor()
    sqlStatement = "SELECT app_url FROM appurls WHERE parsed=0;"
    try:
        print cursor.execute(sqlStatement)
    except _mysql_exceptions.IntegrityError:
        print "data already there"
    except:
        print "Unexpected error:", sys.exc_info()[0]
        raise

def dbConnectionCheck():
    dbHandle = MySQLdb.connect('trishuli.cs.umbc.edu', 'googleplaystore', 'prajitkumardas', 'googleplaystore');
    return dbHandle

def main(argv):
    if len(sys.argv) != 1:
        sys.stderr.write('Usage: python %s\n')
        sys.exit(1)

    dbHandle = dbConnectionCheck() # DB Open

    #oneTimeCreateListOfAppsFromAlphabeticalSearch(dbHandle) # First level of search for app urls
    #appUrlGeneration(dbHandle) # Second level of search for app urls
    dbHandle.close() #DB Close

if __name__ == "__main__":
    sys.exit(main(sys.argv))
