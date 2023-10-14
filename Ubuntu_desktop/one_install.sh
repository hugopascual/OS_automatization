#!/bin/bash

DIRECTORY=$(dirname "$0")
# Import installing functions
. $DIRECTORY/functions.sh

#------------------------------- Initialization
echo_info "Starting installation"

#------------------------------- Update and Upgrade
sh $DIRECTORY/update_and_upgrade_apt.sh

#------------------------------- Install


#------------------------------- Updates and Cleaning 
sh $DIRECTORY/update_and_upgrade_apt.sh

#------------------------------- END
