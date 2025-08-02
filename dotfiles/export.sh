#!/usr/bin/bash

# set source
src=`pwd`
printf "Source directory: $src\n\n"

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

# oh-my-zsh

# zshrc
printf "exporting zsh"
ln -svf $src/.zshrc ~/.zshrc

# mangohud
printf "exporting mangohud"
rm -rf ~/.config/MangoHud
ln -svf $src/.config/MangoHud ~/.config/MangoHud
