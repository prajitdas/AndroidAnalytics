# Note (Example is valid for Python v2 and v3)
from __future__ import print_function

'''
Created on Apr 4, 2015
Modified on May 5, 2017
@author: Prajit Kumar Das
'''

from ConfigParser import SafeConfigParser
import sys
import time
import logging
import mysql.connector as mysql
from mysql.connector import errorcode
from mysql.connector.constants import ClientFlag
logging.basicConfig(filename='databaseHandler.log',level=logging.DEBUG)

# Fire an DML SQL statement and commit data
def dbManipulateData(dbHandle, sqlStatement):
	cursor = dbHandle.cursor()
	try:
		cursor.execute('SET NAMES utf8;')
		cursor.execute('SET CHARACTER SET utf8;')
		cursor.execute('SET character_set_connection=utf8;')
		cursor.execute(sqlStatement)
		dbHandle.commit()
	except mysql.errors.IntegrityError as err:
		logging.debug('data present'.format(err))
		return -1
	except mysql.errors.ProgrammingError as err:
		logging.debug('ProgrammingError:'.format(err))
		return -1
	except:
		print('Unexpected error in test:'+str(sys.exc_info()[0]))
		logging.debug('Unexpected error:')
		raise
	return cursor.lastrowid

# Database Connection Handler
def dbConnectionCheck():
	parser = SafeConfigParser()
	parser.read('dbconfig.ini')
	
	user = parser.get('dbconfig', 'user')
	passwd = parser.get('dbconfig', 'passwd')
	host = parser.get('dbconfig', 'host')
	ssl_ca = parser.get('dbconfig', 'ssl_ca')
	ssl_cert = parser.get('dbconfig', 'ssl_cert')
	ssl_key = parser.get('dbconfig', 'ssl_key')
	db = parser.get('dbconfig', 'db')
	print("info"+user+passwd+host+ssl_ca+ssl_cert+ssl_key)

	config = {
		'user': user,
		'password': passwd,
		'host': host,
		'client_flags': [ClientFlag.SSL],
		'ssl_ca': ssl_ca,
		'ssl_cert': ssl_cert,
		'ssl_key': ssl_key,
		'database': db,
	}
	
	try:
		dbHandle = mysql.connect(**config)
		return dbHandle
	except mysql.Error as err:
		if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
			print('Something is wrong with your user name or password')
			logging.debug('Something is wrong with your user name or password')
		elif err.errno == errorcode.ER_BAD_DB_ERROR:
			print('Database does not exist')
			logging.debug('Database does not exist')
		else:
			print(err)
			logging.debug('Something went wrong: {}'.format(err))
	except Exception as err:
		logging.debug('Something unexpected happened!'.format(err))
	return None

def convertPythonListToSQLQueryList(pythonList):
	if not pythonList:
		return ''#List was empty return empty string
	else:
		return '\''+'\',\''.join(pythonList)+'\''#Joining the Strings in the list to each other for use in SQL IN LIST query

def test():
	dbHandle = dbConnectionCheck() #DB Open
	
	try:
		cursor = dbHandle.cursor(buffered=True)
		cursor.execute("SHOW STATUS LIKE 'Ssl_cipher'")
		print(cursor.fetchone())
		sqlStatement = "SHOW TABLES;"
		cursor.execute(sqlStatement)
		for Tables_in_googleplaystore in cursor:
			print(Tables_in_googleplaystore)
	except:
		print('Unexpected error in test:'+str(sys.exc_info()[0]))
		logging.debug('Unexpected error:')
		raise
	
	cursor.close()
	dbHandle.close() #DB Close

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python databaseHandler.py\n')
		sys.exit(1)

	startTime = time.time()
	test()
	executionTime = str((time.time()-startTime)*1000)
	logging.debug('Execution time was: '+str(executionTime)+' ms')

if __name__ == "__main__":
	sys.exit(main(sys.argv))
