This repository contains dotfiles managed by [chezmoi](https://www.chezmoi.io/). Please note this is my own personal dotfiles.

## Requirements

- [chezmoi](https://www.chezmoi.io/install/) 
- debian-based system


## Install 

```bash
  chezmoi init https://github.com/klavman/dotfiles.git --source ~/dotfiles
  chezmoi apply
```

- If --source is not included, the default directory it uses (/home/[user]/.local/share/chezmoi)

### What Installs

- Zsh + Oh my Zsh + Powerlevel10k with auto-suggestions and syntax-higlighting
- fzf
- uv
- nvm
- nerdfonts

### TODO

List of pending improvements for the future:

- Install go, chezmoi, dot_ssh, code, nvim, firefox, ufw.
- Add branch ArchLinux with i3, kitty, rofi, ranger.









