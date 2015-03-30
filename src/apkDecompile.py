#!/usr/bin/python

import os
import sys
import platform
import shutil
import subprocess
from os import listdir
from os.path import isfile, join

def makeSurePathExists(path):
	if os.path.exists(path):
		return True
	return False

def deleteAndReCreateFolder(path):
	if os.path.exists(path):
		shutil.rmtree(path)
	os.makedirs(path)

def runAnalysis(inpath,outPath):
	#	Run analysis

	os.chdir(inpath)
	files = [ f for f in listdir(inpath) if isfile(join(inpath,f)) ]
	for inputFile in files:
		pkgName = inputFile.replace(".apk", "")
		outputFolder = outPath+pkgName
		subprocess.call(["apktool", "d", "-f", inpath+inputFile, "-o", outputFolder], shell=True)
		osInfo = platform.system()
		if osInfo == 'Windows':
			manifestFile = outPath+pkgName+"\\AndroidManifest.xml"
		elif osInfo == 'Linux':
			manifestFile = outPath+pkgName+"/AndroidManifest.xml"
		renamedManifestFile = outPath+pkgName+".xml"
		shutil.copy2(manifestFile, renamedManifestFile)
		shutil.rmtree(outputFolder)
		extractPermissionsInfo(renamedManifestFile)

def extractManifestFiles():
	# Detect operating system and takes actions accordingly

	osInfo = platform.system()
	if osInfo == 'Windows':
		decommpileOutputDirectory = os.path.dirname(os.path.realpath(__file__))+"\\data\\"
		appsFolder = os.path.dirname(os.path.realpath(__file__))+"\\apps\\"
	elif osInfo == 'Linux':
		decommpileOutputDirectory = os.path.dirname(os.path.realpath(__file__))+"/data/"
		appsFolder = os.path.dirname(os.path.realpath(__file__))+"/apps/"
	else:
		print 'The current os not supported at the moment.'

	if makeSurePathExists(appsFolder):
		deleteAndReCreateFolder(decommpileOutputDirectory)
		runAnalysis(appsFolder,decommpileOutputDirectory)
	else:
		print 'The apps folder doesn\'t exist. Create one and download apks to it and then run this script again.'

def extractPermissionsInfo(renamedManifestFile):
	print renamedManifestFile

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python analysis.py\n')
		sys.exit(1)
		
	extractManifestFiles()

if __name__ == "__main__":
	sys.exit(main(sys.argv))
