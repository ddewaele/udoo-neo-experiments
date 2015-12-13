#!/bin/bash

export DISPLAY=:0

COMPILE_CMD="/usr/bin/arduino --upload --verbose-build --verbose-upload -v "
OPTIONS_COMPILE=$(ls -dm sketches/**/*.ino | sed 's/,/ /g')
OPTIONS_COMPILE="$OPTIONS_COMPILE Quit"

echo "Compile and upload Arduino sketch"
echo "********************"
echo " " 
select opt in $OPTIONS_COMPILE; do
        if [ "$opt" = "Quit" ]; then
                echo done
                exit
        else
                $COMPILE_CMD $opt
        fi
done
