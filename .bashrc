# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth









# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"



orange=$(tput setaf 166);
yellow=$(tput setaf 228);
green=$(tput setaf 71);
white=$(tput setaf 15);
bold=$(tput bold);
reset=$(tput setaf sgr0);


PS1="\[${bold}\]\n";   
PS1+="\[${orange}\]\u";  # username
PS1+="\[${white}\] at ";
PS1+="\[${yellow}\]\h";  # host
PS1+="\[${white}\] in ";
PS1+="\[${green}\]\W";	# working directory
PS1+="\n";
PS1+="\[${white}\]\$ \[${reset}\]";

export PS1;













# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'




# Directory navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ll='ls -alF'
alias tree='tree -C'

# File operations
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias mkdir='mkdir -p'

# System operations
alias reboot='sudo reboot'
alias shutdown='sudo shutdown now'
alias update='sudo apt update'
alias upgrade='sudo apt upgrade'

# Git
alias g='git'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline --decorate'

# Network
alias ipinfo='curl ipinfo.io'
alias speedtest='speedtest-cli'

# Shortcuts
alias c='clear'
alias e='exit'
alias h='history'
alias p='python'
alias pp='python -m pprint'

# Custom aliases
alias myalias='command'

# Add your own aliases here...



# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
