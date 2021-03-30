# Most important export.
export MAIN="/run/media/$USER/External Storage"

# Exports
export LESS="$LESS -R -Q" # Gets rid of that irritating beep
export DOTFILES="$MAIN/dotfiles"
export SHELL="/usr/bin/bash --rcfile '$DOTFILES/bash/.bashrc'"
export PS1="[ \[\e[35m\]\u\[\e[m\] @ \[\e[34m\]\W\[\e[m\] ]> "
export SUDO_PROMPT="[ enter password ]: "
export EDITOR="nvim"
export TERM="xterm-256color"
export SUBPARENS="\s*(\(|\[).*(\)|\])\s*"

# Aliases
alias vim="nvim -u '$DOTFILES/neovim/init.vim'"
alias clipboard="xclip -selection clipboard"
alias cwd='pwd | clipboard'
alias clearswp="rm -r ~/.local/share/nvim/swap"
alias usrpacks="comm -23 <(pacman -Qqett | sort) <(pacman -Qqg base -g base-devel | sort | uniq)"
alias unused="pacman -Qdt"
alias wifi-list="nmcli device wifi list"
alias wifi-connect="nmcli device wifi connect"
alias install="sudo pacman -S"
alias uninstall="sudo pacman -Rs"
alias remove="sudo pacman -Rs"
alias sizes="du -h -d 0 ./* | sort -n"
alias totalsizes="du -h --summarize"
alias set-wallpaper="feh --bg-fill"
alias dependants="pacman -Qi"
alias retag="find . -type f -printf '\"%p\"\n' | xargs mass-tag.py --title --album --artist"
alias storage="cd \"$MAIN\""
alias programming="cd \"$MAIN/programming\""
alias pavol="pactl set-sink-volume @DEFAULT_SINK@"
alias ..='cd ..'
alias :q=exit

# History related configuration
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s histappend

# Other
unset LANG
source /etc/profile.d/locale.sh

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Set dircolors
eval "$(dircolors ~/.config/dircolors.txt)"

# Vi emulation
set -o vi

# Autoload into the programming directory.
programming
