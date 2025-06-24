#!/usr/bin/bash

echo "Cleaning tcc"
cd tcc
sudo make clean
cd ..

echo "Cleaning dwm"
cd dwm
sudo make clean
cd ..

echo "Cleaning dmenu"
cd dmenu
sudo make clean
cd ..

echo "Cleaning st"
cd st
sudo make clean
cd ..

echo "Cleaning slstatus"
cd slstatus
sudo make clean
cd ..
