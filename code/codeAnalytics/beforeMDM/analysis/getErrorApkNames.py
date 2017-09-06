#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on October 7, 2015
@author: Prajit Kumar Das
Usage: python getErrorApkNames.py
'''

import os
import sys
import time
import json

def doTask():
	with open('malwareAppData144409291038.json') as fp:
		appPermDict = json.load(fp)
		print appPermDict

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python getErrorApkNames.py\n')
		sys.exit(1)

	startTime = time.time()
	doTask()
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	main(sys.argv)