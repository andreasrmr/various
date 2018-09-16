#!/bin/bash
#init
for dir in ~/repositories/*; do (cd "$dir" && echo "----$dir---- " && git pull); done
read -p "Press enter"
