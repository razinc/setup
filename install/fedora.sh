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
        compton \
        i3 \
        polybar \
        rofi \
        feh \
        steam \
        zsh \
        -y | tee install.log
# font
wget -P /tmp https://github.com/FortAwesome/Font-Awesome/releases/download/6.2.0/fontawesome-free-6.2.0-desktop.zip
unzip /tmp/fontawesome-free-6.2.0-desktop.zip -d /tmp
sudo mkdir -p /usr/local/share/fonts
sudo cp -r  /tmp/fontawesome-free-6.2.0-desktop/otfs /usr/local/share/fonts/FontAwesome6
fc-cache -f -v
# shell setup
chsh -s $(which zsh)  | tee -a install.log
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

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
        -y

################
# post process #
################
echo -e "\nInstallation error:"
grep -i --color "No match for argument" install.log
grep -i --color "no such file or directory" install.log
