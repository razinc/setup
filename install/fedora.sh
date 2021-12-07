sudo dnf install feh rofi gnome-tweaks neofetch i3status pavucontrol neovim python3-neovim alacritty util-linux-user deluge maim polybar -y

sudo dnf remove gnome-contacts gnome-weather gnome-clocks gnome-maps totem gnome-calculator simple-scan rhythmbox cheese gnome-tour yelp rxvt -y

sudo dnf copr enable fuhrmann/i3-gaps -y
sudo dnf install i3-gaps -y

# # disable secure boot
# sudo dnf install dnf-plugins-core -y
# sudo dnf copr enable t0xic0der/nvidia-auto-installer-for-fedora -y
# sudo dnf install nvautoinstall -y
# sudo nvautoinstall --rpmadd

# sudo dnf install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
# sudo dnf install steam -y

# sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
# sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
# sudo dnf install vlc -y
    
sudo dnf install zsh -y
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.videolan.VLC
flatpak install flathub io.atom.Atom
flatpak install flathub com.valvesoftware.Steam
flatpak install flathub org.libretro.RetroArch
# sudo flatpak install flathub com.jetbrains.PyCharm-Community
# TODO: add retroarch, steam

# cd ~
# dconf load / < saved_settings.dconf
# cd -

