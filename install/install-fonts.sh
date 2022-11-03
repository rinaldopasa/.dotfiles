#!/usr/bin/env bash

# +------------+
# | Nerd Fonts |
# +------------+

USERFONTDIR="$HOME/.local/share/fonts"
NERDFONTDIR="$HOME/.dotfiles/fonts/nerd-fonts"

nerdfonts=(
"FantasqueSansMono"
"FiraCode"
"IBMPlexMono"
)

mkdir -p $USERFONTDIR
mkdir -p $NERDFONTDIR

if [[ $(uname) == "Linux" ]]; then 
	
	cd /tmp
	for font in ${nerdfonts[@]}
	do
		# download fonts and store in ~/.dotfiles/fonts/nerd-fonts/
		if [[ ! -d $NERDFONTDIR/$font ]]; then
			curl -fLO https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/$font.zip
			unzip $font.zip -d $NERDFONTDIR/$font
		else
			echo "$font has been downloaded!"
		fi

		# copy fonts to ~/.local/share/fonts by excluding some not necessary font like *Windows Compatibility*
		if [[ -d $USERFONTDIR/${font}NF ]]; then
			echo "$font has been installed!"
			continue
		else
			cd $NERDFONTDIR
			if [[ $(ls $font/*.otf) ]] && [[ $(ls $NERDFONTDIR/$font/*.ttf) ]]; then 
				rsync -av --progress $font/*.otf $USERFONTDIR/${font}NF/ --exclude="*Windows*"
			elif [[ $(ls $font/*.otf) ]]; then
				rsync -av --progress $font/*.otf $USERFONTDIR/${font}NF/ --exclude="*Windows*"
			elif [[ $(ls $font/*.ttf) ]]; then
				rsync -av --progress $font/*.ttf $USERFONTDIR/${font}NF/ --exclude="*Windows*"
			else
				echo "YOOO... THIS FONT DOESN'T HAVE .otf or .ttf FILE EXTENSION"
			fi
		fi
	done
fi

