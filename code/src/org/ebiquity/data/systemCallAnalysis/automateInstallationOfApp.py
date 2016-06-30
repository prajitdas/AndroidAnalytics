'''
Copyright (C) 2012  Diego Torres Milano
Created on May 5, 2012

@author: diego

Modified example from Diego to suit project purpose.
Usage: python automateInstallationOfApp.py
'''

import sys
import os
import time

try:
    sys.path.append(os.path.join(os.environ['ANDROID_VIEW_CLIENT_HOME'], 'src'))
except:
    pass

from com.dtmilano.android.viewclient import ViewClient

package = 'edu.umbc.cs.ebiquity.autoinstallerapp'
activity = 'edu.umbc.cs.ebiquity.autoinstallerapp.ui.activity.MainActivity'
component = package + "/" + activity

device, serialno = ViewClient.connectToDeviceOrExit(serialno='192.168.173.101:5555')
device.startActivity(component=component)
time.sleep(3)
viewClient = ViewClient(device, serialno)

appList = viewClient.findViewByIdOrRaise('edu.umbc.cs.ebiquity.autoinstallerapp:id/list')
(x, y, w, h) = appList.getPositionAndSize()
# start = (int(x+w/2.0), y+h)
start = (int(x+w/2.0), y+h-250)
end = (int(x+w/2.0), y-250)
# end = (int(x+w/2.0), y)
# scroll 5 times
for i in range(5):
    viewClient.device.drag(start, end, 1.0, 10)

# installButton = viewClient.findViewWithText('INSTALL')
# installButton.touch()
#
# acceptButton = viewClient.findViewWithTextOrRaise('ACCEPT')

# for bt in [ 'INSTALL', 'ACCEPT' ]:
#     b = vc.findViewWithText(bt)
#     if b:
#         (x, y) = b.getXY()
#         print >>sys.stderr, "clicking b%s @ (%d,%d) ..." % (bt, x, y)
#         b.touch()
#     else:
#         print >>sys.stderr, "b%s not found" % bt
#     time.sleep(7)
#
# print >>sys.stderr, "bye"