#!/usr/bin/env bash

# +------+
# | fish |
# +------+
ln -sf "$HOME/.dotfiles/fish/config.fish" "$HOME/.config/fish/config.fish"
ln -sf "$HOME/.dotfiles/fish/starship.fish" "$HOME/.config/fish/conf.d/starship.fish"

ln -sf "$HOME/.dotfiles/fish/functions/su.fish" "$HOME/.config/fish/functions/su.fish"

