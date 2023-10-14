#!/bin/bash

DIRECTORY=$(dirname "$0")
# Import installing functions
. $DIRECTORY/functions.sh

#------------------------------- Configuration
./$DIRECTORY/config.sh

#------------------------------- Initialization
echo_info "Starting installation"

#------------------------------- Update and Upgrade
./$DIRECTORY/update_and_upgrade.sh

#------------------------------- Specific Software installations
install_flatpak
install_VScode
install_nodejs
install_docker
install_jetbrains_toolbox
install_proton_vpn

#------------------------------- apt-get repository installs
apt_get_install "Basic utilities" "wget curl"
apt_get_install "Git" "git"
apt_get_install "Java" "default-jre"
apt_get_install "Firefox" "firefox"
apt_get_install "Teminator" "terminator"

#------------------------------- Snap installs
#snap_install "IntellIJ Community" intellij-idea-community --classic

#-------------------------------Flatpak installs
flathub_install "VLC" "org.videolan.VLC"
flathub_install "Thunderbird" "org.mozilla.Thunderbird"
flathub_install "Spotify" "com.spotify.client"
flathub_install "LibreOffice" "org.libreoffice.LibreOffice"
#flathub_install "Okular" "org.kde.okular"
flathub_install "Google Chrome" "com.google.Chrome"
flathub_install "KeePassXC" "org.keepassxc.KeePassXC"
#flathub_install "Wireshark" "org.wireshark.Wireshark"
#flathub_install "Postman" "com.getpostman.Postman"

#-------------------------------Custom installs
#pip install bpytop

#------------------------------- Updates and Cleaning 
./$DIRECTORY/update_and_upgrade.sh

#------------------------------- END
echo_success "Restart the computer now"
