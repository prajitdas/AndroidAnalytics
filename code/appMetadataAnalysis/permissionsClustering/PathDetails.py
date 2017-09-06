# -*- coding: utf-8 -*-
"""
Created on Fri Sep 11 05:54:37 2015

@author: Prajit
"""
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
		print 'The current os not supported at the moment.'
		return None