#!/bin/bash

sudo apt update
sudo apt install i3 dolphin rofi feh flameshot python3-psutil -y
#unzip $PWD/src/fonts.zip
#sudo mv $PWD/*.ttf /usr/share/fonts/truetype/hack
mkdir ~/.config/i3
mkdir ~/.config/rofi
mkdir ~/.config/wallpaper
cp $PWD/src/i3/* ~/.config/i3
cp $PWD/src/rofi/* ~/.config/rofi
cp $PWD/src/wallpaper/* ~/.config/wallpaper
cd "$HOME/.config/"
git clone https://github.com/tobi-wan-kenobi/bumblebee-status.git
sleep 20

sudo apt autoremove -y
sudo reboot
