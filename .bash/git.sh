#========================================================
# Git Auto Completion
#========================================================

if [ -f ~/.git-completion.sh ]; then
  source ~/.git-completion.sh
fi

#========================================================
# Git PS1 Prompt
#========================================================



if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
  
  # Git prompt
  # https://github.com/magicmonty/bash-git-prompt
  # gitprompt configuration
  # Set config variables first
  GIT_PROMPT_ONLY_IN_REPO=1

  # GIT_PROMPT_FETCH_REMOTE_STATUS=0   # uncomment to avoid fetching remote status

  # GIT_PROMPT_START=...    # uncomment for custom prompt start sequence
  # GIT_PROMPT_END=...      # uncomment for custom prompt end sequence
  GIT_PROMPT_START="_LAST_COMMAND_INDICATOR_ $COLOR_OPEN \W $COLOR_CLOSE"
  GIT_PROMPT_END=" \$ "
else

  if [ -f ~/.git-prompt.sh ]; then
    source ~/.git-prompt.sh
    echo "Using default Git prompt at ~/.git-prompt.sh"
    echo
  fi

  echo "~/.bash-git-prompt/gitprompt.sh doesn't exist in ~ directory"
  echo "Consider using magicmonty/bash-git-prompt for your Git prompt"
  echo "Download to your home directory from here: "
  echo "  https://github.com/magicmonty/bash-git-prompt"
  echo
  echo "Configuration variables can be set in ~/.bash/git.sh"
  echo
fi

