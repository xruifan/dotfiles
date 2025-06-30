#    _      _      _      _      _      _      _      _      _      _   
#  _( )_  _( )_  _( )_  _( )_  _( )_  _( )_  _( )_  _( )_  _( )_  _( )_ 
# (_ o _)(_ o _)(_ o _)(_ o _)(_ o _)(_ o _)(_ o _)(_ o _)(_ o _)(_ o _)
#  (_,_)  (_,_)  (_,_)  (_,_)  (_,_)  (_,_)  (_,_)  (_,_)  (_,_)  (_,_) 
#    _                                                              _   
#  _( )_                                                          _( )_ 
# (_ o _)   _   ,                   _ __                         (_ o _)
#  (_,_)   ' \ /                   ' )  )     o         /   _/_   (_,_) 
#    _        X   . . __.  ____ --- /--' . . o'_     __/ __ /       _   
#  _( )_     / \_(_/_(_/|_/ / <_   /  \_(_/_<_/_)_  (_/_(_)<__    _( )_ 
# (_ o _)                                                        (_ o _)
#  (_,_)                                                          (_,_) 
#    _      _      _      _      _      _      _      _      _      _   
#  _( )_  _( )_  _( )_  _( )_  _( )_  _( )_  _( )_  _( )_  _( )_  _( )_ 
# (_ o _)(_ o _)(_ o _)(_ o _)(_ o _)(_ o _)(_ o _)(_ o _)(_ o _)(_ o _)
#  (_,_)  (_,_)  (_,_)  (_,_)  (_,_)  (_,_)  (_,_)  (_,_)  (_,_)  (_,_) 
#
# Copyright 2024 Xuan-Rui Fan <serfinxx@gmail.com>
#
# Licensed under the terms of the GNU General Public License v3, or any later version.
#
# This is the configuration file for Zsh (Z Shell).
# It contains custom settings, aliases, and functions to enhance the user experience.
#
# Feel free to modify this file according to your preferences, have fun.
# All modifications made to this file are also covered under the GPLv3 license.
#
# To apply changes made to this file, run:
#   source ~/.zshrc
#
# For more information on Zsh configuration and options, visit:
# https://zsh.sourceforge.io/Doc/Release/
#
# If you have any questions or feedback, feel free to reach out to me.
#

export VISUAL=nvim
export EDITOR='$VISUAL'
export VIRTUAL_ENV_DISABLE_PROMPT=1

ZSH_THEME=''
ZSH_CUSTOM_AUTOUPDATE_NUM_WORKERS=5

# Lazy load nvm
zstyle ':omz:plugins:nvm' lazy yes
zstyle ':omz:plugins:nvm' lazy-cmd npm node nvim vim tmux

plugins=(zsh-syntax-highlighting zsh-autosuggestions autoupdate nvm)

export ZSH=$HOME/.oh-my-zsh
export PATH=$HOME/.local/bin:$ZSH:$PATH
source $ZSH/oh-my-zsh.sh

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias vim='nvim'
alias vi='nvim'
alias python='python3'
alias pip='pip3'

DISABLE_AUTO_TITLE='true'
HISTSIZE=5000
SAVEHIST=5000

# Keychain
eval `keychain --quiet --eval ~/.ssh/github`

# Define color variables
typeset -A colors
colors=(
  line '%F{white}'
  date '%F{cyan}'
  dir '%F{blue}'
  venv '%F{yellow}'
  git '%F{green}'
)

# Icons
foldericon='󰝰 '
timeicon='󰯑 '
giticon=' '

# Function to get the current git branch
git_branch_name() {
  local branch
  branch=$(git symbolic-ref --short HEAD 2>/dev/null)
  if [[ -n $branch ]]; then
    echo "-[${colors[git]}${giticon}${branch}${colors[line]}]"
  fi
}

# Determines prompt modifier for Python virtual environment
precmd_venv_info() {
  if [[ -n "$VIRTUAL_ENV" ]]; then
    VENV_PROMPT="(${colors[venv]}$(basename "$VIRTUAL_ENV")${colors[line]})::"
  else
    VENV_PROMPT=""
  fi
}

# Ensure precmd_functions array is initialized
typeset -ga precmd_functions
precmd_functions+=( precmd_venv_info )

# Allow substitutions and expansions in the prompt
setopt prompt_subst

# Define the prompt
PROMPT='${VENV_PROMPT}${colors[line]}[${colors[date]}${timeicon}%D{%H:%M:%S}${colors[line]}]-[${colors[dir]}${foldericon}%~${colors[line]}]$(git_branch_name) ${colors[line]}❯%f '
