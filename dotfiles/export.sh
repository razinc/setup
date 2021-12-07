# set source
src=`pwd`
echo "Source directory: $src\n"

# i3
echo "exporting i3"
mkdir -p ~/.config/i3
ln -svf $src/i3 ~/.config/i3/config

# vim
echo "exporting vi"
ln -svf $src/vi ~/.virc
mkdir -p ~/.config/nvim
ln -svf $src/vi ~/.config/nvim/init.vim

# gtk
echo "exporting gtk"
ln -svf $src/gtk-3.0 ~/.gtkrc-2.0
mkdir -p ~/.config/gtk-3.0
ln -svf $src/gtk-3.0 ~/.config/gtk-3.0/settings.ini 

# profile
echo "exporting profile"
ln -svf $src/profile ~/.profile

# sound
echo "exporting alsa"
sudo ln -svf $src/alsa /etc/modprobe.d/alsa-base.conf

# polybar
echo "exporting polybar"
mkdir -p ~/.config/polybar
ln -svf $src/polybar_config ~/.config/polybar/config
ln -svf $src/polybar_launch_script ~/.config/polybar/launch.sh

# rofi
# oh-my-zsh

# zshrc
echo "exporting zsh"
ln -svf $src/zsh ~/.zshrc

