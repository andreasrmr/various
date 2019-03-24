#!/bin/bash
#init
REPOSITORIES="../../*"
for dir in $REPOSITORIES; do (cd "$dir" && printf "\n #### $dir ####  \n$PWD \n"  && git status); done
read -p "Press enter"
