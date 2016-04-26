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

def getClusteringDataInput():
	masterJsonFile = os.path.join(jsonPath,"masterJsonOutputFile.json")
	try:
		return json.loads(open(masterJsonFile).read())
	except IOError as e:
		print "I/O error({0}): {1}".format(e.errno, e.strerror)
	except ValueError:
		print "JSON decoding errors"
	except:
		print "Unexpected error"
	sys.exit(1)

def runClustering():
	jsonDict = getClusteringDataInput()

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