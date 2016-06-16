'''
Created on Apr 4, 2015
Modified on June 6, 2016
@author: Prajit Kumar Das
'''

from ConfigParser import SafeConfigParser
import _mysql_exceptions
import sys
import time
import logging
import mysql.connector as mysql
logging.basicConfig(filename='privacyGrade.log',level=logging.DEBUG)

# Fire an DML SQL statement and commit data
def dbManipulateData(dbHandle, sqlStatement):
	cursor = dbHandle.cursor()
	try:
		cursor.execute('SET NAMES utf8;')
		cursor.execute('SET CHARACTER SET utf8;')
		cursor.execute('SET character_set_connection=utf8;')
		cursor.execute(sqlStatement)
		dbHandle.commit()
	except _mysql_exceptions.IntegrityError:
		logging.debug('data present')
		return -1
	except:
		logging.debug('Unexpected error:'+sys.exc_info()[0])
		raise
	return cursor.lastrowid

# Database Connection Handler
def dbConnectionCheck():
	parser = SafeConfigParser()
	parser.read('dbconfig.ini')
	
	host = parser.get('dbconfig', 'host')
	user = parser.get('dbconfig', 'user')
	passwd = parser.get('dbconfig', 'passwd')
	db = parser.get('dbconfig', 'db')
	#print "info", user, passwd, host, db
	try:
		dbHandle = mysql.connect(user=user, password=passwd, host=host, database=db)
		#dbHandle.set_character_set('utf8')
		return dbHandle
	except mysql.Error as err:
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
	cursor = dbHandle.cursor()
	
	sqlStatement = "SHOW TABLES;"
	try:
		cursor.execute(sqlStatement)
		for Tables_in_googleplaystore in cursor:
			print Tables_in_googleplaystore
	except:
		print 'Unexpected error in test:', sys.exc_info()[0]
		logging.debug('Unexpected error in test:'+sys.exc_info()[0])
		raise
	
	dbHandle.close() #DB Close

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python databaseHandler.py\n')
		sys.exit(1)

	startTime = time.time()
	test()
	executionTime = str((time.time()-startTime)*1000)
	logging.debug('Execution time was: '+executionTime+' ms')

if __name__ == "__main__":
	sys.exit(main(sys.argv))