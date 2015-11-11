#========================================================
# Environment Variables
#========================================================

MYNAME='Chris Scavello'
export MYNAME

# rbenv
if which rbenv > /dev/null; then
	eval "$(rbenv init -)"
fi

# pyenv
if which pyenv > /dev/null; then
	eval "$(pyenv init -)"
fi

# nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# composer
export PATH="$PATH:$HOME/.composer/vendor/bin"