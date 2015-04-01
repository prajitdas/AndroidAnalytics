'''
Created on Mar 30, 2015

@author: Prajit
'''
from ConfigParser import SafeConfigParser
import MySQLdb

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