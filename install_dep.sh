#!/usr/bin/bash

sudo xbps-install -u xbps
sudo xbps-install -Su

sudo xbps-install dbus polkit elogind xorg libXft-devel libXinerama-devel base-devel libX11-devel nitrogen NetworkManager github-cli

sudo touch /etc/sv/acpid/down
sudo touch /etc/sv/dhcpcd/down
sudo touch /etc/sv/wpa_supplicant/down

sudo sv down acpid
sudo sv down dhcpcd
sudo sv down wpa_supplicant

sudo ln -sv /etc/sv/{dbus,polkitd,elogind,NetworkManager} /var/service
