#!/usr/bin/bash

sudo dnf upgrade -y

##########################
# enable additional repo #
##########################
sudo dnf config-manager --set-enabled rpmfusion-nonfree-steam
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

############
# installs #
############
# standard package
sudo dnf install \
        util-linux-user \
        python3-pip \
        htop \
        neovim python3-neovim \
        alacritty \
        pavucontrol \
        gnome-tweaks \
        neofetch \
        xrandr \
        deluge \
        vlc \
        picom \
        i3 \
        polybar \
        rofi \
        feh \
        steam \
        zsh \
        meld \
        -y
# enable media playback in firefox
sudo dnf install ffmpeg-libs --allowerasing
# font
wget -P /tmp https://github.com/FortAwesome/Font-Awesome/releases/download/6.2.0/fontawesome-free-6.2.0-desktop.zip
unzip /tmp/fontawesome-free-6.2.0-desktop.zip -d /tmp
sudo mkdir -p /usr/local/share/fonts
sudo cp -r  /tmp/fontawesome-free-6.2.0-desktop/otfs /usr/local/share/fonts/FontAwesome6
fc-cache -f -v
# poetry
curl -sSL https://install.python-poetry.org | python3 -

##############
# steam skin #
##############
# guide: https://steamcommunity.com/sharedfiles/filedetails/?id=1941650801
# main skin
wget -P /tmp https://github.com/minischetti/metro-for-steam/archive/refs/tags/v4.4.zip
unzip /tmp/v4.4.zip -d /tmp
cp -r /tmp/metro-for-steam-4.4 ~/.local/share/Steam/skins
# patch
git clone https://github.com/redsigma/UPMetroSkin.git /tmp/UPMetroSkin
cp -r /tmp/UPMetroSkin/Unofficial\ 4.x\ Patch/Main\ Files\ \[Install\ First\]/* ~/.local/share/Steam/skins/metro-for-steam-4.4
git clone https://github.com/The-HopelessGamer/Friends-UI-Custom.git /tmp/Friends-UI-Custom
cat ~/.local/share/Steam/skins/metro-for-steam-4.4/resource/webkit.css /tmp/Friends-UI-Custom/friends.custom.dev.css > ~/.local/share/Steam/skins/metro-for-steam-4.4/resource/webkit.css

#####################
# remove bloatwares #
#####################
sudo dnf remove \
        gnome-contacts \
        gnome-weather \
        gnome-clocks \
        gnome-maps \
        totem \
        gnome-calculator \
        simple-scan \
        rhythmbox \
        cheese \
        gnome-tour \
        yelp \
        rxvt \
        mediawriter \
        rxvt-unicode \
        i3lock \
        -y

###############
# shell setup #
# #############
chsh -s $(which zsh)  | tee -a install.log
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
