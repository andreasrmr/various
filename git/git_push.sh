#!/bin/bash
#init
for dir in ../../*; do (cd "$dir" && printf "\n#### $dir ####\n$PWD\n" && git add . && git commit -m "." && git push ); done
read -p "Press enter"
