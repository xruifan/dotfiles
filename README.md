# What is this repo?
This repo contains my personal dot files. The files are written by myself or gathered from various sources and modified by myself. I use GNU Stow to manage my dot files, which enables me to organize and create symlinks for my configs while synchronizing them across my desktop and laptops. For more details, please see: [GNU Stow](https://www.gnu.org/software/stow/).

# Included software configs in the dot files:
### Common:
  - zsh
  - kitty
  - tmux
  - nvim
  - opencode

### linux-gnu:
  - hypr
  - sway
  - i3
  - waybar
  - i3blocks
  - picom
  - rofi
  - wofi
  - wlogout

### darwin:
  - aerospace

## Fonts:
  - nerd-fonts
  - otf-apple-fonts

# Prerequisites
The configs reference these programs, and none of them are vendored in this
repo. Install them before running the stow script, otherwise the shell, tmux
and nvim will start with missing pieces.

1. **GNU Stow** — `pacman -S stow` / `apt install stow` / `brew install stow`

2. **zsh and oh-my-zsh**
   ```sh
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```

3. **oh-my-zsh custom plugins** — `.zshrc` loads these by name:
   ```sh
   git clone https://github.com/zsh-users/zsh-autosuggestions \
     ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
   git clone https://github.com/zsh-users/zsh-syntax-highlighting \
     ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
   git clone https://github.com/TamCore/autoupdate-oh-my-zsh-plugins \
     ~/.oh-my-zsh/custom/plugins/autoupdate
   ```

4. **nvm** — `https://github.com/nvm-sh/nvm#installing-and-updating`
   (the `nvm` oh-my-zsh plugin is loaded eagerly at shell startup)

5. **tmux + TPM** — plugins are installed outside this repo:
   ```sh
   git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
   ```
   Then start tmux and press `prefix + I` to install `tmux-resurrect`.

6. **Neovim 0.11+** — the config uses `vim.uv`, `vim.lsp.config` and the
   `nvim-treesitter` main branch. `lazy.nvim` bootstraps itself on first start;
   `mason` installs `stylua` and `tree-sitter-cli` automatically.

7. **Fonts** — Nerd Fonts are required for the prompt and status bar glyphs;
   `common/.config/kitty/kitty.conf` uses SF Mono (install `otf-apple-fonts`
   on Linux, available via AUR) and `linux-gnu/.config/i3/config` uses Fira Code.

8. **opencode** — config is optional; see [Not tracked](#not-tracked) for the
   files OpenCode manages itself.

# How to use them?
```sh
git clone https://github.com/xruifan/dotfiles.git ~/dotfiles
~/dotfiles/stow_dotfiles.sh
```
and reload your session.

The script stows into `$HOME` explicitly and uses `stow --restow`, so it is
safe to re-run after adding/removing files. It aborts with a non-zero exit
status if stowing fails (usually an existing real file where a symlink should
go — move that file aside and re-run).

# Per-machine overrides
`~/.zshenv.local` (all shells) and `~/.zshrc.local` (interactive only) are
sourced when present and never tracked by git — put personal PATH entries or
secrets there. See `~/.zshrc.local.example` (linked from the repo) for details.

# Not tracked
These files live outside the repo on purpose and must never be committed:

  - `~/.zshenv.local`, `~/.zshrc.local` — per-machine overrides.
  - `~/.config/opencode/cli.json` — TUI settings; OpenCode rewrites this file
    (it replaces a symlink with a regular file), so keep it per-machine.
  - `~/.config/opencode/service.json` — **contains a local service password**.

The only OpenCode file tracked here is `opencode.json`; the repo copy is
symlinked into `~/.config/opencode/`.
