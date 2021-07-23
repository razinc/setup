sudo dnf copr enable fuhrmann/i3-gaps -y
sudo dnf install i3-gaps -y

# disable secure boot
sudo dnf install dnf-plugins-core -y
sudo dnf copr enable t0xic0der/nvidia-auto-installer-for-fedora -y
sudo dnf install nvautoinstall -y
sudo nvautoinstall --rpmadd -y

sudo dnf install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install steam -y

sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install vlc -y
    
sudo dnf install zsh -y
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo dnf install feh -y
sudo dnf install neofetch -y
sudo dnf install i3status -y
sudo dnf install dmenu -y
sudo dnf install pavucontrol -y
sudo dnf install neovim python3-neovim -y
sudo dnf install alacritty -y

