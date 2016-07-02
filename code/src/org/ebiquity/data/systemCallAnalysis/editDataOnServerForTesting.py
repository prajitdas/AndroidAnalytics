'''
Created on June 29, 2016
@author: Prajit Kumar Das
Usage: python editDataOnServerForTesting.py
'''
import requests
import json
import shutil
import time

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
	if appToRemove in jsonString: 
		del jsonString[appToRemove]

	bkpJson = 'bkp'+getTimedBkpName()+'.json'
	shutil.move('search.json', bkpJson)
	json.dump(jsonString, open('search.json', 'w'), sort_keys = True, indent = 4)

	storeDataonServer(jsonString)
