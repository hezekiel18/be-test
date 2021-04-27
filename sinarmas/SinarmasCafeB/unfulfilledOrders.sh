#!/bin/bash
#Remove Spaces Between Word and Using Cat to read the FILE from argument 1
FILE=`echo "$1" |sed -e 's/ //g'`
LINES=$(cat $FILE)