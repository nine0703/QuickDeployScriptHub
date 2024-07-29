#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls --color=auto -al'
alias grep='grep --color=auto'

PS1="\[\033[0;36m\]\342\224\214 \[\033[0;32m\]\u@\[\033[1;34m\]\h\[\033[1;31m\]:\[\e[34;1m\]\w \[\033[0;32m\]\#\[\033[0;32m\]# \n\[\033[0;36m\]\342\224\224\342\224\200\[\033[0m\]\[\e[0m\] "