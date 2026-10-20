#!/usr/bin/env sh
#
# Copyright 2024 Xuan-Rui Fan <serfinxx@gmail.com>
#
# Licensed under the terms of the GNU GPL v3, or any later version.
#
# This script is intended for stowing dotfiles with GNU Stow so that the relevant
# configurations to each platform can be linked.

set -eu

# Change to the dotfiles directory
cd "$(dirname "$0")"

if ! command -v stow >/dev/null 2>&1; then
	printf '%s\n' 'error: GNU Stow is not installed (e.g. "pacman -S stow" or "brew install stow").' >&2
	exit 1
fi

# Check the OS type
os=$(uname -s)
case "$os" in
	Darwin*)
		packages="common darwin"
		;;
	Linux*)
		packages="common linux-gnu"
		;;
	*)
		printf 'error: unsupported OS: %s\n' "$os" >&2
		exit 1
		;;
esac

printf 'Detected %s, stowing: %s\n' "$os" "$packages"

# Always stow into $HOME (the default target is the repo's parent directory,
# which is wrong when the repo is cloned somewhere other than ~/dotfiles).
# --restow makes re-runs idempotent instead of failing on existing links.
# shellcheck disable=SC2086 # intentional word splitting of $packages
if ! stow --restow --target "$HOME" $packages; then
	printf '%s\n' 'error: stowing failed, see the warnings above.' >&2
	exit 1
fi

printf '%s\n' 'Dotfiles have been stowed successfully.'
