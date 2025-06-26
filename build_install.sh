#!/usr/bin/bash

pushd $(pwd)

echo "Building TCC"
pushd tcc
./configure
sudo make
sudo make install
popd

echo "Building dwm"
pushd dwm
sudo make clean install
popd

echo "Building dmenu"
pushd dmenu
sudo make clean install
popd

echo "Building st"
pushd st
sudo make clean install
popd

echo "Building slstatus"
pushd slstatus
if ! [ -f "config.h" ]; then
	cp example.config.h config.h
fi
sudo make clean install
popd

echo "Linking xinitrc"
if ! [ -f "$HOME/.xinitrc" ]; then
	ln -sv "$(pwd)/xinitrc" "$HOME/.xinitrc"
	chmod +x "$HOME/.xinitrc"
fi

echo "Linking startdwm"
if ! [ -f "/usr/bin/startdwm" ]; then
	sudo ln -sv "$(pwd)/startdwm" /usr/bin/startdwm
	sudo chmod +x /usr/bin/startdwm
fi

popd
