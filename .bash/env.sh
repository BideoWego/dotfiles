#========================================================
# Environment Variables
#========================================================

# editor
if which subl > /dev/null; then
  export EDITOR='subl -w'
fi

# rbenv
if which rbenv > /dev/null; then
	eval "$(rbenv init -)"
fi

# pyenv
if which pyenv > /dev/null; then
	eval "$(pyenv init -)"
fi

# nvm
if which brew > /dev/null; then
  export NVM_DIR=~/.nvm
  source $(brew --prefix nvm)/nvm.sh
fi

# composer
if [ -d ~/.composer ]; then
  export PATH="$PATH:$HOME/.composer/vendor/bin"
fi

# grunt
if which grunt > /dev/null; then
  eval "$(grunt --completion=bash)"
fi

# travis-ci
if [ -f ~/.travisrc ]; then
  source ~/.travisrc
fi

# $NODE_PATH
if which node > /dev/null; then
  export NODE_PATH='/usr/local/lib/node_modules'
fi
