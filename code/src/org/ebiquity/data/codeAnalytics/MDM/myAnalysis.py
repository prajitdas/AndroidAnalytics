'''
Created on December 15, 2015
@author: Prajit Kumar Das
Usage: python myAnalysis.py
'''

import os
from os.path import join, split
import sys
import time
import json
import collections

def findApiUsages(walk_dir):
	currentDirectory = os.getcwd()
	subFolderName = walk_dir.split('\\')[-1]
	walk_dir = currentDirectory+'\\'+walk_dir
	outputList = []
	outputDict = {}
	for root, subdirs, files in os.walk(walk_dir):
		for filename in files:
			with open(join(root, filename), 'rb') as f:
				source = ((f.name).split('smali\\')[1]).replace('\\','/')
				for line in f:
					# print line
					line.replace('$', 'PKD')
					if "invoke-" in line:
						if "-><" in line:
							continue
						elif "->$" in line:
							continue
						elif "->" in line:
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

	outputFilename = currentDirectory+'\\analyticsResults\\'+subFolderName+'ResultsWithFile.json'
	with open(outputFilename, 'w') as fp:
		json.dump(orderedDict, fp, indent=4)

	outputFilename = currentDirectory+'\\analyticsResults\\'+subFolderName+'ResultsJLT.json'
	with open(outputFilename, 'w') as fp:
		json.dump(sorted(list(set(outputList))), fp, indent=4)

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python myAnalysis.py\n')
		sys.exit(1)

	startTime = time.time()
	# inputFile = "C:\\Users\\Prajit\\Documents\\code\\PyCharmProjects\\PlayStoreDataCollection\\code\\src\\org\\ebiquity\\data\\codeAnalytics\\MDM\\data\\goldenshorestechnologies.brightestflashlight.free\\smali\\goldenshorestechnologies"
	# inputFile = "C:\\Users\\Prajit\\Documents\\code\\PyCharmProjects\\PlayStoreDataCollection\\code\\src\\org\\ebiquity\\data\\codeAnalytics\\MDM\\data\\goldenshorestechnologies.brightestflashlight.free\\smali\\android"
	# inputFile = "C:\\Users\\Prajit\\Documents\\code\\PyCharmProjects\\PlayStoreDataCollection\\code\\src\\org\\ebiquity\\data\\codeAnalytics\\MDM\\data\\goldenshorestechnologies.brightestflashlight.free\\smali\\com"

	inputFile = "data\\goldenshorestechnologies.brightestflashlight.free\\smali\\goldenshorestechnologies"
	findApiUsages(inputFile)
	inputFile = "data\\goldenshorestechnologies.brightestflashlight.free\\smali\\android"
	findApiUsages(inputFile)
	inputFile = "data\\goldenshorestechnologies.brightestflashlight.free\\smali\\com"
	findApiUsages(inputFile)

	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	main(sys.argv)