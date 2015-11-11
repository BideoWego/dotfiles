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

alias preview='open -a preview'

alias phpstorm='open -a phpstorm'
alias xcode='open -a xcode'

alias safari='open -a safari'
alias firefox='open -a firefox'
alias chrome='open -a google\ chrome.app'
alias opera='open -a opera'

#--------------------------------------------------------
# Command Shorthands
#--------------------------------------------------------

alias ll='ls -lahG'
alias c='clear'
alias h='history'

#========================================================
# Rewrite existing commands to make the more secure
#========================================================

alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias df='df -h'
alias du='df -h'
alias mkdir='mkdir -p'

#========================================================
# Misc Aliases
#========================================================

alias pg='postgres -D /usr/local/var/postgres'
alias github='open https://github.com'
alias bitbucket='open https://bitbucket.org'



