#!/usr/bin/bash

#######
# rpm #
#######
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf group upgrade core -y
sudo dnf upgrade -y

####################
# firmware updates #
####################
sudo fwupdmgr get-devices
sudo fwupdmgr refresh --force
sudo fwupdmgr get-updates
sudo fwupdmgr update

############
# installs #
############
# packages
sudo dnf install \
    util-linux-user \
    python3-pip \
    htop \
    neovim python3-neovim \
    alacritty \
    gnome-tweaks \
    fastfetch \
    deluge \
    zsh \
    meld \
    vlc \
    kvantum \
    memtest86+ \
    cpu-x \
    steam \
    curl \
    -y

# font
wget -P /tmp https://github.com/FortAwesome/Font-Awesome/releases/download/6.2.0/fontawesome-free-6.2.0-desktop.zip
unzip -o /tmp/fontawesome-free-6.2.0-desktop.zip -d /tmp
sudo mkdir -p /usr/local/share/fonts
sudo cp -r  /tmp/fontawesome-free-6.2.0-desktop/otfs /usr/local/share/fonts/FontAwesome6
sudo dnf install \
    cabextract \
    xorg-x11-font-utils \
    fontconfig \
    -y
sudo rpm -i --nodigest --nosignature https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm
fc-cache -f -v

# uv
curl -LsSf https://astral.sh/uv/install.sh | sh

# alternative text editor
wget -P /tmp https://github.com/pulsar-edit/pulsar/releases/download/v1.118.0/Linux.pulsar-1.118.0.x86_64.rpm
sudo dnf install /tmp/Linux.pulsar-1.118.0.x86_64.rpm -y

# graphic
sudo dnf install \
    mesa-dri-drivers \
	mesa-vulkan-drivers \
	vulkan-loader \
	mesa-libGLU \
	mesa-va-drivers-freeworld \
	mesa-vdpau-drivers-freeworld \
 	-y

# media
sudo dnf swap ffmpeg-free ffmpeg --allowerasing -y
sudo dnf install \
    gstreamer1-plugins-{bad-\*,good-\*,base} \
  	gstreamer1-plugin-openh264 \
	gstreamer1-libav \
  	--exclude=gstreamer1-plugins-bad-free-devel \
	lame\* \
    ffmpeg-libs \
	libva \
	libva-utils \
    openh264 \
	gstreamer1-plugin-openh264 \
	mozilla-openh264 \
	-y
sudo dnf config-manager --set-enabled fedora-cisco-openh264
sudo dnf group install multimedia -y
sudo dnf group install sound-and-video -y

#####################
# remove bloatwares #
#####################
sudo dnf remove \
    gnome-contacts \
    gnome-weather \
    gnome-clocks \
    gnome-maps \
    totem \
    gnome-calculator \
    simple-scan \
    rhythmbox \
    cheese \
    gnome-tour \
    yelp \
    mediawriter \
    gnome-text-editor \
    gnome-boxes \
    -y

###############
# shell setup #
# #############
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
