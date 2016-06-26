'''
Created on June 26,2016
@author: Prajit Kumar Das

Usage: python mergingJsonFiles.py originalFile merginingFile\n

Code to merge two different run JSON files.
'''
import json
import sys
import time

# Returns True if the original syscall dict had more variety of calls or more number of total calls
# Presence of more syscalls (or words) has higher significance
# Presence of number of syscalls (or words) has lower significance
def hasMoreCallsSyscallDict(origSyscallDict,newSyscallDict):
	# origTotalCalls = 0
	# newTotalCalls = 0
	# for freq in origSyscallDict.itervalues():
	# 	origTotalCalls += freq
	# for freq in newSyscallDict.itervalues():
	# 	newTotalCalls += freq
	if len(origSyscallDict) >= len(newSyscallDict):
		return False
	return True

def doTask(originalFile,mergingFile):
	originalDict = json.loads(open(originalFile,'r').read())
	mergingDict = json.loads(open(mergingFile,'r').read())

	for app2 in mergingDict.iterkeys():
		if app2 in originalDict:
			if hasMoreCallsSyscallDict(originalDict[app2],mergingDict[app2]) == True:
				originalDict[app2] = mergingDict[app2]
		else:
			originalDict[app2] = mergingDict[app2]

	open(originalFile,'w').write(json.dumps(originalDict,indent=4,sort_keys=True))

def main(argv):
	if len(sys.argv) != 3:
		sys.stderr.write('Usage: python mergingJsonFiles.py originalFile merginingFile\n')
		sys.exit(1)

	originalFile = sys.argv[1]
	merginingFile = sys.argv[2]

	startTime = time.time()
	doTask(originalFile,merginingFile)
	executionTime = str((time.time()-startTime)*1000)
	print 'Execution time was:',executionTime,'ms'

if __name__ == "__main__":
	sys.exit(main(sys.argv))