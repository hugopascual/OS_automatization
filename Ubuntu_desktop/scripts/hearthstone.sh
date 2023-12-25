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
  echo ""
}

# Install Hearthstone
# First install Lutris that is a Wine specialized in games
sudo add-apt-repository ppa:lutris-team/lutris
sudo apt-get update
sudo apt-get -y install lutris
# Con Lutris instalado ir a:
# https://lutris.net/games/battlenet/ y pulsar instalar
# Una vez instalado ir a:
# https://lutris.net/games/hearthstone/ y pulsar instalar
# Tras esto en Battle.net instalar Hearthstone