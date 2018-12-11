#!/bin/bash
#init
for dir in ../*; do (cd "$dir" && printf "\n #### $dir ####  \n$PWD \n"  && git status); done
read -p "Press enter"
