#!/bin/bash
inotifywait -m -r --format '%f' -e close_write,moved_to . | while read line
do
case $line in *.less)
recess --compile main.less > main.css
echo $line
;; esac
done
