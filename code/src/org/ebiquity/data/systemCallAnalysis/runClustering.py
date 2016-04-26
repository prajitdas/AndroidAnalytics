#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on April 26, 2016
@author: Prajit Kumar Das

Usage: python runClustering.py\n

Run clustering.
'''
import time
import sys
import os

def runClustering():
	print "In runClustering method"

def doTask():
	runClustering()

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python runClustering.py\n')
		sys.exit(1)

	startTime = time.time()
	doTask()
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	sys.exit(main(sys.argv))