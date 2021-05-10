# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
#
#
ZSH_DISABLE_COMPFIX="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=()

source $ZSH/oh-my-zsh.sh

# User configuration
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Use NeoVim instead of Vim
alias vim=nvim

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Haskell
# export PATH=$HOME/.local/bin:$PATH
# alias stack=$HOME/.local/bin/stack
[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"

# Purescript
# export PATH=$HOME/Code/scripts/psc-package:$PATH

# Nix
# if [ -e /Users/Donna/.nix-profile/etc/profile.d/nix.sh ]; then source /Users/Donna/.nix-profile/etc/profile.d/nix.sh; fi
# source /Users/Donna/.nix-profile/etc/profile.d/nix.sh
export NIX_PATH=$HOME/.nix-defexpr/channels${NIX_PATH:+:}$NIX_PATH


# # Golang
# export GOPATH=$HOME/Code/K0TT/repos/Go
# export GOROOT=/usr/local/opt/go/libexec
# export PATH=$PATH:$GOPATH/bin
# export PATH=$PATH:$GOROOT/bin

# Ruby: rvm
# export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
# source /Users/Donna/.rvm/scripts/rvm
#
# Python
export PYENV_ROOT="$HOME/.pyenv"
eval "$(pyenv init -)"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Latex
# export PATH="$PATH:/Library/TeX/texbin"
# export PATH="$PATH:/Library/TeX/texbin/"

# Luna studio
# export PATH=/Users/Donna/.local/bin/luna-studio:$PATH

# Rust
# export PATH="$PATH:$HOME/.cargo/bin"

# Custom scripts
# export PATH=/Users/Donna/Code/scripts:$PATH
# export PATH="/usr/local/opt/qt/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/Donna/Desktop/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/Donna/Desktop/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/Users/Donna/Desktop/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/Donna/Desktop/google-cloud-sdk/completion.zsh.inc'; fi

# .NET stuff
# export PATH="$PATH:/Users/Donna/.dotnet/tools"
# alias ddotnet="ASPNETCORE_ENVIRONMENT=Development dotnet"

# Imagemagick
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export PKG_CONFIG_PATH="/usr/local/opt/imagemagick@6/lib/pkgconfig"

# Local bin
export PATH="$HOME/.local/bin:$PATH"

# Code path
export PATH="$HOME/Code/path/bin:$PATH"
export TERM="screen-256color"
alias tmux="tmux -2"

export PYTHONPATH="$HOME/donna/Code/github/StackGAN:$PYTHONPATH"
alias pip2=$HOME/Library/Python/2.7/bin/pip2.7
