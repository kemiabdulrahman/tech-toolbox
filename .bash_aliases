# Create a new directory and navigate to it
alias mkcd='mkdir "$1" && cd "$1"'
alias hc='history -c && history -w'

# Shortcut for commonly used Git commands

alias g='git'

# basic
alias ga='git add'
alias gs='git status'
alias gco='git checkout'
alias gci='git commit'
alias gp='git push'
alias gpl='git pull'
alias gl='git log'
alias glog='git log --oneline --graph --decorate'
alias gm='git merge'

# stash 
alias gst='git stash'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gstc='git stash clear'
alias gsts='git stash save'
alias gsta='git stash apply'


# cherry-pick
alias gcp='git cherry-pick'
alias gcpc='git cherry-pick --continue'
alias gcps='git cherry-pick --skip'
alias gcpa='git cherry-pick --abort'

# branch
alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -d'
alias gbD='git branch -D'
alias gbm='git branch --merged'
alias gbnm='git branch --no-merged'


# fetch 
alias gf='git fetch'
alias gfa='git fetch --all'
alias gfp='git fetch --prune'
alias gft='git fetch --tags'

# reset
alias grs='git reset'
alias grss='git reset --soft'
alias grsh='git reset --hard'
alias grsm='git reset --mixed'
alias grsu='git reset --'


# revert
alias grv='git revert'
alias grvn='git revert --no-edit'
alias grvc='git revert --continue'
alias grva='git revert --abort'

# pull
alias gpl='git pull'
alias gpl='git pull rebase'
alias gpl='git pull --all'

# push
alias gp='git push'
alias gpu='git push -u origin'
alias gpf='git push --force'
alias gpt='git push --tags'



# Add your own aliases here...
alias lv='live-server'
alias p3='python3'


# Search for a file in the current directory and its subdirectories
alias ffind='find . -type f -name "$1"'

# Search for a specific text pattern in files
alias grep='grep --color=auto'

# Display the contents of a file with line numbers
alias catn='cat -n'

# Open a file or directory in the default application
alias open='xdg-open'

# Extract common archive formats
alias extract='tar -xf'

# Show the disk usage of a directory
alias duh='du -sh'

# Count the number of lines in a file
alias linecount='wc -l'

# List all running processes
alias psa='ps -ef'

# Kill a process by name or process ID
alias killp='kill $(pgrep "$1")'

# Display the system uptime
alias uptime='uptime -p'

# List all available network interfaces
alias iflist='ip link show'

# Ping a host with a specified number of packets
alias pingn='ping -c "$1"'

# View the contents of a file in a paginated manner
alias paginated='less'

# Search for a keyword within man pages
alias mans='man -k'

# Show a calendar for the current month
alias calendar='cal'

# Convert markdown file to HTML
alias md2html='pandoc -s -f markdown -t html -o'

# Compress a file or directory into a ZIP archive
alias zip='zip -r'

# Extract a ZIP archive
alias unzip='unzip -d'

# Create a symbolic link
alias link='ln -s'

# Remove a symbolic link
alias unlink='rm -i'

# Perform a recursive search and replace in files
alias replace='sed -i "s/$1/$2/g"'

# Display a colored directory listing
alias lsl='ls -alF --color=auto'

# Display the contents of a file with less
alias view='less'

# Run a Python script with the virtual environment activated
alias pyvenv='source venv/bin/activate && python'
