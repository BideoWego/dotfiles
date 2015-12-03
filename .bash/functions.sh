#========================================================
# Functions
#========================================================

# ---- 

function trash() {
	if [ $1 ]; then
		mv $1 ~/.Trash
	else
		echo 'Nothing moved to trash, please pass a file or directory to send to Trash'
	fi
} 
alias trash='trash'

# ----

function addpath() {
	if [ $1 ]; then
		export PATH="$PATH:$1"
	else
		echo "Please provide a path to add, in addpath()."
	fi
}
alias addpath='addpath'

# ----

function localhost {
  PORT='3000'
  if [ $1 ]; then
    PORT="$1"
  fi
  open "http://localhost:$PORT"
}
alias localhost='localhost'

# ----

function githome {
  if [ $1 ]; then
    if [ $1 == 'disable' ]; then
      mv ~/.git ~/.git_
      mv ~/.gitignore ~/.gitignore_
    elif [ $1 == 'enable' ]; then
      mv ~/.git_ ~/.git
      mv ~/.gitignore_ ~/.gitignore
    else
      echo "Unrecognized argument value $1, please specify 'enable' or 'disable'"
    fi
  else
    echo "Please specify 'enable' or 'disable'"
  fi
}
alias githome='githome'
