#!/bin/bash

DIRECTORY=$(dirname "$0")
# Import installing functions
. $DIRECTORY/functions.sh

#------------------------------- Initialization
echo_info "Starting configuration"

#------------------------------- Apariencia
# Estilo
# - Establecer Modo oscuro y tema azul
echo_info "Making style modifications"
gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"
gsettings set org.gnome.desktop.interface gtk-theme 'Yaru-blue-dark'
echo_info "Style modifications finished"

# Iconos del escritorio
# - Mostrar la carpeta personal: false
gsettings set org.gnome.shell.extensions.ding show-home false

# Dock
echo_info "Making modifications to the Dock"
# - Enable ‘Click-to-minimize’ dock panel click action
gsettings set org.gnome.shell.extensions.dash-to-dock click-action minimize

# - Modo de panel: false
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false

# - Posición en pantalla: abajo
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM

# - Ocultar automáticamente el dock: true
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
gsettings set org.gnome.shell.extensions.dash-to-dock autohide true

echo_success "Dock modifications finished"

#------------------------------- Notifications
# - Notificaciones de la pantalla de bloqueo: false
gsettings set org.gnome.desktop.notifications show-in-lock-screen false

# - Apagar noficiaciones de "Evolution Alarm Notify"
echo "Apagar noficiaciones de \"Evolution Alarm Notify\""

#------------------------------- Multitarea
# Cambio de aplicaciones
# - Seleccionar: Incluir aplicaciones solo del área de trabajo actual
echo "Seleccionar: Incluir aplicaciones solo del área de trabajo actual"
# - Seleccionar: Incluir aplicaciones solo desde cada monitor
echo "Seleccionar: Incluir aplicaciones solo desde cada monitor"

# ------------------------------- Terminal
# Modificar el archivo .bashrc cambiando las \w por \W
sed -iE 's/\\w/\\W/' ~/.bashrc

#------------------------------- END
echo_success "Configuration Finished"

