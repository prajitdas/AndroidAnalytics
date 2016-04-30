#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on Apr 1, 2015
@author: Prajit Kumar Das
Usage: python extractApkFromMobile
'''

from bs4 import BeautifulSoup
import urllib2
import os 
import sys
import subprocess
import platform
import time

def downloadAPK(appsDownloadDirectory,path):
	if not os.path.isdir(os.path.dirname(appsDownloadDirectory)):
		os.makedirs(appsDownloadDirectory)

	os.chdir(appsDownloadDirectory)
	subprocess.call(["adb", "pull", path])

def downloadAPKFromPhone(): 
	listOfPackages = subprocess.check_output(["adb", "shell", "pm", "list", "packages"])
#	This is a brilliant Python line I learnt from AK
#	 lines = [line.strip() for line in listOfPackages.split()]
	for line in listOfPackages.split():
		package = line.strip().split(":")[-1]
		# Get the path of the apk and extract it
		path = subprocess.check_output(["adb", "shell", "pm", "path", package]).strip().split(":")[-1]

		# If the apps download directory doesn't exist just create it
		currentDirectory = os.getcwd()

		osInfo = platform.system()
		if osInfo == 'Windows':
			appsDownloadDirectory = currentDirectory+"\\apps\\"
			downloadAPK(appsDownloadDirectory,path)
		elif osInfo == 'Linux':
			appsDownloadDirectory = currentDirectory+"/apps/"
			downloadAPK(appsDownloadDirectory,path)
		elif
		else:
			sys.stderr.write('The current os not supported at the moment.\n')
			sys.exit(1)
		copiedFromPhoneAPKName = appsDownloadDirectory+path.split("/")[-1]
		realPackageBasedAPKName = appsDownloadDirectory+package+".apk"
		try:
			os.rename(copiedFromPhoneAPKName, realPackageBasedAPKName)
		except WindowsError:
			# The file already exists, we should copy the new apk over it
			os.remove(realPackageBasedAPKName)
			os.rename(copiedFromPhoneAPKName, realPackageBasedAPKName)
		os.chdir(currentDirectory)

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python extractApkFromMobile\n')
		sys.exit(1)
	
	startTime = time.time()
	downloadAPKFromPhone()
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	sys.exit(main(sys.argv))
