#!/bin/bash

sudo apt update
sudo apt install i3 dolphin terminator rofi feh flameshot compton python3-psutil -y
url = https://github.com/tobi-wan-kenobi/bumblebee-status.git
unzip $PWD/src/fonts.zip
sudo mv $PWD/*.ttf /usr/share/fonts/truetype/hack
mkdir ~/.config/i3
mkdir ~/.config/terminator
#mkdir ~/.config/bumblebee-status
mkdir ~/.config/compton
mkdir ~/.config/rofi
mkdir ~/.config/wallpaper
cp $PWD/src/i3/* ~/.config/i3
cp $PWD/src/terminator/* ~/.config/terminator
destination = ~/.config
git clone "$url" "$destination"
sleep 300
cp $PWD/src/compton/* ~/.config/compton
cp $PWD/src/rofi/* ~/.config/rofi
cp $PWD/src/wallpaper/* ~/.config/wallpaper
#sudo chmod +x ~/.config/bumblebee-status/*

sudo apt autoremove -y
sudo reboot
