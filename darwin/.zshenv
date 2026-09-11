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
# For more information on Zsh configuration and options, visit:
# https://zsh.sourceforge.io/Doc/Release/
#
# If you have any questions or feedback, feel free to reach out to me.
#

export PATH=$PATH:/opt/homebrew/bin

# Shared user bins, same set as linux-gnu. Only existing directories are
# added, so this file is safe to share across machines with different
# layouts. Machine-specific entries belong in ~/.zshrc.local, not here.
typeset -U PATH path
for d in "$HOME/.local/bin" "$HOME/.cargo/bin" "$HOME/.npm-global/bin"; do
  [ -d "$d" ] && PATH="$d:$PATH"
done
unset d

# Per-machine env/PATH overrides (not tracked by git).
[ -f "$HOME/.zshenv.local" ] && source "$HOME/.zshenv.local"

