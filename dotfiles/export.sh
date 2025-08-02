#!/usr/bin/bash

# set source
src=`pwd`
printf "Source directory: $src\n\n"

# vim
printf "exporting vi"
rm -rf ~/.config/nvim
ln -svf $src/.config/nvim ~/.config/nvim

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
