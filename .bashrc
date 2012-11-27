# -------------------------------------------------------
# Anti-carpal-tunnel aliases and utilities for Bash
# -------------------------------------------------------

# Shortcut for directory navigation 
# hat tip: mjjoyce (https://github.com/mjjoyce)
#
# Instead of:   Type:
# cd ../        up
# cd ../../     up 2
# cd ../../../  up 3
# 
up() {
    local d=""
    limit=$1

    for ((i=1 ; i <= limit ; i++))
    do
	  d=$d/..
	  done

    d=$(echo $d | sed 's/^\///')
    if [ -z "$d" ]; then
	d=..
	fi

    cd $d
}

# Make a directory using the given name, then cd into it
mkcd() {
    if [ $# != 1 ]; then
	echo "Calling convention: mkcd <dir>"
    else
	mkdir -p $1 && cd $1
    fi
}

# ---------------------------------------------------------
# Aliases for common commands
# ---------------------------------------------------------
alias df="df -h"         # Human readable disk space remaining
alias size="du -shc"     # Summarize disk usage for given path

alias ll="ls -alh"       # Full, human readable list
alias la="ls -lap"       # Alphabetized by name
alias sl="ls"            # Common typo
alias l="ls"             # Common typo
alias s="ls"             # Common typo

