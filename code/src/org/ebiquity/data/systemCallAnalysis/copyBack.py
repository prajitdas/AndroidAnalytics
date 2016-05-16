'''
Created on May 16,2016
@author: Prajit Kumar Das

Usage: python copyBack.py\n

Code to copyback error files
'''
import subprocess as s
import json
import shutil
import os
import logging
logging.basicConfig(filename='copyBack.log',level=logging.DEBUG)

appDict = json.loads(open('masterJsonOutputFile.json').read())
emptyExecAppList = []
for key in appDict.iterkeys():
	if not appDict[key]: 	
		emptyExecAppList.append("/home/prajit/code/bkp/"+str(key)+".apk")

movePath = "/home/prajit/code/appsBkp/"
emptyExecAppList.sort()
for app in emptyExecAppList:
	if os.path.isfile(app):
		logging.debug('moving '+app+' to '+ movePath)
		shutil.move(app,movePath)
	else:
		logging.debug('file '+app+' doesn\'t exist')