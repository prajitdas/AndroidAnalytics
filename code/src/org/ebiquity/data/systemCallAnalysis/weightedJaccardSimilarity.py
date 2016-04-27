#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on August 18, 2015
@author: Prajit
Usage: python weightedJaccardSimilarity.py selectionType
'''
import sys
import time
import numpy as np

def jaccardSimOperation(app1Syscalls,app2Syscalls):
	return len(app1Syscalls.intersection(app2Syscalls))/len(app1Syscalls.union(app1Syscalls))

def getAllSyscallsVector(jsonDict):
	allSyscallsVector = []
	for app in jsonDict:
		for call in jsonDict[app]:
			allSyscallsVector.append(call)

	allSyscallsVector = list(set(allSyscallsVector))
	return allSyscallsVector.sort()

def computeJaccardMatrix(jsonDict):
	print "Inside computeJaccardMatrix"
	
	allSyscallsVector = getAllSyscallsVector(jsonDict)
	numberOfApps = len(jsonDict.keys())
	appVector = jsonDict.keys()

	# Creates a list containing 5 lists initialized to 0
	#appMatrix = [[0 for x in range(numberOfApps)] for x in range(numberOfApps)]
	appMatrix = np.zeros((numberOfApps, numberOfApps))
	
	# reducing computation by half by replicating the upper half of the matrix
	counter = 0
	for i in range(len(appVector)):
		for j in range(i, len(appVector)):
			if i != j:
				score = jaccardSimOperation(set(jsonDict[appVector[i]].keys()),set(jsonDict[appVector[j]].keys())
				appMatrix[i,j] = score
				appMatrix[j,i] = score
				counter += 1
				if counter % 100000 == 0:
					print "Computed computeJaccardSim for loops: ", counter		   
	
	
	#X = np.array(appMatrix)
	#X.shape = (numberOfApps,numberOfApps)
	#print X,appMatrix,appVector
	print "computeJaccardMatrix complete"
	return appMatrix, appVector

def getCountOfAppPermissionsCollected(dbHandle):
	sqlStatement = "SELECT * FROM `count_of_app_perm_collected_view`;"
	cursor = dbHandle.cursor()
	try:
		print "Extracting count of app permissions collected"
		cursor.execute(sqlStatement)
		if cursor.rowcount > 0:
			queryOutput = cursor.fetchall()
			for row in queryOutput:
				countOfApps = row[0]
	except:
		print "Unexpected error in getCountOfAppPermissionsCollected:", sys.exc_info()[0]
		raise
	return float(countOfApps)
 
def getAppCountRequestingPermissions(dbHandle):
	sqlStatement = "SELECT * FROM `perm_app_count_view`;"
	countOfApps = getCountOfAppPermissionsCollected(dbHandle)
	cursor = dbHandle.cursor()
	idfPermissionsDict = {'countOfApps':countOfApps}
	try:
		print "Extracting app count requesting given permission"
		cursor.execute(sqlStatement)
		if cursor.rowcount > 0:
			queryOutput = cursor.fetchall()
			for row in queryOutput:
#				 print row[0],row[1]
				'''
				Computing an "Inverse Document Frequency" of apps requesting a permission. 
				This will tell us if a particular permission is unique and rare or a popular one.
				If an app asks for permissions which are rare then they are outliers with respect to commonly asked permissions.
				This warrants a further look from our perspective.
				We are using permission ids to store less data.
				'''
				idfPermissionsDict[row[2]] = countOfApps/row[0]
				#print idfPermissionsDict[str(row[2])]
	except:
		print "Unexpected error in getAppCountRequestingPermissions:", sys.exc_info()[0]
		raise

	#print idfPermissionsDict
	writeToFile(idfPermissionsDict)
	print "Completed the IDF computation process"
#	 return idfPermissionsDict
 
def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python weightedJaccardSimilarity.py\n')
		sys.exit(1)
 
	dbHandle = databaseHandler.dbConnectionCheck() #DB Open
 
	startTime = time.time()
	#Compute Jaccard Similarity
	getAppCountRequestingPermissions(dbHandle)
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"
	 
	dbHandle.close() #DB Close
 
if __name__ == "__main__":
	sys.exit(main(sys.argv))
