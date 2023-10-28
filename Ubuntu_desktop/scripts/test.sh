#!/bin/bash

DIRECTORY=$(dirname "$0")
# Import installing functions
. $DIRECTORY/functions.sh

##
# @Description
# 
##
test() {
	echo "1"
}

test
