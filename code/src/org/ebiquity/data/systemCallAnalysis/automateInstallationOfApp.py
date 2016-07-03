'''
Copyright (C) 2012  Diego Torres Milano
Created on May 5, 2012

@author: diego

Modified example from Diego to suit project purpose.
Usage: python automateInstallationOfApp.py
'''

import subprocess as s
import sys
import os
import time
import editDataOnServerForTesting as ed
import syscallAnalysis as sc
import logging
logging.basicConfig(filename='genymotion.log',level=logging.DEBUG)

try:
	sys.path.append(os.path.join(os.environ['ANDROID_VIEW_CLIENT_HOME'], 'src'))
except:
	pass

from com.dtmilano.android.viewclient import ViewClient, ViewNotFoundException

def launchApp():
	package = 'edu.umbc.cs.ebiquity.autoinstallerapp'
	activity = 'edu.umbc.cs.ebiquity.autoinstallerapp.ui.activity.MainActivity'
	component = package + "/" + activity

	device, serialno = ViewClient.connectToDeviceOrExit(serialno='192.168.57.101:5555')

	# Three commands to ensure that the emulator is in correct condition
	# Prepare AVD for proper testing set aireplane mode off
	cmd1="adb shell settings put global airplane_mode_on 0"
	cmd2="adb shell am broadcast -a android.intent.action.AIRPLANE_MODE --ez state false"
	# To enable wifi
	# cmd3="adb -s '"+serialno+"' shell \"svc wifi enable\""
	cmd3="adb shell svc wifi enable"
	# print cmd3+"end"
	# Press the home button to ensure you are on the home screen
	cmd4="adb shell input keyevent 3"
	s.call(cmd1.split())
	s.call(cmd2.split())
	s.call(cmd3.split())
	s.call(cmd4.split())
	time.sleep(3)

	device.startActivity(component=component)
	time.sleep(3)
	return device, serialno

def getViewClient(device, serialno):
	viewClient = ViewClient(device, serialno)
	return viewClient

def clickOnTopApp(viewClient):
	appListView = viewClient.findViewByIdOrRaise('edu.umbc.cs.ebiquity.autoinstallerapp:id/list')
	visibleAppList = []
	for app in viewClient.findViewsWithAttribute('class', 'android.widget.TextView', root=appListView):
		visibleAppList.append(app.getText())

	firstAppName = None
	if len(visibleAppList) > 0:
		firstAppLink = viewClient.findViewWithText(visibleAppList[0])
		firstAppLink.touch()
		firstAppName = firstAppLink.getText()
	return firstAppName

def installApp(viewClient):
	installButton = viewClient.findViewWithTextOrRaise('INSTALL')
	installButton.touch()

def acceptInstallApp(viewClient):
	installButton = viewClient.findViewWithTextOrRaise('ACCEPT')
	installButton.touch()

def getApps():
	currentPath = os.getcwd()
	while(True):
		device, serialno = launchApp()
		app = clickOnTopApp(getViewClient(device, serialno))
		print "Automating for app: "+app
		if app:
			try:
				time.sleep(3)
				installApp(getViewClient(device, serialno))
				time.sleep(3)
				acceptInstallApp(getViewClient(device, serialno))
				time.sleep(10)
				checkInstallCmd="adb shell pm list packages | grep "+app
				appInstalledCheck=s.call(checkInstallCmd.split())
				print appInstalledCheck
				if appInstalledCheck == '':
					ed.removeDataFromServer(app)
					print 'It seems app wasn\'t installed properly for: '+app
					logging.debug('It seems app wasn\'t installed properly for: ',app)
					continue
			except ViewNotFoundException:
				ed.removeDataFromServer(app)
				print "Couldn't find button with the text"
				logging.debug("Couldn't find button with the text")
				continue
			sc.runExperimentsGenyMotionEmulator(currentPath,sc.getOutputDirectoryPath(currentPath),app)
			time.sleep(3)
			ed.removeDataFromServer(app)
		else:
			return

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python automateInstallationOfApp.py\n')
		sys.exit(1)

	startTime = time.time()
	getApps()
	executionTime = str((time.time()-startTime)*1000)
	print executionTime

if __name__ == "__main__":
	sys.exit(main(sys.argv))