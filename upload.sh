#!/bin/bash

CMD=/usr/bin/udooneo-m4uploader
OPTIONS=$(ls -dm sketches/**/*.bin | sed 's/,/ /g')
OPTIONS="$OPTIONS Quit"

echo "Upload Arduino sketch"
echo "********************"
echo " " 
select opt in $OPTIONS; do
	if [ "$opt" = "Quit" ]; then
        	echo done
                exit
        else
		$CMD $opt                
        fi
done
