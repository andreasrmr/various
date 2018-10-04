#!/bin/bash
#init
for dir in ../*; do (cd "$dir" && echo $PWD && git add . && git commit -m "." && git push ); done
read -p "Press enter"
