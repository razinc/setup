#!/usr/bin/bash

src=`pwd`

rm -rf ~/.config/i3
ln -svf $src/.config/i3  ~/.config/i3

rm -rf ~/.config/polybar
ln -svf $src/.config/polybar ~/.config/polybar

rm -rf ~/.config/rofi
ln -svf $src/.config/rofi ~/.config/rofi

rm -rf ~/.config/picom
ln -svf $src/.config/picom ~/.config/picom

rm -rf ~/.xinitrc
ln -svf $src/.xinitrc ~/.xinitrc
