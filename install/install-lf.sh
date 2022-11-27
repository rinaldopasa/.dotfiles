#!/usr/bin/env fish
# +----+
# | lf |
# +----+
mkdir -p "$HOME/.config/lf"
ln -sf "$HOME/.dotfiles/lf/lfrc" "$HOME/.config/lf/lfrc"

if type -a lfcd
	echo Yes, is exist
else
	echo No, dont exist
end
