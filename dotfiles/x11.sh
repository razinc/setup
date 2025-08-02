#!/usr/bin/bash

# set source
src=`pwd`
printf "Source directory: $src\n\n"

# i3
printf "exporting i3"
rm -rf ~/.config/i3
ln -svf $src/.config/i3  ~/.config/i3

# polybar
printf "exporting polybar"
rm -rf ~/.config/polybar
ln -svf $src/.config/polybar ~/.config/polybar

# rofi
printf "exporting rofi"
rm -rf ~/.config/rofi
ln -svf $src/.config/rofi ~/.config/rofi

# picom
printf "exporting picom"
rm -rf ~/.config/picom
ln -svf $src/.config/picom ~/.config/picom

# xinit
printf "exporting xinit"
rm -rf ~/.xinitrc
ln -svf $src/.xinitrc ~/.xinitrc
