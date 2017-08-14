'''
Created on July 28,2016
@author: Prajit Kumar Das

Usage: python mergingCategoryJsonFiles.py originalFile mergingFile\n

Code to merge two different catrgory JSON files.
'''
import json
import sys
import time

def doTask(originalFile,mergingFile):
	originalDict = json.loads(open(originalFile,'r').read())
	mergingDict = json.loads(open(mergingFile,'r').read())

	for app in mergingDict.iterkeys():
		if not app in originalDict:
			originalDict[app] = mergingDict[app]

	# print originalDict, mergingDict
	json.dump(originalDict, open(originalFile,'w'), sort_keys = True, indent = 4)

def main(argv):
	if len(sys.argv) != 3:
		sys.stderr.write('Usage: python mergingCategoryJsonFiles.py originalFile mergingFile\n')
		sys.exit(1)

	originalFile = sys.argv[1]
	mergingFile = sys.argv[2]

	startTime = time.time()
	doTask(originalFile,mergingFile)
	executionTime = str((time.time()-startTime)*1000)
	print 'Execution time was:',executionTime,'ms'

if __name__ == "__main__":
	main(sys.argv)