#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on Apr 4, 2015
@author: Prajit Kumar Das
'''

from ConfigParser import SafeConfigParser
import MySQLdb
import _mysql_exceptions
import sys

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
        print "data already there"
    except:
        print "Unexpected error:", sys.exc_info()[0]
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
    
    dbHandle = MySQLdb.connect(host,user,passwd,db);
    dbHandle.set_character_set('utf8')
    return dbHandle