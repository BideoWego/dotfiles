#========================================================
# Git Auto Completion
#========================================================

source ~/.git-completion.sh

#========================================================
# Git PS1 Prompt
#========================================================
source ~/.git-prompt.sh

if [ -f ~/.bash-git-prompt/gitprompt.sh ]; then
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

  # as last entry source the gitprompt script
  # GIT_PROMPT_THEME=Custom # use custom .git-prompt-colors.sh
  # GIT_PROMPT_THEME=Solarized # use theme optimized for solarized color scheme
  source ~/.bash-git-prompt/gitprompt.sh
else
  echo "~/.bash-git-prompt/gitprompt.sh doesn't exist in ~ directory"
  echo "Using default Git prompt at ~/.git-prompt.sh"
  echo "Consider using magicmonty/bash-git-prompt for your Git prompt"
  echo "Download to your home directory from here: "
  echo "  https://github.com/magicmonty/bash-git-prompt"
  echo
  echo "Configuration variables can be set in ~/.bash/git.sh"
  echo
fi
