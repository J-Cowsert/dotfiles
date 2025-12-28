#
# ~/.bashrc
#

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias dot='dotfiles'
alias inject-bm="/home/dex/.steam/steam/steamapps/compatdata/252950/pfx/drive_c/users/steamuser/AppData/Roaming/bakkesmod/runner.sh \
                 /home/dex/.steam/steam/steamapps/compatdata/252950/pfx/drive_c/users/steamuser/AppData/Roaming/bakkesmod/inject.exe"
alias ls='ls --color=auto'
alias grep='grep --color=auto'

cheatsheet() {
    local file="$HOME/.config/cheatsheet.md"
    if [[ ! -f "$file" ]]; then
        echo "Error: Cheatsheet not found: $file"
        return 1
    fi
    bat --style=header --language=markdown --color=always "$file" | less -R
}


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\[\e[91m\]\u\[\e[0m\]@\h \[\e[94m\]\w\[\e[0m\] \$ '

export PAGER='less -R'
export MANPAGER="less -R --use-color -Dd+r -Du+b"
# export MANPAGER="nvim +Man!"
export GROFF_NO_SGR=1

export HISTSIZE=10000
export HISTFILESIZE=20000
export HISTCONTROL=ignoreboth:erasedups
shopt -s histappend 
shopt -s cdspell
shopt -s dirspell

