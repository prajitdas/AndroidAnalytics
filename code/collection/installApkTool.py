#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on Apr 4, 2015
@author: Prajit Kumar Das
Usage: python installApkTool.py
'''

import os
import sys
import platform
import subprocess
import shutil
import time

def makeSurePathExists(wrapperSrc,jarSrc,des):
	if os.path.exists(wrapperSrc) and os.path.exists(jarSrc) and os.path.exists(des):
		return True
	return False

def installApkTool(wrapperSrc,jarSrc,wrapperDes,jarDes):
	'''
		Install ApkTool
	'''
	shutil.copy(wrapperSrc,wrapperDes)
	shutil.copy(jarSrc,jarDes)

def doTask():
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
		jarDes = os.environ['WINDIR']+"\\apktool.jar"
	elif osInfo == 'Linux':
		src = os.path.abspath(dirpath+"/apktool")
		wrapperSrc = src+"/apktool"
		jarSrc = src+"/apktool.jar"
		des = "/usr/local/bin"
		wrapperDes = des+"/apktool"
		jarDes = des+"/apktool.jar"
	elif osInfo == 'Darwin':
		src = os.path.abspath(dirpath+"/apktool")
		wrapperSrc = src+"/apktoolMac"
		jarSrc = src+"/apktool.jar"
		des = "/usr/local/bin"
		wrapperDes = des+"/apktool"
		jarDes = des+"/apktool.jar"
	else:
		print 'The current os not supported at the moment.'
		return

	if makeSurePathExists(wrapperSrc,jarSrc,des):
		installApkTool(wrapperSrc,jarSrc,wrapperDes,jarDes)
	else:
		print 'The ApkTool folder does not exist. Please create it and download the ApkTool files there and then execute this script again.'

	if osInfo == 'Linux' or 'Darwin':
		subprocess.call(['chmod', '0755', wrapperDes])
		subprocess.call(['chmod', '0755', jarDes])

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python installApkTool.py\n')
		sys.exit(1)
		
	startTime = time.time()
	doTask()
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"
	
if __name__ == "__main__":
	main(sys.argv)