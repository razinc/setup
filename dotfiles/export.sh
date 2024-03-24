#!/usr/bin/bash

# set source
src=`pwd`
printf "Source directory: $src\n\n"

# i3
printf "exporting i3"
rm -rf ~/.config/i3
ln -svf $src/.config/i3  ~/.config/i3

# vim
printf "exporting vi"
rm -rf ~/.config/nvim
ln -svf $src/.config/nvim ~/.config/nvim

# gtk
printf "exporting gtk"
rm -rf ~/.config/gtk-3.0
ln -svf $src/.config/gtk-3.0 ~/.config/gtk-3.0

# profile
printf "exporting profile"
ln -svf $src/.profile ~/.profile

# polybar
printf "exporting polybar"
rm -rf ~/.config/polybar
ln -svf $src/.config/polybar ~/.config/polybar

# rofi
# oh-my-zsh

# zshrc
printf "exporting zsh"
ln -svf $src/.zshrc ~/.zshrc

# compton
printf "exporting compton"
rm -rf ~/.config/compton
ln -svf $src/.config/compton ~/.config/compton

# mangohud
printf "exporting mangohud"
rm -rf ~/.config/MangoHud
ln -svf $src/.config/MangoHud ~/.config/MangoHud

# xinit
printf "exporting xinit"
rm -rf ~/.xinitrc
ln -svf $src/.config/.xinitrc ~/.xinitrc
