#--------------------------------------------------------
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