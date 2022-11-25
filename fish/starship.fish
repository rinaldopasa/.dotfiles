#!/usr/bin/env fish

# find out which distribution we are running on.
set -l LFILE (grep -h ^ID /etc/*-release | sed 's/ID=//')

# make sure used nerd-fonts
switch $LFILE
    case '*kali*'
        set -Ux DISTRO_ICON "ﴣ"
    case '*arch*'
        set -Ux DISTRO_ICON ""
    case '*debian*'
        set -Ux DISTRO_ICON ""
    case '*raspbian*'
        DISTRO_ICONj""
    case '*ubuntu*'
        set -Ux DISTRO_ICON ""
    case '*fedora*'
        set -Ux DISTRO_ICON ""
    case '*linuxmint*'
        set -Ux DISTRO_ICON ""
    case '*nixos*'
        set -Ux DISTRO_ICON ""
    case '*manjaro*'
        set -Ux DISTRO_ICON ""
    case '*'
        set -Ux DISTRO_ICON ""
end
