#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Start hyprland into tty1 after log in
if [[ "$(tty)" == "/dev/tty1" ]]; then
  Hyprland
fi

# Command aliases:
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias clear='printf \\033[2J\\033[3J\\033[H'
alias upsys='sudo pacman -Syyuu && yay -Syyuu && flatpak update'
alias clean='sudo rm -fr /tmp/*'
alias pacinstall='sudo pacman -Syyuu'
alias pacremove='sudo pacman -Rncs'
alias diskspace='sudo duf /'
alias disk='sudo ncdu /'
alias find='sudo find -name'

# Clear terminal after opening it:
clear

# Terminals:
# PS1='\033[32m┌──(\033[34m\u@\h\033[32m)─[\033[m\033[1m\w\033[m\033[32m]\n\033[32m└─\033[34m$\033[m ' # Kali type.
# PS1='' # Minimalist 1 type 1.
# PS1='> ' # Minimalist 2 type 1.
# PS1='\033[34m>\033[m '                                                                               # Minimalist 2 type 2.
PS1='\033[31m>\033[m ' # Minimalist 2 type 3.
# PS1='\033[32m>\033[m '                                                                               # Minimalist 2 type 4.
# PS1='$ '                                                                                             # Minimalist 3 type 1.
# PS1='\033[34m$\033[m '                                                                               # Minimalist 3 type 2.
# PS1='\033[31m$\033[m ' # Minimalist 3 type 3.
# PS1='\033[32m$\033[m '                                                                               # Minimalist 3 type 4.
# PS1='[\u@\h \W]$ ' # Arch Linux normal terminal config.
# PS1='\033[32m\u@\h\033[m:\033[34m\w\033[m$ ' # Ubuntu type.
