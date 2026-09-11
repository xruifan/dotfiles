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
os=$(uname -s)
case "$os" in
	Darwin*)
		echo "Detected darwin"
		stow common darwin
		;;
	Linux*)
		echo "Detected GNU/Linux"
		stow common linux-gnu
		;;
	*)
		echo "Unsupported OS: $os"
		exit 1
		;;
esac

echo "Dotfiles have been stowed successfully."
