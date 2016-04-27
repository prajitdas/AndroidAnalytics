'''
Created on April 27, 2016
@author: Prajit Kumar Das
'''
import os
import platform
import socket
import getpass

def getPath():
	if socket.gethostname() == 'eclipse':
		return '/tank/usersc/'+getpass.getuser()+'/'
	
	currentDirectory = os.getcwd()

	# Detect operating system and take actions accordingly
	osInfo = platform.system()
	if osInfo == 'Windows':
		return currentDirectory+"\\"
	elif osInfo == 'Linux':
		return currentDirectory+"/"
	else:
		print 'The current OS is not supported at the moment.'
		return None