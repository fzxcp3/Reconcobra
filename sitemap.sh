#!/bin/bash
apt-get install xdg-utils
TARGET="$1"
BROWSER="xdg-open"
VER="1.9"
OKBLUE='\033[94m'
OKRED='\033[91m'
OKGREEN='\033[92m'
OKORANGE='\033[93m'
DELAY=1
RESET='\e[0m'

if [ -z $TARGET ]; then
	echo -e "$OKORANGE + -- --=[Usage: sitemap.sh <domain>$RESET"
	exit
fi

# LOAD WEBSITE IN A WEB BROSER
$BROWSER "https://www.google.com/search?q=site:$TARGET+ext:xml+|+ext:conf+|+ext:cnf+|+ext:reg+|+ext:inf+|+ext:rdp+|+ext:cfg+|+ext:txt+|+ext:ora+|+ext:ini" 2> /dev/null

