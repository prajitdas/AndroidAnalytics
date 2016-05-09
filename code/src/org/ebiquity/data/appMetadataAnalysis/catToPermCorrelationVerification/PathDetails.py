'''
Updated on May 9, 2016
@author: Prajit
'''
import os
import platform
import socket
import getpass
import sys

def getPath():
	if socket.gethostname() == 'eclipse':
		return '/tank/usersc/'+getpass.getuser()+'/'
	
	currentDirectory = os.getcwd()

	# Detect operating system and take actions accordingly
	osInfo = platform.system()
	if osInfo == 'Windows':
		return currentDirectory+"\\"
	elif osInfo == 'Linux' or osInfo == 'Darwin':
		return currentDirectory+"/"
	else:
		print 'The current os not supported at the moment.'
		sys.exit(1)