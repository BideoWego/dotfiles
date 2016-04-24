#========================================================
# History Configuration
#========================================================

export HISTSIZE=10000 						#500 is default
export HISTFILESIZE=10000000
export HISTTIMEFORMAT='%b %d %I:%M %p $ ' 	#using strftime format
export HISTCONTROL=ignoreboth 				#ignoredups:ignorespace
export HISTIGNORE="history:pwd:exit:df:ls:ls -la:ll"

