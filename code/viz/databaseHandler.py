#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on Apr 4, 2015
@author: Prajit Kumar Das
'''

import sys
import mysql.connector
from mysql.connector import errorcode
try:
    import configparser
except ImportError:
    import ConfigParser as configparser

# Fire an DML SQL statement and commit data
def dbManipulateData(dbHandle, sqlStatement, args=None):
    cursor = dbHandle.cursor()
    try:
        cursor.execute('SET NAMES utf8;')
        cursor.execute('SET CHARACTER SET utf8;')
        cursor.execute('SET character_set_connection=utf8;')
        if args:
            cursor.execute(sqlStatement, args)
        else:
            cursor.execute(sqlStatement)
        dbHandle.commit()
    except mysql.connector.Error as err:
        if err.errno == errorcode.ER_DUP_ENTRY:
            print("data present")
            return -1
        else:
            print("Unexpected error: {}".format(err))
            raise
    except:
        print("Unexpected error: {}".format(sys.exc_info()[0]))
        raise
    return cursor.lastrowid

# Database Connection Handler
def dbConnectionCheck():
    parser = configparser.ConfigParser()
    parser.read('dbconfig.ini')
    
    host = parser.get('dbconfig', 'host')
    user = parser.get('dbconfig', 'user')
    passwd = parser.get('dbconfig', 'passwd')
    db = parser.get('dbconfig', 'db')
    
    try:
        dbHandle = mysql.connector.connect(
            host=host,
            user=user,
            password=passwd,
            database=db,
            charset='utf8'
        )
    except mysql.connector.Error as err:
        print("Something went wrong: {}".format(err))
        return None

    return dbHandle

def convertPythonListToSQLQueryList(pythonList):
    if not pythonList:
        return ''#List was empty return empty string
    else:
        return '\''+'\',\''.join(pythonList)+'\''#Joining the Strings in the list to each other for use in SQL IN LIST query
