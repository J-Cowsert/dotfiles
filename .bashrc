#
# ~/.bashrc
#


alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export PAGER=less
export LESS='-R'

# Have less display colours
export LESS_TERMCAP_mb=$'\e[1;31m'     # mb = begin blink → here styled as bold red
export LESS_TERMCAP_md=$'\e[1;33m'     # md = begin bold → here styled as yellow
export LESS_TERMCAP_so=$'\e[01;44;37m' # so = begin standout (reverse video) → white on blue
export LESS_TERMCAP_us=$'\e[01;37m'    # us = begin underline → bright white
export LESS_TERMCAP_me=$'\e[0m'        # me = reset bold/blink
export LESS_TERMCAP_se=$'\e[0m'        # se = reset standout
export LESS_TERMCAP_ue=$'\e[0m'        # ue = reset underline
export GROFF_NO_SGR=1                  # force man to use overstrikes instead of SGR, fixes color in some terminals

