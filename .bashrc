# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ "$COLORTERM" == "xterm" ] || [ "$COLORTERM" == "xfce4-terminal" ]; then
export TERM=xterm-256color
fi

RESET_COLOR='\[\033[0m\]'

if [ `whoami` == "root" ] ; then
  USER_COLOR='\[\033[0;31m\]'    # b.red
  DIR_COLOR=$USER_COLOR
  SYMBOL='#'
else
  USER_COLOR='\[\033[1;32m\]'    # b.green
  DIR_COLOR='\[\033[1;34m\]'     # b.blue
  SYMBOL='$'
fi

PS1="$USER_COLOR\u@\h $DIR_COLOR\w$RESET_COLOR $SYMBOL "

eval "`dircolors -b ~/.dircolors`"

#export GREP_COLOR="1;31"

alias ls='ls --color=yes'
alias la='ls -a --color=yes'
alias ll='ls -l --color=yes'
alias lla='ls -la --color=yes'
