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
	print path
	if makeSurePathExists(path):
		shutil.rmtree(path)
	os.makedirs(path)

def runAnalysis(inpath,outPath,currentDirectory):
	print inpath,outPath,currentDirectory
	#	Run analysis
	files = [ f for f in listdir(inpath) if isfile(join(inpath,f)) ]
	for inputFile in files:
		os.chdir(inpath)
		pkgName = inputFile.replace(".apk", "")
		outputFolder = outPath+pkgName
		apk = inpath+inputFile
	
		subprocess.call(["apktool", "d", "-f", apk, "-o", outputFolder], shell=True)
		# osInfo = platform.system()
		# if osInfo == 'Windows':
		# 	manifestFile = outPath+pkgName+"\\AndroidManifest.xml"
		# elif osInfo == 'Linux':
		# 	manifestFile = outPath+pkgName+"/AndroidManifest.xml"
		# renamedManifestFile = outPath+pkgName+".xml"
		# shutil.copy2(manifestFile, renamedManifestFile)
		#http://stackoverflow.com/questions/1557351/python-delete-non-empty-dir
		'''
			The standard library includes shutil.rmtree for this. By default,
			
			shutil.rmtree(path)  # errors if dir not empty
			will give OSError: [Errno 66] Directory not empty: <your/path>.
			
			You can delete the directory and its contents anyway by ignoring the error:
			
			shutil.rmtree(role_fs_path, ignore_errors=True)
			You can perform more sophisticated error handling by also passing onerrror=<some function(function, path, excinfo)>.
		'''
		# shutil.rmtree(outputFolder, ignore_errors=True)
		os.chdir(currentDirectory)
		# else:
		# 	print "Moving on to decompiling the next app. This one is already in the database."

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
