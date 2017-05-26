#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on August 3, 2015
@author: Prajit
Usage: python readFinalClusterinResults.py fileToRead
'''

import sys
import time
import databaseHandler
import json
 
def readResults(fileToRead):
	resultsDict = json.loads(open(fileToRead, 'r').read().decode('utf8'))
	for key, value in resultsDict.iteritems():
		for app_pkg_name, clusterNumber in value[0].iteritems():
			print key+","+app_pkg_name+","+str(clusterNumber)

def main(argv):
	if len(sys.argv) != 2:
		sys.stderr.write('Usage: python readFinalClusterinResults.py fileToRead\n')
		sys.exit(1)

	startTime = time.time()
	readResults(sys.argv[1])
	executionTime = str((time.time()-startTime)*1000)
#	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	main(sys.argv)