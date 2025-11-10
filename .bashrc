#
# ~/.bashrc
#

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias dot='dotfiles'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'


PS1='[\u@\h \W]\$ '

export PAGER='less -R'
export MANPAGER='less -R'
export HISTCONTROL=ignoreboth:erasedups
shopt -s histappend 
shopt -s cdspell


cheatsheet() {
    local file="$HOME/.config/cheatsheet.md"
    if [[ ! -f "$file" ]]; then
        echo "Error: Cheatsheet not found: $file"
        return 1
    fi
    bat --style=header --language=markdown --color=always "$file" | less -R
}

