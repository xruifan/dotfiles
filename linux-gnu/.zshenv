# Copyright 2025 Xuan-Rui Fan <serfinxx@gmail.com>
#
# Licensed under the terms of the GNU GPL v3, or any later version.
#
# This is the platform-specific zsh environment file for GNU/Linux.
# It is sourced by every zsh process, not just interactive shells.
#
# For more information on Zsh configuration and options, visit:
# https://zsh.sourceforge.io/Doc/Release/
#
# If you have any questions or feedback, feel free to reach out to me.
#

# Input method (fcitx5)
export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx

# Shared PATH/env for every platform (see common/.config/zsh/zshenv.common).
[ -f "$HOME/.config/zsh/zshenv.common" ] && source "$HOME/.config/zsh/zshenv.common"
