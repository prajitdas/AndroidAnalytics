#!/usr/bin/env python
"""
Purpose: Get the permission levels from
https://raw.githubusercontent.com/android/platform_frameworks_base/master/core/res/AndroidManifest.xml
and extract permission related information
"""
__author__ = "Prajit Kumar Das"
__copyright__ = "Copyright 2015, UMBC, Ebiquity Research Group"
__version__ = "0.1"
__email__ = "prajit1@umbc.edu"
__status__ = "Development"
__date__ = "September 25, 2015"

from bs4 import BeautifulSoup
import urllib2
import databaseHandler
# from mysql.connector import conversion
import traceback
import httplib
import time
import sys
import xmltodict
import json
from collections import OrderedDict

# Hit the Google GitHub URL, extract info about permissions and store in the
def doTask():
	dbHandle = databaseHandler.dbConnectionCheck()
	url = "https://raw.githubusercontent.com/android/platform_frameworks_base/master/core/res/AndroidManifest.xml"
	headers = {'User-Agent': 'Mozilla/5.0'}
	req = urllib2.Request(url, None, headers)
	try:
		file = urllib2.urlopen(req)
		data = file.read()
		dict = xmltodict.parse(data)

		with open('GoogleAndroidManifestPermissions.json', 'w') as fp:
			json.dump(dict, fp, indent=4)

		# for broadcasts in dict['manifest']['protected-broadcast']:
			# od = OrderedDict(broadcasts)
			# print od['@android:name']
		# for permGroups in dict['manifest']['permission-group']:
			# od = OrderedDict(permGroups)
			# if '@android:name' in od:
				# print od['@android:name']
			# if '@android:label' in od:
				# print od['@android:label']
			# if '@android:description' in od:
				# print od['@android:description']
			# if '@android:permissionGroupFlags' in od:
				# print od['@android:permissionGroupFlags']
			# if '@android:priority' in od:
				# print od['@android:priority']
			# if '@android:icon' in od:
				# print od['@android:icon']
		for permissions in dict['manifest']['permission']:
			od = OrderedDict(permissions)
			if '@android:name' in od:
				name = od['@android:name']
			if '@android:permissionGroup' in od:
				permissionGroup = od['@android:permissionGroup']
			if '@android:protectionLevel' in od:
				protectionLevel = od['@android:protectionLevel']
			if '@android:permissionFlags' in od:
				permissionFlags = od['@android:permissionFlags']
			# if '@android:label' in od:
				# print od['@android:label']
			# if '@android:description' in od:
				# print od['@android:description']
			sqlStatement = "insert into permissions(name, protection_level, permission_group, permission_flags) values('"+name+"', '"+protectionLevel+"', '"+permissionGroup+"', '"+permissionFlags+"') on duplicate key update protection_level = '"+protectionLevel+"', permission_group = '"+permissionGroup+"', permission_flags = '"+permissionFlags+"';"
			databaseHandler.dbManipulateData(dbHandle, sqlStatement)
		# soup = BeautifulSoup(page, 'xml')
		# data = soup.findAll(attrs={'class': 'card-click-target'})

		# elementlist = xmldoc.getElementsByTagName('protected-broadcast')

		# for element in elementlist:
		#	 print element
			# packageName = url.split("=")

			# sqlStatement = "SELECT * FROM permissions"
			# databaseHandler.dbManipulateData(dbHandle, sqlStatement)
	except urllib2.HTTPError, e:
		print 'HTTPError = ', str(e.code)
		#This is risky!!!!
		# June 19, 2015: Yes, this was risky commenting out this piece of code - Prajit
		# Don't be ridiculous, once you have collected some data you should not be deleting that data, right?
		# Have to monitor this properly
		#sqlStatement = "DELETE FROM `appurls` WHERE `app_url` = '"+urlExtract+"';"
		#databaseHandler.dbManipulateData(dbHandle, sqlStatement)
	except urllib2.URLError, e:
		print 'URLError = ' + str(e.reason)
	except httplib.HTTPException, e:
		print 'HTTPException'
	except Exception:
		print 'generic exception: ' + traceback.format_exc()

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python getDangerLevelOfPermisions.py\n')
		sys.exit(1)

	startTime = time.time()
	#Start extracting data
	doTask()
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	sys.exit(main(sys.argv))
