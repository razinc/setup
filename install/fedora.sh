#!/usr/bin/bash

sudo dnf upgrade -y

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
        picom \
        i3 \
        polybar \
        rofi \
        feh \
        zsh \
        meld \
        -y
# additional repo required
sudo dnf config-manager --set-enabled rpmfusion-nonfree-steam
sudo dnf install steam
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install vlc
# enable media playback in firefox
sudo dnf install ffmpeg-libs --allowerasing
# font
wget -P /tmp https://github.com/FortAwesome/Font-Awesome/releases/download/6.2.0/fontawesome-free-6.2.0-desktop.zip
unzip -o /tmp/fontawesome-free-6.2.0-desktop.zip -d /tmp
sudo mkdir -p /usr/local/share/fonts
sudo cp -r  /tmp/fontawesome-free-6.2.0-desktop/otfs /usr/local/share/fonts/FontAwesome6
fc-cache -f -v
# poetry
curl -sSL https://install.python-poetry.org | python3 -

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
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
