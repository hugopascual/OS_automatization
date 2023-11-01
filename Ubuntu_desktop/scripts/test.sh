#!/bin/bash

DIRECTORY=$(dirname "$0")
# Import installing functions
. $DIRECTORY/functions.sh

##
# @Description
# https://www.winehq.org/
# https://wiki.winehq.org/Ubuntu
##
wine() {
	echo_info "Installing Wine"
	# Preparation
	sudo dpkg --add-architecture i386
	# Download and add repository key
	sudo mkdir -pm755 /etc/apt/keyrings
	sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
	# Download WineHQ sources
	sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources
	# Update
	sudo apt-get update
	# Install Wine
	sudo apt install --install-recommends winehq-stable
	echo "Wine installed"
}

