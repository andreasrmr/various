#!/bin/bash
#init
REPOSITORIES="../../*"
for dir in $REPOSITORIES; do (cd "$dir" && echo $PWD && git pull); done
read -p "Press enter"
