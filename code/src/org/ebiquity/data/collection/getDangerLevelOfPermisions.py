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
def readGooglePermissions(doInsertIntoDB):
	url = "https://raw.githubusercontent.com/android/platform_frameworks_base/master/core/res/AndroidManifest.xml"
	headers = {'User-Agent': 'Mozilla/5.0'}
	req = urllib2.Request(url, None, headers)
	outDict = {}
	try:
		file = urllib2.urlopen(req)
		data = file.read()
		dict = xmltodict.parse(data)

		broadcasts = []
		permGroups = []
		permissions = []

		target = open("sqlScripts/permissionsDML.sql", 'w')
		target.truncate()

		line = "USE `googleplaystore`;"
		target.write(line)
		target.write("\n")

		line = "--"
		target.write(line)
		target.write("\n")
		
		line = "-- Dumping data for table `permissions`"
		target.write(line)
		target.write("\n")
		
		line = "--"
		target.write(line)
		target.write("\n")
		target.write("\n")

		sqlStatement = "INSERT INTO `permissions` (`id`, `name`, `protection_level`, `permission_group`, `permission_flags`) VALUES"
		line = sqlStatement
		target.write(line)
		target.write("\n")

		with open('GoogleAndroidManifestPermissionsRaw.json', 'w') as fp:
			json.dump(dict, fp, indent=4)

		# Added all Broadcasts from the file into the result set
		for bcasts in dict['manifest']['protected-broadcast']:
			od = OrderedDict(bcasts)
			broadcast = {}
			if ('@android:name' in od) and (not (od['@android:name'].startswith('@'))):
				broadcast['name'] = od['@android:name']
			broadcasts.append(broadcast)
		outDict['broadcasts'] = broadcasts

		# Added all PermissionsGroups from the file into the result set
		for pgrps in dict['manifest']['permission-group']:
			od = OrderedDict(pgrps)
			permGroup = {}
			if ('@android:name' in od) and (not od['@android:name'].startswith('@')):
				permGroup['name'] = od['@android:name']
			if ('@android:priority' in od) and (not od['@android:priority'].startswith('@')):
				permGroup['priority'] = od['@android:priority']
			if ('@android:label' in od) and (not od['@android:label'].startswith('@')):
				permGroup['label'] =  od['@android:label']
			if ('@android:description' in od) and (not od['@android:description'].startswith('@')):
				permGroup['description'] =  od['@android:description']
			if ('@android:permissionGroupFlags' in od) and (not od['@android:permissionGroupFlags'].startswith('@')):
				permGroup['permissionGroupFlags'] =  od['@android:permissionGroupFlags']
			if ('@android:icon' in od) and (not od['@android:icon'].startswith('@')):
				permGroup['icon'] =  od['@android:icon']
			permGroups.append(permGroup)
		outDict['permGroups'] = permGroups

		# Added all Permissions from the file into the result set
		for perms in dict['manifest']['permission']:
			od = OrderedDict(perms)
			permission = {}

			name = ''
			protectionLevel = ''
			permissionGroup = ''
			permissionFlags = ''
			permissionLabel = ''
			permissionDescription = ''

			if ('@android:name' in od) and (not od['@android:name'].startswith('@')):
				permission['name'] = od['@android:name']
				name = permission['name']
			if ('@android:protectionLevel' in od) and (not od['@android:protectionLevel'].startswith('@')):
				permission['protectionLevel'] = od['@android:protectionLevel']
				protectionLevel = permission['protectionLevel']
			if ('@android:permissionGroup' in od) and (not od['@android:permissionGroup'].startswith('@')):
				permission['permissionGroup'] = od['@android:permissionGroup']
				permissionGroup = permission['permissionGroup']
			if ('@android:permissionFlags' in od) and (not od['@android:permissionFlags'].startswith('@')):
				permission['permissionFlags'] = od['@android:permissionFlags']    
				permissionFlags = permission['permissionFlags']
			if ('@android:label' in od) and (not od['@android:label'].startswith('@')):
				permission['label'] = od['@android:label']
				permissionLabel = permission['label']
			if ('@android:description' in od) and (not od['@android:description'].startswith('@')):
				permission['description'] = od['@android:description']
				permissionDescription = permission['description']

			permissions.append(permission)

			if doInsertIntoDB:
				insertIntoDB(permission['name'],permission['protectionLevel'],permission['permissionGroup'],permission['permissionFlags'])
			else:
				if permissionGroup == '':
					permissionGroup = 'NULL'
				if permissionFlags == '':
					permissionFlags = 'NULL'
				if permissionLabel == '':
					permissionLabel = 'NULL'
				if permissionDescription == '':
					permissionDescription = 'NULL'

				sqlStatement = "('"+name+"', '"+protectionLevel+"', '"+permissionGroup+"', '"+permissionFlags+"'),"
				# sqlStatement = "('"+name+"', '"+permissionLabel+"', '"+permissionDescription+"', '"+protectionLevel+"', '"+permissionGroup+"', '"+permissionFlags+"'),"
				sqlStatement = sqlStatement.replace("'NULL'", "NULL")

				line = sqlStatement
				target.write(line)
				target.write("\n")

		outDict['permissions'] = permissions

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
	with open('GoogleAndroidManifestPermissions.json', 'w') as fp:
		json.dump(outDict, fp, indent=4)
	
	line = "COMMIT;"
	target.write("\n")
	target.write(line)
	target.close()

def insertIntoDB(name, protectionLevel, permissionGroup, permissionFlags):
	sqlStatement = "insert into permissions(name, protection_level, permission_group, permission_flags) values('"+name+"', '"+protectionLevel+"', '"+permissionGroup+"', '"+permissionFlags+"') on duplicate key update protection_level = '"+protectionLevel+"', permission_group = '"+permissionGroup+"', permission_flags = '"+permissionFlags+"';"
	if permissionFlags == '':
		sqlStatement = "insert into permissions(name, protection_level, permission_group, permission_flags) values('"+name+"', '"+protectionLevel+"', '"+permissionGroup+"', NULL) on duplicate key update protection_level = '"+protectionLevel+"', permission_group = '"+permissionGroup+"', permission_flags = NULL;"

	dbHandle = databaseHandler.dbConnectionCheck()
	databaseHandler.dbManipulateData(dbHandle, sqlStatement)

def doTask(doInsertIntoDB):
	readGooglePermissions(doInsertIntoDB)

def main(argv):
	if len(sys.argv) != 2:
		sys.stderr.write('Usage: python getDangerLevelOfPermisions.py doInsertIntoDB\n')
		sys.exit(1)

	startTime = time.time()
	doInsertIntoDB = sys.argv[1]
	#Start extracting data
	doTask(doInsertIntoDB)
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	sys.exit(main(sys.argv))
