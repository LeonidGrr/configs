#!/bin/bash

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

# xorg display server installation
sudo apt install -y xorg 

# Python installed for bumblebee-status. PACKAGE INCLUDES build-essential.
sudo apt install -y python3-pip 

# Microcode for Intel/AMD 
sudo apt install -y amd64-microcode
sudo apt install -y intel-microcode 

# Network Manager
sudo apt install -y network-manager-gnome

# Installation for Appearance management
sudo apt install -y lxappearance 

# File Manager (eg. pcmanfm,krusader)
sudo apt install -y thunar xfce4-settings ranger

# Network File Tools/System Events
sudo apt install -y dialog avahi-daemon acpi acpid gvfs-backends
# apt install -y mtools dosfstools 

systemctl enable avahi-daemon
systemctl enable acpid

# Terminal (eg. terminator,kitty,xfce4-terminal)
sudo apt install -y kitty

# Sound packages
sudo apt install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa

# Neofetch/HTOP
sudo apt install -y neofetch htop

# EXA installation
# replace ls command in .bashrc file with line below
# alias ls='exa -al --long --header --color=always --group-directories-first' 
sudo apt install -y exa

# Printing and bluetooth (if needed)
sudo apt install -y cups
sudo apt install -y bluez blueman

systemctl enable bluetooth
systemctl enable cups

# Browser Installation (eg. chromium)
sudo apt install -y firefox-esr 

# Desktop background browser/handler 
# feh --bg-fill /path/to/directory 
# example if you want to use in autostart.sh for i3-gaps
sudo apt install -y nitrogen 
sudo apt install -y feh

# Packages needed i3 after installation
sudo apt install -y rofi libnotify-bin picom xbacklight
sudo apt install -y vim flameshot unzip

# Install fonts
sudo apt install fonts-font-awesome

# Install i3
sudo apt install i3

# install lightdm
sudo apt install -y lightdm slick-greeter lightdm-settings
systemctl enable lightdm

# XSessions and i3.desktop
if [[ ! -d /usr/share/xsessions ]]; then
    sudo mkdir /usr/share/xsessions
fi

cat > ./temp << "EOF"
[Desktop Entry]
Encoding=UTF-8
Name=i3
Comment=Dynamic window manager
Exec=i3
Icon=i3
Type=XSession
EOF
cp ./temp /usr/share/xsessions/i3.desktop;rm ./temp

########################################################
# End of script for default config
#

## These two scripts will install nerdfonts and copy my configuration files into the ~/.config directory
## Configuration uses 

sudo source ~/configs/debian/nerdfonts.sh
sudo source ~/configs/debian/copyconf.sh

sudo apt autoremove

printf "\e[1;32mYou can now reboot! Thanks you.\e[0m\n"
