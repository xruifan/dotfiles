# What is this repo?
This repo contains my personal dot files. The files are written by myself or gathered from various sources and modified by myself. I use GNU Stow to manage my dot files, which enables me to organize and create symlinks for my configs while synchronizing them across my desktop and laptops. For more details, please see: [GNU Stow](https://www.gnu.org/software/stow/).

# Included software configs in the dot files:
### Common:
  - kitty
  - tmux
  - nvim

### linux-gnu:
#### hyprland:
  - waybar
#### sway
  - waybar
#### i3:
  - picom
  - rofi

### darwin:
  - aerospace

## Fonts:
  - nerd-fonts
  - otf-apple-fonts

# How to use them?
```sh
git clone https://github.com/xruifan/dotfiles.git ~/dotfiles
~/dotfiles/stow_dotfiles.sh
```
and reload your session.
