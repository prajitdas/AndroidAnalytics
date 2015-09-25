#!/usr/bin/env python
"""
Purpose: Get the permission levels from
https://raw.githubusercontent.com/android/platform_frameworks_base/master/core/res/AndroidManifest.xml
and extract permission related information
"""
__author__ = "Prajit Kumar Das"
__copyright__ = "Copyright 2015, UMBC, Ebiquity Research Group"
__version__ = "0.1"
__email__ = "prajit1@umbc.edu"
__status__ = "Development"
__date__ = "September 25, 2015"

import time
import sys

def doTask():
    url = "https://raw.githubusercontent.com/android/platform_frameworks_base/master/core/res/AndroidManifest.xml"


def main(argv):
    if len(sys.argv) != 1:
        sys.stderr.write('Usage: python getDangerLevelOfPermisions.py\n')
        sys.exit(1)

    startTime = time.time()
    #Start extracting data
    doTask()
    executionTime = str((time.time()-startTime)*1000)
    print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
    sys.exit(main(sys.argv))
