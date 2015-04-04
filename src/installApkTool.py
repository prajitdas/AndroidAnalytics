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

def makeSurePathExists(wrapperSrc,jarSrc,des):
	if os.path.exists(wrapperSrc) and os.path.exists(jarSrc) and os.path.exists(des):
		return True
	return False

def installApkTool(wrapperSrc,jarSrc,des):
	'''
		Install ApkTool
	'''
	shutil.copy(wrapperSrc, des)
	shutil.copy(jarSrc, des)

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python installApkTool.py\n')
		sys.exit(1)
		
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
	elif osInfo == 'Linux':
		src = os.path.abspath(dirpath+"/apktool")
		wrapperSrc = src+"/apktool"
		jarSrc = src+"/apktool.jar"
		des = "/usr/local/bin"
	else:
		print 'The current os not supported at the moment.'

	if makeSurePathExists(wrapperSrc,jarSrc,des):
		installApkTool(wrapperSrc,jarSrc,des)
	else:
		print 'The ApkTool folder does not exist. Please create it and download the ApkTool files there and then execute this script again.'

	if osInfo == 'Linux':
		subprocess.call(['chmod', '0755', wrapperSrc])
		subprocess.call(['chmod', '0755', jarSrc])
	
if __name__ == "__main__":
	sys.exit(main(sys.argv))