#!/bin/bash
#init
REPOSITORIES="/home/andreasr/repositories/*"
for dir in $REPOSITORIES; do (cd "$dir" && printf "\n #### $dir ####  \n$PWD \n"  && git status); done
read -p "Press enter"
