#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on May 18, 2015
@author: Prajit
Usage: python generateFrequencyHistogram.py
'''

import sys
import time

def doTask():
    print "Hello World!\n"

def main(argv):
    if len(sys.argv) != 1:
        sys.stderr.write('Usage: python generateFrequencyHistogram.py\n')
        sys.exit(1)

    startTime = time.time()
    doTask()
    executionTime = str((time.time()-startTime)*1000)
    print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
    sys.exit(main(sys.argv))
