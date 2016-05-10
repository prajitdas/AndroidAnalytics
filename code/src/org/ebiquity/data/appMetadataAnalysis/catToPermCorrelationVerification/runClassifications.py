'''
Created on May 9, 2016
@author: Prajit

Usage: python runClassifications.py
'''
import sys
import time
import json
import logging
logging.basicConfig(filename='permcat.log',level=logging.DEBUG)

#Do classification
def doClassify():
	logging.debug('In doClassify')

'''
Input options for data generation:

	appCategoryListSelection = [med|hea|hmd|hmdtop|fabra|top|all]
		med: medical apps
		hea: health & fitness apps
		hmd: health & fitness and medical apps
		hmdtop: health & fitness and medical top apps
		fabra: family brain games apps
		top: top Google apps
		all: all apps

	restrictionListSelection = [int|top25|google]
		all: all permissions
		top[25|50|75|100|125|150|175|200|225|250|275|300|500|1000|10000|100000|200000]: top [25|50|75|100|125|150|175|200|225|250|275|300|500|1000|10000|100000|200000] permissions
		google: google permissions

	restrictionType = [allow|'']
		allow: allow selection
		'': deny
'''
def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python runClassifications.py')
		sys.exit(1)

	startTime = time.time()
	#Initiate the classification process
	doClassify()
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	sys.exit(main(sys.argv))
