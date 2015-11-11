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

# --- 

function addpath() {
	if [ $1 ]; then
		export PATH="$PATH:$1"
	else
		echo "Please provide a path to add, in addpath()."
	fi
}