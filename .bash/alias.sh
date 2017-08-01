#========================================================
# My Aliases
#========================================================

#--------------------------------------------------------
# Directory Shortcuts
#--------------------------------------------------------

alias back='cd $OLDPWD'
alias up='cd ..'
alias home='cd ~'
alias apps='cd ~/Applications'
alias desktop='cd ~/Desktop'
alias documents='cd ~/Documents'


#--------------------------------------------------------
# Apps
#--------------------------------------------------------

alias safari='open -a safari'
alias chrome='open -a google\ chrome.app'
alias firefox='open -a firefox'
alias opera='open -a opera'
alias preview='open -a preview'
alias xcode='open -a xcode'


#--------------------------------------------------------
# Command Shorthands
#--------------------------------------------------------

alias ll='ls -lahGF'
alias c='clear'
alias h='history'


#========================================================
# Rewrite existing commands to make the more secure
#========================================================

alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias rm!='sudo rm'
alias rmdir='rm -iR'
alias rmdir!='sudo rm -R'
alias df='df -h'
alias du='df -h'
alias mkdir='mkdir -v -p'


#========================================================
# Databases
#========================================================

alias pg='postgres -D /usr/local/var/postgres'
alias mg="mongod --port 27017 --dbpath /usr/local/var/mongodb"
alias redis="redis-server /usr/local/etc/redis.conf"


# ----------------------------------------
# Version Control
# ----------------------------------------

alias github='open https://github.com'
alias bitbucket='open https://bitbucket.org'


# ----------------------------------------
# Productivity
# ----------------------------------------

alias asana='open https://app.asana.com'
alias trello='open https://trello.com'
alias pivotaltracker='open https://www.pivotaltracker.com/dashboard'
alias googlesheets='open https://docs.google.com/spreadsheets'
alias googledocs='open https://docs.google.com/document'
alias googlemail='open https://mail.google.com/mail'
alias gmail='open https://mail.google.com/mail'
alias vcs='open https://www.vikingcodeschool.com'


# ----------------------------------------
# Mac
# ----------------------------------------

alias flushdns='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder; echo "DNS Flushed";'
alias rmds_store="find . -name '*.DS_Store' -type f -delete"


# ----------------------------------------
# SASS
# ----------------------------------------

alias sassw='sass --watch assets/stylesheets/scss:assets/stylesheets/css --no-cache'


# ----------------------------------------
# Text Editor
# ----------------------------------------

alias subl='subl -n'











