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
if which brew > /dev/null && [ -f $(brew --prefix nvm)/nvm.sh ]; then
  export NVM_DIR=~/.nvm
  source $(brew --prefix nvm)/nvm.sh
fi

# phpbrew
if which phpbrew > /dev/null; then
  source /Users/christopherscavello/.phpbrew/bashrc
  export PHPBREW_SET_PROMPT=1
  export PHPBREW_RC_ENABLE=1
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
  export NODE_PATH=$(npm -g root)
fi

# exercism
if [ -f ~/.config/exercism/exercism_completion.bash ]; then
  . ~/.config/exercism/exercism_completion.bash
fi

# docker
if which docker > /dev/null && [ -f ~/.my-docker-config.sh ]; then
  . ~/.my-docker-config.sh
fi


