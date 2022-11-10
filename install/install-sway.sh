#!/usr/bin/env bash

# +-------------+
# | Sway Config |
# +-------------+
mkdir -p "$HOME/.config/sway"

ln -sf "$HOME/.dotfiles/sway/config" "$HOME/.config/sway/config"
ln -sf "$HOME/.dotfiles/sway/swaylock-config" "$HOME/.config/sway/swaylock-config"

