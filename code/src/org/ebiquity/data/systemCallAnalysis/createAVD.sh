#!/bin/bash
if [ "$1" != "" ];
then
	android create avd -n nexus6 -t $1 --skin WVGA800 --abi default/x86_64
else
	echo "Run the command 'android list targets' and determine the android sdk version 23 target id and use that as an input argument."
	echo "Can't create an AVD without that!"
fi
