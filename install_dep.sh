#!/user/bin/bash

sudo xbps-install -u xbps
sudo xbps-install -Su

sudo xbps-install dbus polkit xorg libXft-devel libXinerama-devel base-devel libX11-devel nitrogen picom NetworkManager

sudo touch /etc/sv/dhcpcd/down
sudo touch /etc/sv/wpa_supplicant/down

sudo sv down dhcpcd
sudo sv down wpa_supplicant

sudo ln -sv /etc/sv/{dbus,polkitd,NetworkManager} /var/service
