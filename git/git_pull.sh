#!/bin/bash
#init
REPOSITORIES="/home/andreasr/repositories/*"
for dir in $REPOSITORIES; do (cd "$dir" && echo $PWD && git pull); done
read -p "Press enter"
