'''
Created on June 22, 2016
@author: Prajit Kumar Das
Usage: python updateReviewRatings.py
Purpose: To update the appdata table with the correct review_rating or 
setting still_in_googleplaystore = 0 
if the app is no longer available on the play store (Error 404)
or if the app is not available in the current location context on the play store (Error 403)
'''

import mysql.connector as mysql
import sys
import urllib2
from bs4 import BeautifulSoup as bs
import time
import databaseHandler

def doTask():
    dbHandle = databaseHandler.dbConnectionCheck() # DB Open
    cursor = dbHandle.cursor()
    sqlStatement = "SELECT `app_pkg_name` FROM  `appdata`;"
    try:
        cursor.execute(sqlStatement)
        for app in cursor:
            app_pkg_name = app[0]
            url = 'https://play.google.com/store/apps/details?id='+app_pkg_name
            headers = { 'User-Agent' : 'Mozilla/5.0' }
            req = urllib2.Request(url, None, headers)
            try: 
                page = urllib2.urlopen(req).read()
                soup = bs(''.join(page))
                app_dict = {}
                app_dict['app_name'] = app_pkg_name
                for div in soup.findAll(attrs={'class': 'score'}):
                    for child in div.children:
                        if not child.string == ' ':
                            app_dict['review_rating'] = round(eval(child.string),1)
                        else:
                            app_dict['review_rating'] = 0.0
                sqlStatement = "UPDATE `appdata` SET `review_rating`= "+str(app_dict['review_rating'])+" WHERE `app_pkg_name` = "+app_pkg_name+";"
                databaseHandler.dbManipulateData(dbHandle, sqlStatement)
                # from pprint import pprint as pp
                # pp(app_dict)
            except urllib2.HTTPError, e:
                print 'HTTPError =', str(e.code), 'for app:', app[0]
                sqlStatement = "UPDATE `appdata` SET `still_in_googleplaystore`= 0 WHERE `app_pkg_name` = "+app_pkg_name+";"
                databaseHandler.dbManipulateData(dbHandle, sqlStatement)
    except:
        print 'Unexpected error in updateReviewRatings:', sys.exc_info()[0]
        raise

    dbHandle.close() #DB Close

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
