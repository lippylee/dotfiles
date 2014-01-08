#
# ~/.bashrc
#
export PATH=~/bin:$PATH

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=vim
export HISTCONTROL=ignoredups
export PAGER=less
export QT_SELECT=4
export USE_CCACHE=1

alias diff='colordiff -u'
alias less='less -S -#5 -q -R'
alias ls='ls --color=auto -F'
alias vi=vim
alias grep='grep --color'
alias egrep='egrep --color'
alias villec2_addr2line='~/android/system/prebuilts/gcc/linux-x86/arm/arm-eabi-4.7/bin/arm-eabi-addr2line -e ~/android/system/out/target/product/villec2/obj/KERNEL_OBJ/vmlinux'

eval $(dircolors .dircolors)
source ~/.bashrc-prompt
