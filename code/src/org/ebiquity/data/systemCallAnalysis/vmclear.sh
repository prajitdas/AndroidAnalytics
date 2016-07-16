#!/bin/bash
killList=`ps aux | grep virtual | tr -s ' ' | cut -f2 -d' ' | tr '\n' ' '`
kill -9 $killList
