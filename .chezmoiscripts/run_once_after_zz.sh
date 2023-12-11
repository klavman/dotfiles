#!/usr/bin/env bash

echo "config fzf..."
$HOME/.fzf/install

echo "Change shell, permissions for exec: chsh -s \$(which zsh)"
chsh -s $(which zsh)
