'''
Created on December 14, 2015
@author: Prajit Kumar Das
Usage: python flowDroid.py
'''

import os
import sys
import platform
import shutil
import subprocess
from os import listdir
from os.path import isfile, join
import time
from subprocess import Popen, PIPE, STDOUT

def makeSurePathExists(path):
	if os.path.exists(path):
		return True
	return False

def deleteAndReCreateFolder(path):
	if os.path.exists(path):
		shutil.rmtree(path)
	os.makedirs(path)

def runFlowDroid(inpath,outPath,platformsFolder,currentDirectory,apkName=''):
	if (apkName == ''):
		# Run analysis: inpath is the input files directory, outpath is the output files directory, 
		# currentDirectory is the working directory
		files = [ f for f in listdir(inpath) if isfile(join(inpath,f)) ]
		for inputFile in files:
			# Find the package name from the apk file
			pkgName = inputFile.replace(".apk", "")
			# Create the output file name with the package name
			outputFileName = outPath+pkgName+".txt"
			# Open a file in write mode
			filePointer = open(outputFileName, 'w')
			# The apk to process is given by
			apk = inpath+inputFile
			# Command to execute is
			p = Popen(['java', '-Xmx120g', '-jar', 'FlowDroid.jar', apk, platformsFolder], stdout=PIPE, stderr=STDOUT)
			for line in p.stdout:
				filePointer.write(line)
			filePointer.close()
			# Command to execute is
			# subprocess.call(['java', '-Xmx120g', '-jar', 'FlowDroid.jar', apk, platformsFolder, '>', outputFileName], shell=True)
	else:
		# Run analysis: inpath is the input files directory, outpath is the output files directory, 
		# Find the package name from the apk file
		pkgName = apkName.replace(".apk", "")
		# Create the output file name with the package name
		outputFileName = outPath+pkgName+".txt"
		# Open a file in write mode
		filePointer = open(outputFileName, 'w')
		# The apk to process is given by
		apk = inpath+apkName
		# Command to execute is
		p = Popen(['java', '-Xmx120g', '-jar', 'FlowDroid.jar', apk, platformsFolder], stdout=PIPE, stderr=STDOUT)
		for line in p.stdout:
			filePointer.write(line)
		filePointer.close()
		# Command to execute is
		# subprocess.call(['java', '-Xmx120g', '-jar', 'FlowDroid.jar', apk, platformsFolder, '>', outputFileName], shell=True)


def doTask(pathToApk=''):
	currentDirectory = os.getcwd()

	# Detect operating system and generate paths accordingly
	osInfo = platform.system()
	# Find the Android home directory
	androidHome = os.environ.get('ANDROID_HOME')
	if osInfo == 'Windows':
		outputDirectory = currentDirectory+"\\out\\"
		appsFolder = currentDirectory+"\\apps\\"
		platformsFolder = androidHome+"\\platforms"
		if(pathToApk != ''):
			# Get apk name
			apkName = pathToApk.split('\\')[-1]
	elif osInfo == 'Linux':
		outputDirectory = currentDirectory+"/out/"
		appsFolder = currentDirectory+"/apps/"
		platformsFolder = androidHome+"/platforms"
		if(pathToApk != ''):
			# Get apk name
			apkName = pathToApk.split('/')[-1]
	else:
		print 'The current os is not supported at the moment.'

	print apkName
	if makeSurePathExists(appsFolder):
		if makeSurePathExists(platformsFolder):
			deleteAndReCreateFolder(outputDirectory)
			if(pathToApk != ''):
				runFlowDroid(appsFolder,outputDirectory,platformsFolder,currentDirectory,apkName)
			else:
				runFlowDroid(appsFolder,outputDirectory,platformsFolder,currentDirectory)
		else:
			print 'The Android home folder doesn\'t exist. Setup the ANDROID_HOME environment variable as the home directory of your Android SDK installation and the run this script again.'
	else:
		print 'The apps folder doesn\'t exist. Create one and download apks to it and then run this script again.'

def main(argv):
	if len(sys.argv) > 2:
		sys.stderr.write('Usage: python flowDroid.py <pathToApkFileToAnalyze> | python flowDroid.py\n')
		sys.exit(1)
	elif len(sys.argv) == 2:
		startTime = time.time()
		doTask(sys.argv[1])
		executionTime = str((time.time()-startTime)*1000)
		print "Execution time was: "+executionTime+" ms"
	elif len(sys.argv) == 1:
		startTime = time.time()
		doTask()
		executionTime = str((time.time()-startTime)*1000)
		print "Execution time was: "+executionTime+" ms"
	else:
		sys.stderr.write('Usage: python flowDroid.py <pathToApkFileToAnalyze> | python flowDroid.py\n')
		sys.exit(1)

if __name__ == "__main__":
	sys.exit(main(sys.argv))

