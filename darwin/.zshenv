# Copyright 2024 Xuan-Rui Fan <serfinxx@gmail.com>
#
# Licensed under the terms of the GNU GPL v3, or any later version.
#
# This is the platform-specific zsh environment file for macOS.
# It is sourced by every zsh process, not just interactive shells.
#
# For more information on Zsh configuration and options, visit:
# https://zsh.sourceforge.io/Doc/Release/
#
# If you have any questions or feedback, feel free to reach out to me.
#

# Homebrew must come first: /usr/bin/git and /usr/bin/python3 on macOS are
# stubs that shadow the Homebrew versions when placed earlier in PATH.
if [ -d /opt/homebrew/bin ]; then
  PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
elif [ -d /usr/local/bin ]; then
  # Intel Macs
  PATH="/usr/local/bin:/usr/local/sbin:$PATH"
fi

# Shared PATH/env for every platform (see common/.config/zsh/zshenv.common).
[ -f "$HOME/.config/zsh/zshenv.common" ] && source "$HOME/.config/zsh/zshenv.common"
