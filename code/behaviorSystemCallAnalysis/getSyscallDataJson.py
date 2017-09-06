'''
Created on June 28, 2016
@author: Prajit Kumar Das

Usage: python getSyscallDataJson.py
'''
import json
import os
import logging
logging.basicConfig(filename='getSyscallDataJson.log',level=logging.DEBUG)

def getSyscallDataJson(masterJsonFile):
	# masterJsonFile = os.path.join(jsonPath,"masterJsonOutputFile.json")
	try:
		return json.loads(open(masterJsonFile).read())
	except IOError as e:
		logging.debug('I/O error({0}): {1}'.format(e.errno,e.strerror))
	except ValueError:
		logging.debug('JSON decoding errors')
	except:
		logging.debug('Unexpected error')