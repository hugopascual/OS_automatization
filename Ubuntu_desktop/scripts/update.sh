#!/bin/bash

DIRECTORY=$(dirname "$0")
# Import installing functions
. $DIRECTORY/functions.sh

#-------------------------------Update and Upgrade
echo_info 'Upgrading and updating packages'
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get full-upgrade -y
sudo apt-get autoremove -y
sudo apt-get autoclean -y
echo_info "Packages upgrades and updates finished"

echo_info "Flatpak updates started"
flatpak update
echo_info "Flatpak updates finished"

echo_info "Snap updates started"
sudo snap refresh
echo_info "Snap updates finished"
