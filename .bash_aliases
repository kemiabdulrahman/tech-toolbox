# Create a new directory and navigate to it
alias mkcd='mkdir "$1" && cd "$1"'
alias go='cd /mnt/c/Users/AbdulRahman/Documents/'
alias hc='history -c && history -w'

alias mk='mkdir -p'
alias pvs='pipenv shell'
alias nv='nvim'
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



# --- EXPRESS.JS ALIASES ---

# Quickly scaffold a new Express app
alias express-new="npx express-generator"

# Scaffold Express app with EJS templating and npm install in one go
alias express-ejs='npx express-generator --view=ejs && npm install'

# Scaffold Express app with Handlebars
alias express-hbs='npx express-generator --view=hbs && npm install'

# Run the current Express app (assuming 'npm start' is defined)
alias express-start='npm start'

# Start with nodemon for auto-reload (if installed globally or locally)
alias express-dev='npx nodemon ./bin/www'

# Install Express and common middlewares in one go
alias express-setup='npm install express cors morgan dotenv body-parser'

# Run express app and open browser automatically
alias express-run='npm start & sleep 2 && xdg-open http://localhost:3000'

# Generate a basic express skeleton manually (without express-generator)
alias express-init="mkdir -p routes public views && npm init -y && npm install express && echo \"const express=require('express');const app=express();app.get('/',(req,res)=>res.send('Hello Express'));app.listen(3000,()=>console.log('Server running'));\" > index.js"



# ============================
# 🚀 EXPRESS / TYPESCRIPT / PRISMA TOOLKIT
# ============================

# --- GENERAL SETUP ---
# Create a new Node + TypeScript + Express project
alias ts-express-init='mkdir src && npm init -y && npm install express && npm install -D typescript ts-node @types/node @types/express nodemon && npx tsc --init && echo "import express from \"express\"; const app = express(); app.get(\"/\", (_,res)=>res.send(\"Hello, Express + TS!\")); app.listen(3000,()=>console.log(\"🚀 Server running on 3000\"));" > src/index.ts && echo "{\"scripts\":{\"dev\":\"npx ts-node src/index.ts\"}}" > package.json'

# Initialize a full backend stack with Express, TypeScript, Prisma, and PostgreSQL
alias fullstack-init='npm init -y && npm install express prisma @prisma/client && npm install -D typescript ts-node @types/node @types/express nodemon dotenv && npx tsc --init && npx prisma init && echo "DATABASE_URL=\"postgresql://user:password@localhost:5432/mydb?schema=public\"" > .env && echo "import express from \"express\"; const app=express(); app.use(express.json()); app.get(\"/\",(_,res)=>res.send(\"API OK\")); app.listen(3000,()=>console.log(\"Server running on port 3000\"));" > src/index.ts'

# --- DEVELOPMENT ---
# Run Express + TypeScript app
alias dev='npx ts-node src/index.ts'

# Run Express with auto-reload
alias dev-watch='npx nodemon --watch src --ext ts --exec "npx ts-node src/index.ts"'

# --- PRISMA COMMANDS ---
alias prisma-init='npx prisma init'
alias prisma-generate='npx prisma generate'
alias prisma-migrate='npx prisma migrate dev --name init'
alias prisma-studio='npx prisma studio'
alias prisma-reset='npx prisma migrate reset'
alias prisma-deploy='npx prisma migrate deploy'

# --- POSTGRESQL COMMANDS ---
# Common shortcuts for psql (replace username/dbname if you want)
alias pg-start='sudo service postgresql start'
alias pg-stop='sudo service postgresql stop'
alias pg-restart='sudo service postgresql restart'
alias pg-shell='sudo -u postgres psql'
alias pg-list='sudo -u postgres psql -c "\l"'
alias pg-create-db='sudo -u postgres createdb'
alias pg-drop-db='sudo -u postgres dropdb'

# --- UTILITIES ---
alias npm-reset='rm -rf node_modules package-lock.json && npm install'
alias npm-clear='npm cache clean --force'
alias stack-ver='node -v && npm -v && npx prisma -v && psql --version'
alias express-ts='npx ts-node src/index.ts'




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
