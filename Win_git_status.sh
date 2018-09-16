for dir in ../*; do (cd "$dir" && echo $PWD && git status); done
read -p "Press enter"
