#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on April 25, 2016
@author: Prajit Kumar Das

Usage: python syscallAnalysis.py\n

One time extraction code for data from Playdrone data set.
'''
import time
import sys
import os
import platform
from ConfigParser import SafeConfigParser

from code.src.org.ebiquity.data.collection.GooglePlayAPI.androguard.androproto import apk


def getApkPath():
    parser = SafeConfigParser()
    parser.read('apkconfig.ini')

    path = parser.get('apkLocation', 'defaultPath')
    return path

def doTask():
    osInfo = platform.system()
    currentPath = os.getcwd()
    apkPath = getApkPath()
    if apkPath != "defaultPath":
        if osInfo == 'Windows':
            outputDirectoryPath = currentPath + "\\out"
        elif osInfo == 'Linux' or 'Darwin':
            outputDirectoryPath = currentPath + "/out"
        else:
            print 'The current os not supported at the moment.'
            return
    else:
        print "fix the config file"


def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python syscallAnalysis.py\n')
		sys.exit(1)

	startTime = time.time()
	doTask()
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	sys.exit(main(sys.argv))