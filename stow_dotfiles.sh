#!/usr/bin/env sh
#
# Copyright 2024 Xuan-Rui Fan <serfinxx@gmail.com>
#
# Licensed under the terms of the GNU GPL v3, or any later version.
#
# This script is intended for stowing dotfiles with GNU Stow so that the relevant
# configurations to each platform can be linked.

# Change to the dotfiles directory
cd "$(dirname "$0")"

# Check the OS type
if [[ "$OSTYPE" == "darwin"* ]]; then
	echo "Detected darwin"
	stow common darwin
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
	echo "Detected GNU/Linux"
	stow common linux-gnu
else
	echo "Unsupported OS: $OSTYPE"
	exit 1
fi

echo "Dotfiles have been stowed successfully."
