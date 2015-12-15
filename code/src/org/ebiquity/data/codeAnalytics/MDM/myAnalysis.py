'''
Created on December 14, 2015
@author: Prajit Kumar Das
Usage: python myAnalysis.py
'''

import os
from os.path import join
import sys
import time
import json
import collections

def findApiUsages(walk_dir):
	currentDirectory = os.getcwd()
	walk_dir = currentDirectory+'\\'+walk_dir
	outputList = []
	outputDict = {}
	for root, subdirs, files in os.walk(walk_dir):
		for filename in files:
			with open(join(root, filename), 'rb') as f:
				source = ((f.name).split('smali\\')[1]).replace('\\','/')
				for line in f:
					if "invoke-" in line:
						if "->" in line:
							key = ''
							partString = line.split('->')[1]
							if ":" in partString:
								key = partString.split(':')[0]
							else:
								key = partString.split(')')[0]

							outputList.append(key)
							if key in outputDict:
								tempList = outputDict[key]
								tempList.append(source)
								outputDict[key] = sorted(list(set(tempList)))
							else:
								outputDict[key] = [source]
						# if "->get" in line:
						# 	partString = line.split('->')[1]
						# 	if ":" in partString:
						# 		outputList.append(partString.split(':')[0])
						# 	else:
						# 		outputList.append(partString.split(')')[0])
						# elif "->send" in line:
						# 	partString = line.split('->')[1]
						# 	print partString
						# 	if ":" in partString:
						# 	 	outputList.append(partString.split(':')[0])
						# 	else:
						# 	 	outputList.append(partString.split(')')[0])
	orderedDict = collections.OrderedDict(sorted(outputDict.items()))

	outputFilename = walk_dir.split('\\')[-1]+'analyticsResults\\''ResultsWithFile.json'
	with open(outputFilename, 'w') as fp:
		json.dump(orderedDict, fp, indent=4)

	outputFilename = walk_dir.split('\\')[-1]+'ResultsJLT.json'
	with open(outputFilename, 'w') as fp:
		json.dump(sorted(list(set(outputList))), fp, indent=4)

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python myAnalysis.py\n')
		sys.exit(1)

	# inputFile = "data\\goldenshorestechnologies.brightestflashlight.free\\smali\\goldenshorestechnologies"
	# inputFile = "data\\goldenshorestechnologies.brightestflashlight.free\\smali\\android"
	inputFile = "data\\goldenshorestechnologies.brightestflashlight.free\\smali\\com"
	startTime = time.time()
	findApiUsages(inputFile)
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	sys.exit(main(sys.argv))
