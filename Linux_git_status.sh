#!/bin/bash
#init
cd ..
for dir in ~/repositories/*; do (cd "$dir" && echo "----$dir---- " && git status); done
read -p "Press enter"
