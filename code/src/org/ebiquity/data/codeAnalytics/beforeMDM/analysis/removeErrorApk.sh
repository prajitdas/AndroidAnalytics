#!/bin/bash
fileLocation=`find . -name $1`
destinationfileLocation='../errorApks/'
mv $fileLocation $destinationfileLocation
ls $destinationfileLocation