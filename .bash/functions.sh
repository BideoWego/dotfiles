#========================================================
# Functions
#========================================================

# ----------------------------------------
# trash
# ----------------------------------------

function trash() {
	if [ $1 ]; then
		mv $1 ~/.Trash
	else
		echo 'Nothing moved to trash, please pass a file or directory to send to Trash'
	fi
} 
alias trash='trash'

# ----------------------------------------
# addpath
# ----------------------------------------

function addpath() {
	if [ $1 ]; then
		export PATH="$PATH:$1"
	else
		echo "Please provide a path to add, in addpath()."
	fi
}
alias addpath='addpath'

# ----------------------------------------
# localhost
# ----------------------------------------

function localhost {
  PORT='3000'
  if [ $1 ]; then
    PORT="$1"
  fi
  open "http://localhost:$PORT"
}
alias localhost='localhost'

# ----------------------------------------
# rubyserve
# ----------------------------------------

function rubyserve {
  PORT='3000'
  if [ $1 ]; then
    PORT="$1"
  fi
  ruby -run -e httpd . -p $PORT
}
alias rubyserve='rubyserve'

# ----------------------------------------
# phpserve
# ----------------------------------------

function phpserve {
  PORT='3000'
  if [ $1 ]; then
    PORT="$1"
  fi
  php -S localhost:$PORT
}
alias phpserve='phpserve'

# ----------------------------------------
# pythonserve
# ----------------------------------------

function pythonserve {
  PORT='3000'
  if [ $1 ]; then
    PORT="$1"
  fi
  python -m SimpleHTTPServer $PORT
}
alias pythonserve='pythonserve'

# ----------------------------------------
# githome
# ----------------------------------------

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

# ----------------------------------------
# search
# ----------------------------------------

function search {
  if [ $1 ]; then
    if [ $2 ]; then
      egrep -n -r $1 $2
    else
      egrep -n -r $1 .
    fi
  else
    echo "Please provide a search string"
  fi
}
alias search="search"
alias s="search"

# ----------------------------------------
# process grep
# ----------------------------------------

function psag {
  if [ $1 ]; then
    ps aux | grep $1
  else
    echo "Please provide a search string"
  fi
}
alias psag="psag"

# ----------------------------------------
# redis
# ----------------------------------------

function redis {
  NAME=""

  if [ $1 ]; then
    NAME="$1"
  fi

  redis-server /usr/local/etc/redis/${NAME}.conf
}
alias redis="redis"









