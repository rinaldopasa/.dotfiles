vim9script
# Basic Python-friendly Vim 9 configuration.

syntax on			    # Enable syntax highlighting.
filetype plugin indent on	# Enable file type based indentation.

set number              # Print number of line
set autoindent			# Respect indentation when starting a new line.
set expandtab			# Expand tabs to spaces. Essential in Python.
set tabstop=4			# Number of spaces tab is counted for.
set shiftwidth=4		# Number of spaces to use for autoindent.

set backspace=2 		# Fix backspace behavior on most terminals.
set noswapfile          # Disable swap file

# Set up persistent undo across all files.
set undofile
if !isdirectory("$HOME/.vim/undodir")
    call mkdir($HOME .. "/.vim/undodir", "p")
endif
set undodir=~/.vim/undodir
