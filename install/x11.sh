#!/usr/bin/bash

############
# installs #
############
sudo dnf install \
    pavucontrol \
    xrandr \
    picom \
    i3 \
    polybar \
    rofi \
    feh \
    flameshot \
    -y

#####################
# remove bloatwares #
#####################
sudo dnf remove \
    rxvt \
    rxvt-unicode \
    i3lock \
    -y
