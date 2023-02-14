cp -r .config ~;
chmod +x $HOME/.config/polybar/launch.sh;
i3-msg restart;

# Git config
echo 'Cache git credentials for 10 days';
git config --global credential.helper 'cache --timeout 864000';
