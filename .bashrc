#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=vim
export HISTCONTROL=ignoredups
export PAGER=less
export PS1="[1;33m\h:\u [\W][0m $ "
export TERM=xterm-256color

alias diff='colordiff -u'
alias less='less -S -#5 -q -R'
alias ls='ls --color=auto -F'
alias vi=vim
alias grep='grep --color'
alias egrep='egrep --color'

