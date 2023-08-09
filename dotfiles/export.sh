#!/usr/bin/bash

# set source
src=`pwd`
echo "Source directory: $src\n"

# i3
echo "exporting i3"
rm -rf ~/.config/i3
ln -svf $src/.config/i3  ~/.config/i3

# vim
echo "\nexporting vi"
rm -rf ~/.config/nvim
ln -svf $src/.config/nvim ~/.config/nvim

# gtk
echo "\nexporting gtk"
rm -rf ~/.config/gtk-3.0
ln -svf $src/.config/gtk-3.0 ~/.config/gtk-3.0

# profile
echo "\nexporting profile"
ln -svf $src/.profile ~/.profile

# sound
echo "\nexporting alsa"
sudo ln -svf $src/alsa /etc/modprobe.d/alsa-base.conf

# polybar
echo "\nexporting polybar"
rm -rf ~/.config/polybar
ln -svf $src/.config/polybar ~/.config/polybar

# rofi
# oh-my-zsh

# zshrc
echo "\nexporting zsh"
ln -svf $src/.zshrc ~/.zshrc

# compton
echo "\nexporting compton"
rm -rf ~/.config/compton
ln -svf $src/.config/compton ~/.config/compton
