#!/usr/bin/python

# Do not remove
GOOGLE_LOGIN = GOOGLE_PASSWORD = AUTH_TOKEN = None

import sys
from google.protobuf import text_format
import time

from config import *
from googleplay import GooglePlayAPI

def getPackagePermission(packagenames,androidId):
	api = GooglePlayAPI(androidId)
	'''
		Prajit Das: Cycling through the different androidIds we have 
		to ensure that we are not blocked by Google
		The following statement was the original code
	'''
	#api = GooglePlayAPI(ANDROID_ID)
	api.login(GOOGLE_LOGIN, GOOGLE_PASSWORD, AUTH_TOKEN)
	
	# Only one app
	if (len(packagenames) == 1):
		response = api.details(packagenames[0])
		permissionList = []
		#print "\n".join(i.encode('utf8') for i in response.docV2.details.appDetails.permission)
		for permission in response.docV2.details.appDetails.permission:
			permissionList.append(permission.encode('utf8'))
		for permission in permissionList: print permission
		return permissionList
	
	else: # More than one app
		permissionListDict = {}
		response = api.bulkDetails(packagenames)
		for entry in response.entry:
			if (not not entry.ListFields()): # if the entry is not empty
				permissionList = []
#				 print entry.doc.docid + ":"
#				 print "\n".join("	"+i.encode('utf8') for i in entry.doc.details.appDetails.permission)
				for permission in entry.doc.details.appDetails.permission:
					permissionList.append(permission.encode('utf8'))
				for permission in permissionList: print permission

				permissionListDict[entry.doc.docid] = permissionList
				return permissionListDict

def main(argv):
	if (len(sys.argv) < 2):
		print "Usage: %s packagename1 [packagename2 [...]]" % sys.argv[0]
		print "Display permissions required to install the specified app(s)."
		sys.exit(0)
		
	startTime = time.time()
	packagenames = sys.argv[1:]
	getPackagePermission(packagenames)
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"
	
if __name__ == "__main__":
	main(sys.argv)