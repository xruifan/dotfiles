# Copyright 2025 Xuan-Rui Fan <serfinxx@gmail.com>
#
# Licensed under the terms of the GNU General Public License v3, or any later version.
#
# This is the configuration file for Zsh (Z Shell).
# It contains custom settings, aliases, and functions to enhance the user experience.
#
# Feel free to modify this file according to your preferences, have fun.
# All modifications made to this file are also covered under the GPLv3 license.
#
# For more information on Zsh configuration and options, visit:
# https://zsh.sourceforge.io/Doc/Release/
#
# If you have any questions or feedback, feel free to reach out to me.
#

export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx

# Personal bins (mirrors old .bashrc): npm-global holds opencode/openclaw,
# node24 holds node/npm, cargo holds rust toolchain.
# .zshenv is sourced for both interactive and non-interactive shells,
# so PATH here guarantees background agents/scripts also find these tools.
# -U keeps PATH unique so repeated sourcing doesn't duplicate entries.
typeset -U PATH path
export PATH="$HOME/.local/node24/bin:$HOME/.npm-global/bin:$HOME/.cargo/bin:$HOME/.local/bin:$PATH"
