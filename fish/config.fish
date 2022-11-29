# Disable greeting
set -U fish_greeting
set fish_color_command magenta

# EDITOR
set -gx EDITOR "vim"

# Volta | N: Already set in .bash_profile
#set -gx VOLTA_HOME "$HOME/.volta"
#set -gx CARGO_HOME "$HOME/.cargo"
#set -gx PATH "$VOLTA_HOME/bin" $PATH
#set -gx PATH "$CARGO_HOME/bin" $PATH

# zoxide ? A smarter cd command
zoxide init fish | source

# starship ? Cross-Shell Prompt
starship init fish | source

if status is-interactive
    # Autostart sway
    if test -z "$DISPLAY" -a (tty) = "/dev/tty1"
        exec sway
    end
end
