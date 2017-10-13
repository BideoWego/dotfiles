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

  if [ $1 ] && [ -f /usr/local/etc/redis/$1.conf ]; then
    NAME="$1"
  elif [ $1 ]; then
    echo "File does not exist: $1"
  else
    NAME="default"
  fi

  if [ ! -z "$NAME" ]; then
    CONFIG=/usr/local/etc/redis/${NAME}.conf
    echo "Starting up redis with config file: $CONFIG"
    echo
    redis-server "$CONFIG"
  fi
}
alias redis="redis"


# ----------------------------------------
# redisconfcreate
# ----------------------------------------

function redisconfcreate {
  if [ $1 ] && [ $2 ]; then
    FILE=/usr/local/etc/redis/${1}.conf
    if [ ! -f  "$FILE" ]; then
      NAME="$1"
      PORT="$2"
      sed "s/^dbfilename dump.rdb$/dbfilename $NAME.rdb/" /usr/local/etc/redis.conf > "$FILE"
      sed -i '' "s/^port 6379$/port $PORT/" "$FILE"

      echo "Created new redis conf file: $FILE"
      echo "  with port: $PORT"
      echo "  and dbfilename: $NAME.rdb"
    else
      echo "File already exists: $FILE"
    fi
  else
    echo "Please provide the following arguments:"
    echo "  a name for the new config file"
    echo "  a port number that is above 6379"
  fi
}
alias redisconfcreate="redisconfcreate"


# ----------------------------------------
# redisconflist
# ----------------------------------------

function redisconflist {
  for f in /usr/local/etc/redis/*
  do
    echo "$f"
    cat $f | egrep ^dbfilename
    cat $f | egrep ^port
    echo
  done
}
alias redisconflist="redisconflist"


# ----------------------------------------
# rediscli
# ----------------------------------------

function rediscli {
  FILE="default"
  CONFIG=/usr/local/etc/redis/default.conf

  if [ $1 ]; then
    FILE=$1
  fi

  CONFIG=/usr/local/etc/redis/$FILE.conf

  if [ -f "$CONFIG" ]; then
    TEXT=$(cat $CONFIG)
    REGEX="port[[:space:]]([0-9]{4})"

    if [[ $TEXT =~ $REGEX ]]; then
      PORT=${BASH_REMATCH[1]}
      echo "Starting Redis CLI"
      echo "  with config: $CONFIG"
      echo "  on port: $PORT"
      echo
      redis-cli -p "$PORT"
    else
      echo "Unable to resolve port in config file $1"
    fi
  else
    echo "Config file does not exist: $CONFIG"
  fi
}











