#!/usr/bin/bash

# set source
src=`pwd`
echo "Source directory: $src\n"

# i3
echo "exporting i3"
mkdir -p ~/.config/i3
ln -svf $src/i3 ~/.config/i3/config

# vim
echo "\nexporting vi"
ln -svf $src/vi ~/.virc
mkdir -p ~/.config/nvim
ln -svf $src/vi ~/.config/nvim/init.vim

# gtk
echo "\nexporting gtk"
ln -svf $src/gtk-3.0 ~/.gtkrc-2.0
mkdir -p ~/.config/gtk-3.0
ln -svf $src/gtk-3.0 ~/.config/gtk-3.0/settings.ini 

# profile
echo "\nexporting profile"
ln -svf $src/profile ~/.profile

# sound
echo "\nexporting alsa"
sudo ln -svf $src/alsa /etc/modprobe.d/alsa-base.conf

# polybar
echo "\nexporting polybar"
mkdir -p ~/.config/polybar
ln -svf $src/polybar_config ~/.config/polybar/config
ln -svf $src/polybar_launch_script ~/.config/polybar/launch.sh

# rofi
# oh-my-zsh

# zshrc
echo "\nexporting zsh"
ln -svf $src/zsh ~/.zshrc

# compton
echo "\nexporting compton"
mkdir -p ~/.config/compton
ln -svf $src/compton ~/.config/compton/compton.conf
