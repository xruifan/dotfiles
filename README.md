# What are these?
These are my personal dot files. The files are written by myself or gathered from various sources and modified by myself. I use GNU Stow to manage my dot files, which enables me to organize and create symlinks for my configs while synchronizing them across my desktop and laptops. For more details, please see: [here](https://www.gnu.org/software/stow/).

# Included softwares in the dot files:
  - `i3wm`: Tiling window manager
  - `picom`: Compositor
  - `rofi`: App launcher (dmenu)
  - `kitty`: Terminal emulator
  - `tmux`: Terminal multiplexer

# How to use them?
```sh
git clone https://github.com/xruifan/dotfiles.git ~/dotfiles
cd ~/dotfiles && stow .
```
and reload your session.
