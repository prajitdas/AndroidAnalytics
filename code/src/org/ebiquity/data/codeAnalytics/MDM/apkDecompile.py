'''
Created on December 14, 2015
@author: Prajit Kumar Das
Usage: python apkDecompile.py
'''

import os
import sys
import platform
import shutil
import subprocess
from os import listdir
from os.path import isfile, join
from bs4 import BeautifulSoup as Soup
import time

def makeSurePathExists(path):
	if os.path.exists(path):
		return True
	return False

def deleteAndReCreateFolder(path):
	if makeSurePathExists(path):
		shutil.rmtree(path)
	os.makedirs(path)

def runAnalysis(inpath,outPath,currentDirectory):
	#	Run analysis
	files = [ f for f in listdir(inpath) if isfile(join(inpath,f)) ]
	for inputFile in files:
		os.chdir(inpath)
		pkgName = inputFile.replace(".apk", "")
		outputFolder = outPath+pkgName
		apk = inpath+inputFile
	
		subprocess.call(["apktool", "d", "-f", apk, "-o", outputFolder], shell=True)
		os.chdir(currentDirectory)

def extractManifestFiles():
	currentDirectory = os.getcwd()

	# Detect operating system and takes actions accordingly
	osInfo = platform.system()
	if osInfo == 'Windows':
		decommpileOutputDirectory = currentDirectory+"\\data\\"
		appsFolder = currentDirectory+"\\apps\\"
	elif osInfo == 'Linux':
		decommpileOutputDirectory = currentDirectory+"/data/"
		appsFolder = currentDirectory+"/apps/"
	else:
		print 'The current os not supported at the moment.'

	if makeSurePathExists(appsFolder):
		deleteAndReCreateFolder(decommpileOutputDirectory)
		runAnalysis(appsFolder,decommpileOutputDirectory,currentDirectory)
	else:
		print 'The apps folder doesn\'t exist. Create one and download apks to it and then run this script again.'

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python apkDecompile.py\n')
		sys.exit(1)

	startTime = time.time()
	extractManifestFiles()
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	sys.exit(main(sys.argv))
