#!/bin/bash

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

# xorg display server installation
sudo apt install -y xorg 

# Install i3
sudo apt install i3

# Install lightdm
sudo apt install -y lightdm slick-greeter lightdm-settings
sudo systemctl enable lightdm

# Other packages
sudo apt install -y rofi libnotify-bin picom xbacklight polybar vim flameshot unzip

# Desktop background browser/handler 
# feh --bg-fill /path/to/directory 
# example if you want to use in autostart.sh for i3-gaps
# sudo apt install -y nitrogen 
sudo apt install -y feh

# Install fonts
sudo apt install fonts-font-awesome

# Sound packages
sudo apt install -y pulseaudio alsa-utils pavucontrol

# Network Manager
sudo apt install -y network-manager-gnome

# Installation for Appearance management
sudo apt install -y lxappearance 

# File Manager (eg. pcmanfm,krusader)
sudo apt install -y thunar xfce4-settings ranger

# Terminal (eg. terminator,kitty,xfce4-terminal)
sudo apt install -y xfce4-terminal

# Browser Installation (eg. chromium)
sudo apt install -y firefox-esr 

# Neofetch/HTOP
sudo apt install -y neofetch htop

# EXA installation
# replace ls command in .bashrc file with line below
# alias ls='exa -al --long --header --color=always --group-directories-first' 
sudo apt install -y exa

# System Events
sudo apt install -y dialog avahi-daemon acpi acpid gvfs-backends

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# Printing and bluetooth (if needed)
sudo apt install -y cups
sudo apt install -y bluez blueman

sudo systemctl enable bluetooth
sudo systemctl enable cups

# Python installed. PACKAGE INCLUDES build-essential.
sudo apt install -y python3-pip 

# Microcode for Intel/AMD 
# sudo apt install -y amd64-microcode
# sudo apt install -y intel-microcode 

sudo apt autoremove
