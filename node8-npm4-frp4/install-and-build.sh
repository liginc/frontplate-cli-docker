#!/bin/bash

# Color codes
# check if stdout is a terminal...
if test -t 1; then
    # see if it supports colors...
    ncolors=$(tput colors)
    if test -n "$ncolors" && test $ncolors -ge 8; then
        BOLD="$(tput bold)"
        # UNDERLINE="$(tput smul)"
        # STANDOUT="$(tput smso)"
        NORMAL="$(tput sgr0)"
        # BLACK="$(tput setaf 0)"
        RED="$(tput setaf 1)"
        # GREEN="$(tput setaf 2)"
        # YELLOW="$(tput setaf 3)"
        # BLUE="$(tput setaf 4)"
        # MAGENTA="$(tput setaf 5)"
        CYAN="$(tput setaf 6)"
        # WHITE="$(tput setaf 7)"
    fi
fi


for FILENAME in package.json frp.config.js; do
    if [ ! -f $FILENAME ]; then
        echo "\n${RED}${BOLD}ERROR: ${FILENAME} not found at $(pwd)${NORMAL}"
        echo "Have you mounted the project folder to the proper working directory in the container?\n"
        exit 1
    fi
done

echo "\n${CYAN}${BOLD}Installing dependencies from NPM...${NORMAL}\n"
npm install

echo "\n${CYAN}${BOLD}Building frontend resources in production mode...${NORMAL}\n"
frp build --production

echo "\n${CYAN}${BOLD}Build completed${NORMAL}\n"
exit 0
