'''
Created on July 4,2016
@author: Prajit Kumar Das

Usage: python convert.py jsonFileName\n

convert old json format to new
'''
import sys
import json

def main(argv):
	if len(sys.argv) != 2:
		sys.stderr.write('Usage: python convert.py jsonFileName\n')
		sys.exit(1)

	jsonFileName = sys.argv[1]
	jsonDict = json.loads(open(jsonFileName,'r').read())

	# print jsonDict['com.probcomp.filexplorer']

	newDict = {}
	for app in jsonDict:
		runDict = {}
		runDict['run1'] = jsonDict[app]
		newDict[app] = runDict

	# print newDict['com.probcomp.filexplorer']
	open(jsonFileName,'w').write(json.dumps(newDict, sort_keys=True, indent=4))

if __name__ == "__main__":
	sys.exit(main(sys.argv))