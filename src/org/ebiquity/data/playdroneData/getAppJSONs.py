#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on June 29, 2015
@author: Prajit Kumar Das

Usage: python getAppData.py\n

One time extraction code for data from Playdrone data set.
'''
import time
import sys
import databaseHandler
import json

# Update "urls" column to put playdrone data
def updateURLs(dbHandle, app_pkg_name, app_url, playdrone_metadata_url, playdrone_apk_url):
	sqlStatement = "INSERT INTO `appurls` (`app_pkg_name`,`app_url`,`playdrone_metadata_url`,`playdrone_apk_url`) VALUES('"+app_pkg_name+"','"+app_url+"','"+playdrone_metadata_url+"','"+playdrone_apk_url+"') ON DUPLICATE KEY UPDATE `playdrone_metadata_url`='"+playdrone_metadata_url+"',`playdrone_apk_url`='"+playdrone_apk_url+"';"
	print sqlStatement
	databaseHandler.dbManipulateData(dbHandle, sqlStatement)

def doTask(baseURL):
	dbHandle = databaseHandler.dbConnectionCheck() # DB Open

	for appinfo in json.loads(open('Playdrone_Dataset_2014_10_31.json', 'r').read().decode('utf8')):
		app_pkg_name = appinfo["app_id"]
		app_url = baseURL + app_pkg_name
		playdrone_metadata_url = appinfo["metadata_url"]
		playdrone_apk_url = ""
		if 'apk_url' in appinfo:
			playdrone_apk_url = appinfo["apk_url"]
		updateURLs(dbHandle, app_pkg_name, app_url, playdrone_metadata_url, playdrone_apk_url)
		# print appinfo["title"], 
		# print appinfo["developer_name"]
		# print appinfo["category"]
		# print appinfo["free"]
		# print appinfo["version_code"]
		# print appinfo["version_string"]
		# print appinfo["installation_size"]
		# print appinfo["downloads"]
		# print appinfo["star_rating"]
		# print appinfo["snapshot_date"]

	dbHandle.close() #DB Close

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python getPermissions.py\n')
		sys.exit(1)

	baseURL = "https://play.google.com/store/apps/details?id="
	startTime = time.time()
	doTask(baseURL)
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	sys.exit(main(sys.argv))
