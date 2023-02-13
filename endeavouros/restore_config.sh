# Installing packages
yay -S nerd-fonts-complete polybar autotiling xkblayout-state-git networkmanager-dmenu-git htop base-devel;

# Bluetooth
cp -r ./etc/bluetooth /etc/bluetooth &&
yes | yay -S blueberry;
sudo systemctl enable bluetooth;

# Additional tools
yay -S flameshot peek vscodium-bin;
codium;

# Copy and apply user config
cp .config ~;
chmod +x $HOME/.config/polybar/launch.sh;
i3-msg restart;

# Git config
echo 'Cache git credentials for 10 days';
git config --global credential.helper 'cache --timeout 864000';
