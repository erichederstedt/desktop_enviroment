??? from here until ???END lines may have been inserted/deleted
#!/usr/bin/bash

echo "Building TCC"
cd tcc
./configure
sudo make
sudo make install
cd ..

echo "Building dwm"
cd dwm
sudo make clean install
cd ..

echo "Building dmenu"
cd dmenu
sudo make clean install
cd ..

echo "Building st"
cd st
sudo make clean install
cd ..

echo "Building slstatus"
cd slstatus
sudo make clean install
cd ..

echo "Linking xinitrc"
if [ -f ~/.xinitrc ]; then
	rm ~/.xinitrc
fi
ln -sv ~/.xinitrc ./xinitrc
chmod +x ~/.xinitrc
sudo ln -sv /usr/bin/startdwm ./startdwm
chmod +x /usr/bin/startdwm
