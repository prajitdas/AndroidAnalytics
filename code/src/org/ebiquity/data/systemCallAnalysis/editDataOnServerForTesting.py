'''
Created on June 29, 2016
@author: Prajit Kumar Das
Usage: python editDataOnServerForTesting.py apkName
'''
import requests
import json
import shutil
import time
import sys
import logging
logging.basicConfig(filename='editDataOnServerForTesting.log',level=logging.DEBUG)

def getTimedBkpName():
	ticks = time.time()
	return str(ticks).replace(".", "")

def storeDataonServer(jsonString):
	# Server URL from Ngrok to get the data
	url = 'https://9b5d5f5d.ngrok.io'
	serverResponse = requests.post(url, json.dumps(jsonString))
	print serverResponse

def removeDataFromServer(appToRemove):
	jsonString = json.loads(open('search.json','r').read())
	
	if appToRemove in jsonString['applist']: 
		jsonString['applist'].remove(appToRemove)

	bkpJson = 'bkp'+getTimedBkpName()+'.json'
	shutil.move('search.json', bkpJson)
	json.dump(jsonString, open('search.json', 'w'), sort_keys = True, indent = 4)

	storeDataonServer(jsonString)

def main(argv):
	if len(sys.argv) != 2:
		sys.stderr.write('Usage: python editDataOnServerForTesting.py apkName\n')
		sys.exit(1)

	apkName = sys.argv[1]

	startTime = time.time()
	removeDataFromServer(apkName)
	executionTime = str((time.time()-startTime)*1000)
	logging.debug('Execution time was: '+executionTime+' ms')

if __name__ == "__main__":
	sys.exit(main(sys.argv))
