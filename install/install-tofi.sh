#!/usr/bin/env bash

# +------+
# | Tofi |
# +------+
mkdir -p "$HOME/.config/tofi"
ln -sf "$HOME/.dotfiles/tofi/config-drun" "$HOME/.config/tofi/config-drun"
ln -sf "$HOME/.dotfiles/tofi/config-clipman" "$HOME/.config/tofi/config-clipman"
