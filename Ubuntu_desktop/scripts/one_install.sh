#!/bin/bash

DIRECTORY=$(dirname "$0")
# Import installing functions
. $DIRECTORY/functions.sh

#------------------------------- Initialization
echo_info "Starting installation"

#------------------------------- Update and Upgrade
update

#------------------------------- Install
install

#------------------------------- Updates and Cleaning 
update

#------------------------------- END
