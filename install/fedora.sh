#!/usr/bin/bash

sudo dnf upgrade

############
# installs #
############

# standard package
sudo dnf install \
        neovim python3-neovim \
        alacritty \
        pavucontrol \
        gnome-tweaks \
        neofetch \
        xrandr \
        deluge \
        vlc \
        discord \
        compton \
        i3 \
        polybar \
        rofi \
        feh \
        -y | tee install.log

# # i3-gaps
# sudo dnf copr enable fuhrmann/i3-gaps -y | tee -a install.log
# sudo dnf install \
#         i3-gaps \
#         polybar \
#         rofi \
#         feh \
#         -y | tee -a install.log

# font
wget -P /tmp https://github.com/FortAwesome/Font-Awesome/releases/download/6.2.0/fontawesome-free-6.2.0-desktop.zip
unzip /tmp/fontawesome-free-6.2.0-desktop.zip -d /tmp
sudo cp -r  /tmp/fontawesome-free-6.2.0-desktop/otfs /usr/local/share/fonts/FontAwesome6
fc-cache -f -v

# brave
sudo dnf install dnf-plugins-core
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser -y

# steam
sudo dnf config-manager --set-enabled rpmfusion-nonfree-steam  | tee -a install.log
sudo dnf install steam -y  | tee -a install.log

# # nvidia driver (disable secure boot)
# sudo dnf config-manager --set-enabled rpmfusion-nonfree-nvidia-driver  | tee -a install.log
# sudo dnf install akmod-nvidia xorg-x11-drv-nvidia-cuda -y  | tee -a install.log
# # check if nvidia driver is installed
# #nvidia-smi

# zshell
sudo dnf install zsh -y  | tee -a install.log
chsh -s $(which zsh)  | tee -a install.log
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" | tee -a install.log

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
        -y  | tee -a install.log


################
# post process #
################
echo -e "\nInstallation error:"
grep -i --color "No match for argument" install.log
grep -i --color "no such file or directory" install.log
