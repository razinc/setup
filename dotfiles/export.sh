#!/usr/bin/bash

src=`pwd`

rm -rf ~/.config/nvim
ln -svf $src/.config/nvim ~/.config/nvim

ln -svf $src/.profile ~/.profile

ln -svf $src/.zshrc ~/.zshrc

rm -rf ~/.config/MangoHud
ln -svf $src/.config/MangoHud ~/.config/MangoHud

mkdir -p ~/.config/OpenRGB
ln -svf $src/.config/OpenRGB/eva.orp ~/.config/OpenRGB
ln -svf $src/.config/OpenRGB/off.orp ~/.config/OpenRGB
