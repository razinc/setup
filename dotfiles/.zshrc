# Path to your oh-my-zsh installation.
export ZSH="/home/$USER/.oh-my-zsh"

# Path to pip install
export PATH=/home/$USER/.local/bin:$PATH

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh
# alias
alias fu="sudo dnf upgrade" 
alias fa="sudo dnf autoremove"

export EDITOR=/usr/bin/nvim

# force apps to run in dark mode
export QT_STYLE_OVERRIDE=kvantum
export GTK_THEME=Adwaita:dark
