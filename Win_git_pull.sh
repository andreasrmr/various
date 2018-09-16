for dir in ../*; do (cd "$dir" && echo $PWD && git pull); done
read -p "Press enter"
