#!/usr/bin/bash

# set source
src=`pwd`
printf "Source directory: $src\n\n"

# sway
printf "exporting sway"
rm -rf ~/.config/sway
ln -svf $src/.config/sway ~/.config/sway

# waybar
printf "exporting waybar"
rm -rf ~/.config/waybar
ln -svf $src/.config/waybar ~/.config/waybar

# wofi
printf "exporting wofi"
rm -rf ~/.config/wofi
ln -svf $src/.config/wofi ~/.config/wofi
