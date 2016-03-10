#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on October 1, 2015
@author: Prajit Kumar Das
Usage: python installApkTool.py
'''

import os
import platform
import subprocess
import shutil
# import sys
# import time

def isPathPresent(path):
	if os.path.exists(path):
		return True
	return False

def copyRequiredFilesToDestinationFolder(wrapperSrc,jarSrc,des):
	'''
		Copy required files to destination folder
	'''
	shutil.copy(wrapperSrc, des)
	shutil.copy(jarSrc, des)

def doCopy(des,wrapperSrc,jarSrc):
	if not(isPathPresent(des)) or not(isPathPresent(wrapperSrc)) or not(isPathPresent(jarSrc)):
		print 'Either the ApkTool folder does not exist or the destination folder does not exist. Please create them and download the ApkTool files there and then execute this script again.'
	else:
		copyRequiredFilesToDestinationFolder(wrapperSrc,jarSrc,des)

def run(isForceInstallTrue):
	'''
		Detect operating system and takes installation actions accordingly
	'''
	osInfo = platform.system()
	dirpath = os.path.dirname(os.path.realpath(__file__))
	if osInfo == 'Windows':
		src = dirpath+"\\apktool"
		wrapperSrc = src+"\\apktool.bat"
		jarSrc = src+"\\apktool.jar"
		
		des = os.environ['WINDIR']
		wrapperDes = des+"\\apktool.bat"
		jarDes = des+"\\apktool.jar"

	elif osInfo == 'Linux':
		src = os.path.abspath(dirpath+"/apktool")
		wrapperSrc = src+"/apktool"
		jarSrc = src+"/apktool.jar"

		des = "/usr/local/bin"
		wrapperDes = des+"/apktool"
		jarDes = des+"/apktool.jar"

		subprocess.call(['chmod', '0755', wrapperSrc])
		subprocess.call(['chmod', '0755', jarSrc])
		
	else:
		print 'The current os not supported at the moment.'

	# If force install is true copy apktool anyway
	# If it's not true copy it only if the destination files don't exist
	if (isForceInstallTrue):
		doCopy(des,wrapperSrc,jarSrc)
	else:
		if not(isPathPresent(wrapperDes)) or not(isPathPresent(jarDes)):
			doCopy(des,wrapperSrc,jarSrc)
