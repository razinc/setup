# install i3-gaps
sudo dnf copr enable fuhrmann/i3-gaps
sudo dnf install i3-gaps
sudo dnf install feh

# install neofetch
sudo dnf install neofetch

# install nvidia driver
# disable secure boot
sudo dnf install dnf-plugins-core -y
sudo dnf copr enable t0xic0der/nvidia-auto-installer-for-fedora -y
sudo dnf install nvautoinstall -y
sudo nvautoinstall --rpmadd

# install steam
sudo dnf install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install steam

# install pavucontrol
sudo dnf install pavucontrol

# install neovim
sudo dnf install -y neovim python3-neovim

# install alacritty
sudo dnf install alacritty

# install zsh
sudo dnf zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
