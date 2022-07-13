#
# ~/.bashrc
#
export PATH=""
export PATH="/usr/bin:$PATH"
export PATH="/home/donna/.local/bin:$PATH"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Do it!
alias vim=nvim
# Haskell / ghcup
# Note: This breaks .xmonad --recompile
# Comment this out on pacman -Syu (the solution for now :/)
[ -f "/home/donna/.ghcup/env" ] && source "/home/donna/.ghcup/env" # ghcup-env
export PATH="$HOME/.cabal/bin:$HOME/.ghcup/bin:$PATH"
export PATH="/home/donna/.ghcup/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export DISPLAY=:1
export PATH="$(yarn global bin):$PATH"

# Setja í .zshrc
export PATH="/usr/local/bin:$PATH"
## AWS sso login helpers ##
export AWS_REGION=eu-west-1
function sso (){
  export AWS_PROFILE=$1-$2
  aws-sso-util login --profile $AWS_PROFILE
  $(aws-export-credentials --profile $AWS_PROFILE --credentials-file-profile $AWS_PROFILE)
}

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Nix
export PATH="/home/donna/.nix-profile/bin:$PATH"

export PKG_CONFIG_PATH=/usr/lib/imagemagick6/pkgconfig

# Cookiecutter
export COOKIECUTTER_CONFIG=/home/donna/Code/config/cookiecutter.yaml

# Cargo
export PATH="/home/donna/.cargo/bin:$PATH"
## fixes no auth sock varible;
# eval `ssh-agent -s`
# ssh-add
# cargo update
