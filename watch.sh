#!/bin/bash
while inotifywait -e close_write $1; do 
    echo "Compiling..."
    ./compile.sh $1
    echo "Done!"
done