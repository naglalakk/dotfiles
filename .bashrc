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

# Attach to the ops session
# Keeps tmux from creating 
# new sessions on start
alias tmux='tmux a -t 0-ops'

# Haskell / ghcup
# Note: This breaks .xmonad --recompile
# Comment this out on pacman -Syu (the solution for now :/)
[ -f "/home/donna/.ghcup/env" ] && source "/home/donna/.ghcup/env"
export PATH="$HOME/.cabal/bin:$HOME/.ghcup/bin:$PATH"
export PATH="/home/donna/.ghcup/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# export PATH="$(yarn global bin):$PATH"

# Setja í .zshrc
export PATH="/usr/local/bin:$PATH"
## AWS sso login helpers ##
export AWS_REGION=eu-west-1
function sso (){
  export AWS_PROFILE=$1-$2
  aws-sso-util login --profile $AWS_PROFILE
  $(aws-export-credentials --profile $AWS_PROFILE --credentials-file-profile $AWS_PROFILE)
}

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
# TFENV_INSTALL_DIR=$HOME/.tfenv
# export PATH="$HOME/.tfenv/bin:$PATH"
_nvmrc_hook() {
  if [[ $PWD == $PREV_PWD ]]; then
    return
  fi
  
  PREV_PWD=$PWD
  [[ -f ".nvmrc" ]] && nvm use
}

if ! [[ "${PROMPT_COMMAND:-}" =~ _nvmrc_hook ]]; then
  PROMPT_COMMAND="_nvmrc_hook${PROMPT_COMMAND:+;$PROMPT_COMMAND}"
fi

eval "$(direnv hook bash)"

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# some poetry hack idk
export PYTHON_KEYRING_BACKEND=keyring.backends.null.Keyring
export PATH="$HOME/.poetry/bin:$PATH"
# alias poetry=poetry@1.4

export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
