#!/usr/bin/bash

# set source
src=`pwd`
printf "Source directory: $src\n\n"

# # i3
# printf "exporting i3"
# rm -rf ~/.config/i3
# ln -svf $src/.config/i3  ~/.config/i3

# vim
printf "exporting vi"
rm -rf ~/.config/nvim
ln -svf $src/.config/nvim ~/.config/nvim

# # gtk
# printf "exporting gtk"
# rm -rf ~/.config/gtk-3.0
# ln -svf $src/.config/gtk-3.0 ~/.config/gtk-3.0

# profile
printf "exporting profile"
ln -svf $src/.profile ~/.profile

# # polybar
# printf "exporting polybar"
# rm -rf ~/.config/polybar
# ln -svf $src/.config/polybar ~/.config/polybar

# # rofi
# printf "exporting rofi"
# rm -rf ~/.config/rofi
# ln -svf $src/.config/rofi ~/.config/rofi

# oh-my-zsh

# zshrc
printf "exporting zsh"
ln -svf $src/.zshrc ~/.zshrc

# # picom
# printf "exporting picom"
# rm -rf ~/.config/picom
# ln -svf $src/.config/picom ~/.config/picom

# mangohud
printf "exporting mangohud"
rm -rf ~/.config/MangoHud
ln -svf $src/.config/MangoHud ~/.config/MangoHud

# # xinit
# printf "exporting xinit"
# rm -rf ~/.xinitrc
# ln -svf $src/.xinitrc ~/.xinitrc
