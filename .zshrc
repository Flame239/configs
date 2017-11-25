# Path to your oh-my-zsh installation.
export ZSH=/home/flame239/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"
#ZLE_RPROMPT_INDENT=0 - dont use this shit

DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(zsh-completions command-not-found zsh-syntax-highlighting zsh-autosuggestions thefuck)
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

########################################################################

PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"

LC_TIME=en_GB.UTF-8

export BROWSER=yandex-browser-beta

alias g='git'


