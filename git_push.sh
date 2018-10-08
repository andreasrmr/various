#!/bin/bash
#init
for dir in ../*; do (cd "$dir" && printf "$PWD" && git add . && git commit -m "." && git push ); done
read -p "Press enter"
