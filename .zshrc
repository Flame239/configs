export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"

DISABLE_AUTO_TITLE="true"

HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.zsh_history
setopt    appendhistory     #Append history to the history file (no overwriting)
setopt    sharehistory      #Share history across terminals
setopt    incappendhistory  #Immediately append to the history file, not just when a term is killed

plugins=(zsh-completions zsh-syntax-highlighting zsh-autosuggestions colored-man-pages)

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
source $ZSH/oh-my-zsh.sh

prompt_context() {}
########################################################################
alias g='git'
alias ggrep="git branch -a | tr -d \* | sed '/->/d' | xargs git grep"
alias gcm="git checkout master"
alias gpm="git checkout master && git pull --rebase && git checkout -"

alias dps="docker ps"
alias dpa="docker ps -a"
alias dsl="docker service ls"
dwtf() {docker service ps --no-trunc "$1"}

alias gd="grond service describe --noDeployments -n "
alias gdd="grond service describe -n "

export PATH=/usr/local/opt/openssl/bin:$PATH

# Klarna setup
export LDAP_USERNAME="kirill.andreev"
export GRADLE_USER_HOME=/Users/kirill.andreev/.gradle


LANG=en_US.UTF-8
LC_ALL=en_US.UTF-8
LC_CTYPE=en_US.UTF-8

OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES


export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_INSTALLED_DEPENDENTS_CHECK=1

function aws_profile_prompt() {
  if [[ -n $AWS_PROFILE ]] && [[ $AWS_SESSION_EXPIRATION_TIME -gt $(date +%s) ]]; then
    echo "[$AWS_PROFILE ($(( ($AWS_SESSION_EXPIRATION_TIME - $(date -u +%s)) / 60)) minute(s) remaining)]"
  elif [[ -n $AWS_PROFILE ]]; then
    echo "[$AWS_PROFILE (no session token)]"
  fi
}

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kirill.andreev/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/kirill.andreev/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kirill.andreev/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/kirill.andreev/Downloads/google-cloud-sdk/completion.zsh.inc'; fi


bindkey '\e.' insert-last-word


newuuid() {
    uuidgen | tr '[:upper:]' '[:lower:]' |sed 's/-//g' |  tr -d '\n' | pbcopy;
    echo "New uuid copied to clipboard"
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
