# Required programs for this to be functional:
# neovim
# xclip
# kitty
# ntfs-3g
# nmcli
# i3wm (or gaps)

# Auto-start tmux and connect to the running server if
# one does not exist.
# if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
#   exec tmux
# fi

# Aliases
alias vim="nvim -u '/run/media/spaceraiders/External Storage/dotfiles/neovim/init.vim'"
alias nrc="vim ~/.config/nvim/init.vim"
alias brc="vim ~/.bashrc"
alias i3rc="vim ~/.config/i3/config"
alias krc="vim ~/.config/kitty/kitty.conf"
alias qrc="vim ~/.config/qtile/config.py"
alias clipboard="xclip -selection clipboard"
alias cwd='pwd | clipboard'
alias clearswp="rm -r ~/.local/share/nvim/swap"
alias smount="sudo mount"
alias usrpacks="comm -23 <(pacman -Qqett | sort) <(pacman -Qqg base -g base-devel | sort | uniq)"
alias unused="pacman -Qdt"
alias i3logout="i3-msg exit"
alias view-inputs="pacmd list-sources | grep -e 'index:' -e device.string -e 'name:' -e 'bluez.alias'"
alias wifi-list="nmcli device wifi list"
alias wifi-connect="nmcli device wifi connect"
alias install="sudo pacman -S"
alias uninstall="sudo pacman -Rs"
alias remove="sudo pacman -Rs"
alias sizes="du -h -d 0 ./* | sort -n"
alias set-wallpaper="feh --bg-fill"
alias python="python -B"
alias dependants="pacman -Qi"
alias retag="find . -type f -printf '\"%p\"\n' | xargs mass-tag.py --title --album --artist"
alias storage="cd \"/run/media/spaceraiders/External Storage\""
alias programming="cd \"/run/media/spaceraiders/External Storage/programming\""
alias ..='cd ..'
alias :q=exit

# Exports
export LESS="$LESS -R -Q" # gets rid of that irritating beep
export DOTFILES="/run/media/spaceraiders/External Storage/dotfiles"
export SHELL="/usr/bin/bash --rcfile ~/.config/bash/.bashrc"
export PS1="[ \[\e[35m\]\u\[\e[m\] @ \[\e[34m\]\W\[\e[m\] ]> "
export SUDO_PROMPT="[ enter password ]: "
export EDITOR="nvim"
export editor="nvim"
export TERM="xterm-256color"
export SUBPARENS="\s*(\(|\[).*(\)|\])\s*"
export HDD="/run/media/spaceraiders/External Storage/"

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

programming
