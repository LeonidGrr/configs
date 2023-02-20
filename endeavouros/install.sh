# Installing packages
yay -S polybar autotiling xkblayout-state-git xautolock htop lightdm-settings ttf-font-awesome ttf-jetbrains-mono-nerd;

# Bluetooth
cp -r ./bluetooth /etc/bluetooth &&
yes | yay -S blueberry;
sudo systemctl enable bluetooth;

# Additional tools
yay -S flameshot peek vscodium-bin;
codium;

# Copy and apply user config
cp -pr .config ~;
chmod +x $HOME/.config/polybar/launch.sh;
i3-msg restart;

# Git config
echo 'Cache git credentials for 10 days';
git config --global credential.helper 'cache --timeout 864000';
