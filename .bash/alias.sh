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
# Misc Aliases
#========================================================

alias pg='postgres -D /usr/local/var/postgres'
alias github='open https://github.com'
alias bitbucket='open https://bitbucket.org'
alias asana='open https://app.asana.com'
alias pivotaltracker='open https://www.pivotaltracker.com/dashboard'
alias flushdns='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder; echo "DNS Flushed";'
alias rmds_store="find . -name '*.DS_Store' -type f -delete"
alias sassw='sass --watch assets/stylesheets/scss:assets/stylesheets/css --no-cache'


