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

def getDataOnServer():
	# Server URL from Ngrok to get the data
	url = 'https://6b50a3b5.ngrok.io'
	response = requests.get(url)
	return response.text

def storeDataOnServer(jsonString):
	# Server URL from Ngrok to get the data
	url = 'https://6b50a3b5.ngrok.io'
	serverResponse = requests.post(url, json.dumps(jsonString))
	print serverResponse

def removeDataFromServer(appToRemove):
	jsonString = json.loads(open('search.json','r').read())
	jsonStringOnServer = json.loads(getDataOnServer())
	print "Number of apps remaining on local:",len(jsonString['applist'])
	print "Number of apps remaining on server:",len(jsonStringOnServer['applist'])
	if len(jsonString['applist']) != len(jsonStringOnServer['applist']):
		print "server data has been changed, take action!"
		# print "removing the app:"+appToRemove
		# print len(jsonString['applist'])
		if appToRemove in jsonStringOnServer['applist']: 
			jsonString = jsonStringOnServer['applist'].remove(appToRemove)
		# print len(jsonString['applist'])
	else:
		print "all good!"
		if appToRemove in jsonString['applist']: 
			jsonString['applist'].remove(appToRemove)

	# print "Number of apps remaining on local:",len(jsonString['applist'])
	# print "Number of apps remaining on server:",len(jsonStringOnServer['applist'])
	# sys.exit(1)
	bkpJson = 'bkp'+getTimedBkpName()+'.json'
	shutil.move('search.json', bkpJson)
	json.dump(jsonString, open('search.json', 'w'), sort_keys = True, indent = 4)

	storeDataOnServer(jsonString)

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
	main(sys.argv)