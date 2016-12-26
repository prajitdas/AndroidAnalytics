#!/bin/bash
filename='googleplaystoreDumpTakenOn_'`date | tr ':' '_' | tr ' ' '_'`'.sql'
`mysqldump -u googleplaystore -p --databases googleplaystore > $filename`
