# Disable greeting
set -U fish_greeting

# zoxide - A smarter cd command
zoxide init fish | source

if status is-interactive
    # Autostart sway
    if test -z "$DISPLAY" -a (tty) = "/dev/tty1"
        exec sway
    end
end
