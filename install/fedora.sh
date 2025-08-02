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
        gnome-tweaks \
        fastfetch \
        deluge \
        zsh \
        meld \
        vlc \
        -y
# additional repo required
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf config-manager --enable fedora-cisco-openh264 -y
sudo dnf install steam -y
# font
wget -P /tmp https://github.com/FortAwesome/Font-Awesome/releases/download/6.2.0/fontawesome-free-6.2.0-desktop.zip
unzip -o /tmp/fontawesome-free-6.2.0-desktop.zip -d /tmp
sudo mkdir -p /usr/local/share/fonts
sudo cp -r  /tmp/fontawesome-free-6.2.0-desktop/otfs /usr/local/share/fonts/FontAwesome6
fc-cache -f -v
# poetry
curl -sSL https://install.python-poetry.org | python3 -
# alternative text editor
wget -P /tmp https://github.com/pulsar-edit/pulsar/releases/download/v1.118.0/Linux.pulsar-1.118.0.x86_64.rpm
sudo dnf install /tmp/Linux.pulsar-1.118.0.x86_64.rpm -y

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
        mediawriter \
        gnome-text-editor \
        gnome-boxes \
        -y

###############
# shell setup #
# #############
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
