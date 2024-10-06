#!/usr/bin/env bash

# Q: Write scripts /commands / syntax for moving files into three subdirectories directories: shelldir, cdir, jpgdir according to their extensions (from the current directory). The script should also create the directories if they do not exist.

echo -e "File Options:\n  a) .sh \n  b) .c \n  c) .jpg"
read -p "Enter your choice: " choice

case $choice in
a | A) var="sh" ;; # here, '|' is used for multiple options
b | B) var="c" ;;
c | C) var="jpg" ;;
*) echo "Invalid choice"; exit 1 ;;
esac

if [[ -f $(ls *.$var 2>/dev/null | head -n 1) ]]; then # '2>/dev/null' suppresses error message (or use: ls | egrep "\.$var$" | head -n 1)
    mkdir -p ${var}dir # OR "$var"dir
    mv *.$var ${var}dir
    echo "Moving .$var files to ${var}dir"
else
    echo "No .$var files found"
fi
