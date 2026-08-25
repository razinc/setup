#!/usr/bin/bash

src=`pwd`

rm -rf ~/.config/sway
ln -svf $src/.config/sway ~/.config/sway

rm -rf ~/.config/waybar
ln -svf $src/.config/waybar ~/.config/waybar

rm -rf ~/.config/wofi
ln -svf $src/.config/wofi ~/.config/wofi
