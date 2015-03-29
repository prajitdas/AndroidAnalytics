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
	'''
		Run analysis
	'''
	os.chdir(inpath)
	files = [ f for f in listdir(inpath) if isfile(join(inpath,f)) ]
	for file in files:
		subprocess.call(["apktool", "d", "-f", inpath+file, "-o", outPath], shell=True)

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python analysis.py\n')
		sys.exit(1)
		
	'''
		Detect operating system and takes actions accordingly
	'''
	osInfo = platform.system()
	if osInfo == 'Windows':
		appsFolder = os.path.dirname(os.path.realpath(__file__))+"\\apps\\"
		outFolder = os.path.dirname(os.path.realpath(__file__))+"\\apps\\"
	elif osInfo == 'Linux':
		appsFolder = os.path.dirname(os.path.realpath(__file__))+"/data/"
		outFolder = os.path.dirname(os.path.realpath(__file__))+"\\data\\"
	else:
		print 'The current os not supported at the moment.'

	if makeSurePathExists(appsFolder) & makeSurePathExists(outFolder):
		runAnalysis(appsFolder,outFolder)
	else:
		print 'The data folder doesn\'t exist. Create one and download apks to it and then run this script again.'

if __name__ == "__main__":
	sys.exit(main(sys.argv))
